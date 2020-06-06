package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Team;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeamDAOImpl implements TeamDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Team> getTeams() {

        Session session = sessionFactory.getCurrentSession();
        Query<Team> teamQuery = session.createQuery("from Team ", Team.class);

        return teamQuery.getResultList();
    }

    @Override
    public Team getTeam(int id) {

        Session session = sessionFactory.getCurrentSession();

        return session.get(Team.class, id);
    }

    @Override
    public void deleteTeam(Team team) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(team);
    }

    @Override
    public void saveTeam(Team team) {

        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(team);
    }
}
