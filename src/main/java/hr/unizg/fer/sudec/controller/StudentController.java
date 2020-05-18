package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public String listStudents(Model model){

        List<Student> students = studentService.getStudents();
        model.addAttribute("students", students);

        return "list-students";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        Student student = new Student();
        model.addAttribute("student", student);

        return "student-form";
    }

    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute("student") Student student){

        studentService.saveStudent(student);

        return "redirect:/student/list";
    }

    @GetMapping("/details")
    public String showStudentDetails(@RequestParam("studentId") int id, Model model){

        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);

        return "student-form";
    }
}
