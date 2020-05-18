package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.StudentDAO;
import hr.unizg.fer.sudec.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDAO studentDAO;

    @Override
    @Transactional
    public List<Student> getStudents() {
        return studentDAO.getStudents();
    }

    @Override
    @Transactional
    public void saveStudent(Student student) {

        student.setLastUpdated(new Date());

        studentDAO.saveStudent(student);
    }
}
