package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.InternationalEvent;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class InternationalEventDAOImpl implements InternationalEventDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<InternationalEvent> getEvents() {

        Session session = sessionFactory.getCurrentSession();
        Query<InternationalEvent> query = session.createQuery("from InternationalEvent order by startDate desc ", InternationalEvent.class);

        return query.getResultList();
    }

    @Override
    public InternationalEvent getEvent(int id) {
        Session session = sessionFactory.getCurrentSession();

        return session.get(InternationalEvent.class,id);
    }

    @Override
    public void saveEvent(InternationalEvent event) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(event);
    }

    @Override
    public void deleteInternationalEvent(InternationalEvent event) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(event);
    }
}
