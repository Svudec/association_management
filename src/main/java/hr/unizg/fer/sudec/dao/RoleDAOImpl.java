package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Role;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoleDAOImpl implements RoleDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Role getByName(String name) {

        Session session = sessionFactory.getCurrentSession();
        Query<Role> query = session.createQuery("from Role where name =:uName", Role.class);
        query.setParameter("uName", name.trim());

        Role role = null;
        try {
            role = query.getSingleResult();
        } catch (Exception e) {
            role = null;
        }

        return role;
    }

    @Override
    public List<Role> getRoles() {

        Session session = sessionFactory.getCurrentSession();
        Query<Role> query = session.createQuery("from Role", Role.class);

        return query.getResultList();
    }

    @Override
    public void save(Role role) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(role);
    }
}
