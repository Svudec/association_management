package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dao.StudentDAO;
import hr.unizg.fer.sudec.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentDAO studentDAO;

    @RequestMapping("/list")
    public String listStudents(Model model){

        List<Student> students = studentDAO.getStudents();
        model.addAttribute("students", students);

        return "list-students";
    }
}
