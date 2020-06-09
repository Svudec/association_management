package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Sponsorship;
import hr.unizg.fer.sudec.entity.SponsorshipId;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SponsorshipDAOImpl implements SponsorshipDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Sponsorship getSponsorship(SponsorshipId id) {

        Session session = sessionFactory.getCurrentSession();
        return session.get(Sponsorship.class, id);
    }

    @Override
    public void createSponsorship(Sponsorship sponsorship) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(sponsorship);
    }
}
