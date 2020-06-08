package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Partner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PartnerDAOImpl implements PartnerDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Partner> getPartners() {

        Session session = sessionFactory.getCurrentSession();
        Query<Partner> query = session.createQuery("from Partner order by name", Partner.class);

        return query.getResultList();
    }

    @Override
    public Partner getPartner(int partnerId) {

        Session session = sessionFactory.getCurrentSession();

        return session.get(Partner.class, partnerId);
    }

    @Override
    public void save(Partner partner) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(partner);
    }

    @Override
    public void delete(Partner partner) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(partner);
    }
}
