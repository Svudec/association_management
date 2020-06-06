package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Gathering;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GatheringDAOImpl implements GatheringDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Gathering> getGatherings() {

        Session session = sessionFactory.getCurrentSession();
        Query<Gathering> query = session.createQuery("from Gathering order by startTime desc ", Gathering.class);

        return query.getResultList();
    }

    @Override
    public Gathering getGathering(int id) {

        Session session = sessionFactory.getCurrentSession();

        return session.get(Gathering.class, id);
    }

    @Override
    public void deleteGathering(Gathering gathering) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(gathering);
    }

    @Override
    public void save(Gathering gathering) {

        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(gathering);
    }
}
