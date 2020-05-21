package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Project;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProjectDAOImpl implements ProjectDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Project getProject(int id) {

        Session session = sessionFactory.getCurrentSession();

        return session.get(Project.class, id);
    }

    @Override
    public List<Project> getProjects() {

        Session session = sessionFactory.getCurrentSession();
        Query<Project> projectQuery = session.createQuery("from Project order by startDate desc ", Project.class);

        return projectQuery.getResultList();
    }

    @Override
    public void save(Project project) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(project);
    }
}
