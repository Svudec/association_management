package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.StudentDAO;
import hr.unizg.fer.sudec.entity.Student;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDAO studentDAO;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    @Transactional
    public List<Student> getStudents() {
        return studentDAO.getStudents();
    }

    @Override
    @Transactional
    public void saveStudent(Student student) {

        studentDAO.saveStudent(student);
    }

    @Override
    @Transactional
    public void editStudent(Student student) {

        Student original = getStudent(student.getId());
        modelMapper.map(student, original);

        studentDAO.saveStudent(original);
    }

    @Override
    @Transactional
    public Student getStudent(int id) {
        return studentDAO.getStudent(id);
    }

    @Override
    @Transactional
    public Map<Integer, String> getStudentsIdFullNameMap() {

        Map<Integer, String> output = new LinkedHashMap<>();
        List<Student> students = getStudents();

        for (Student student : students) {
            output.put(student.getId(), student.getFullName());
        }

        return output;
    }
}
