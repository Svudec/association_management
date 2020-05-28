package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.service.RoleService;
import hr.unizg.fer.sudec.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private RoleService roleService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/list")
    public String listStudents(Model model){

        List<Student> students = studentService.getStudents();
        model.addAttribute("studentService", studentService);
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
    public String saveStudent(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult, Model model){

        if (bindingResult.hasErrors()){

            model.addAttribute("disabled_edit", false);
            model.addAttribute("saveButton", "visible");
            model.addAttribute("editButton", "hidden");

            return "student-form";
        }

        if(studentService.getStudent(student.getId()) == null)
            studentService.createStudent(student);
        else
            studentService.editStudent(student);

        return "redirect:/student/list";
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

    @GetMapping("/manageRoles")
    public String manageStudentRolesMenu(Model model){

        model.addAttribute("board_members", roleService.getRoleHolders("ROLE_BOARD_MEMBER"));
        model.addAttribute("admins", roleService.getRoleHolders("ROLE_ADMIN"));
        model.addAttribute("nonBoard", studentService.getStudentsWithoutRole("ROLE_BOARD_MEMBER"));
        model.addAttribute("nonAdmin", studentService.getStudentsWithoutRole("ROLE_ADMIN"));

        return "list-roles";
    }

    @GetMapping("/manageRoles/addBoard")
    public String addBoardMember(@RequestParam("studentId") int id){

        roleService.addRoleHolder("ROLE_BOARD_MEMBER",id);

        return "redirect:/student/manageRoles";
    }

    @GetMapping("/manageRoles/addAdmin")
    public String addAdmin(@RequestParam("studentId") int id){

        roleService.addRoleHolder("ROLE_ADMIN",id);

        return "redirect:/student/manageRoles";
    }

    @GetMapping("/manageRoles/remove")
    public String removeRole(@RequestParam("studentId") int id, @RequestParam("role") String role){

        String formatted = "ROLE_" + role.toUpperCase();
        roleService.removeHolder(formatted,id);

        return "redirect:/student/manageRoles";
    }
}
