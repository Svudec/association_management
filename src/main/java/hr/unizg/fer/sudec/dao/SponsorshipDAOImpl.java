package hr.unizg.fer.sudec.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SponsorshipDAOImpl implements SponsorshipDAO{

    @Autowired
    SessionFactory sessionFactory;
}
