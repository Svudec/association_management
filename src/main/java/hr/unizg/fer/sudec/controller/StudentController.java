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
        model.addAttribute("studentButton", "");
        model.addAttribute("memberButton", "display: none");

        return "list-students";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        Student student = new Student();
        model.addAttribute("student", student);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");

        return "student-form";
    }

    @PostMapping("/save")
    public String saveStudent(@ModelAttribute("student") Student student, Model model){

        studentService.saveStudent(student);
        model.addAttribute("student", student);
        model.addAttribute("disabled_edit", true);
        model.addAttribute("saveButton", "hidden");
        model.addAttribute("editButton", "visible");

        return "student-form";
    }

    @GetMapping("/details")
    public String showStudentDetails(@RequestParam("studentId") int id, Model model){

        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        model.addAttribute("disabled_edit", true);
        model.addAttribute("saveButton", "hidden");
        model.addAttribute("editButton", "visible");

        return "student-form";
    }

    @GetMapping("/edit")
    public String editStudentDetails(@RequestParam("id") int id, Model model){

        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");

        return "student-form";
    }
}
