package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Country;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CountryDAOImpl implements CountryDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Country> getCountries() {

        Session session = sessionFactory.getCurrentSession();
        Query<Country> query = session.createQuery("from Country order by name", Country.class);

        return query.getResultList();
    }

    @Override
    public Country getCountry(int countryId) {

        Session session = sessionFactory.getCurrentSession();
        return session.get(Country.class, countryId);
    }
}
