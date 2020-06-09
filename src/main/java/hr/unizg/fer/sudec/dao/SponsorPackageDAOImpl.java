package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.SponsorPackage;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SponsorPackageDAOImpl implements SponsorPackageDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public SponsorPackage getPackage(int packageId) {

        Session session = sessionFactory.getCurrentSession();
        return session.get(SponsorPackage.class, packageId);
    }

    @Override
    public List<SponsorPackage> getPackages() {

        Session session = sessionFactory.getCurrentSession();
        Query<SponsorPackage> query = session.createQuery("from SponsorPackage order by creationDate desc ", SponsorPackage.class);

        return query.getResultList();
    }

    @Override
    public void save(SponsorPackage sponsorPackage) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(sponsorPackage);
    }

    @Override
    public void delete(SponsorPackage sponsorPackage) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(sponsorPackage);
    }
}
