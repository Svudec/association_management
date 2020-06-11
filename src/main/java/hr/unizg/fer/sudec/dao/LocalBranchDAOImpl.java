package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.LocalBranch;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LocalBranchDAOImpl implements LocalBranchDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<LocalBranch> getBranches() {

        Session session = sessionFactory.getCurrentSession();
        Query<LocalBranch> query = session.createQuery("from LocalBranch order by country.name", LocalBranch.class);

        return query.getResultList();
    }

    @Override
    public LocalBranch getBranch(int id) {

        Session session = sessionFactory.getCurrentSession();

        return session.get(LocalBranch.class, id);
    }

    @Override
    public void createBranch(LocalBranch branch) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(branch);
    }

    @Override
    public void deleteBranch(LocalBranch branch) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(branch);
    }
}
