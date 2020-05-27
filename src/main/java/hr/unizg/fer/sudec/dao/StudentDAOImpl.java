package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudentDAOImpl implements StudentDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Student> getStudents() {

        Session session = sessionFactory.getCurrentSession();
        Query<Student> studentQuery = session.createQuery("from Student order by surname", Student.class);

        return studentQuery.getResultList();
    }

    @Override
    public void saveStudent(Student student) {

        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(student);
    }

    @Override
    public Student getStudent(int id) {

        Session session = sessionFactory.getCurrentSession();

        return session.get(Student.class, id);
    }

    @Override
    public Student findByUsername(String username) {

        Session session = sessionFactory.getCurrentSession();
        Query<Student> studentQuery = session.createQuery("from Student where username =:uName", Student.class);
        studentQuery.setParameter("uName", username.trim());

        Student student = null;
        try {
            student = studentQuery.getSingleResult();
        } catch (Exception e) {
            student = null;
        }

        return student;
    }
}
