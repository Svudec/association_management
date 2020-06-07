package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.Project;
import hr.unizg.fer.sudec.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    private ProjectService projectService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/list")
    public String listProjects(Model model){

        List<Project> projects = projectService.getProjects();
        Map<Integer,String> receiptValues = new HashMap<>();
        for (Project project : projects){
            receiptValues.put(project.getId(), String.format("%12.2f", projectService.getProjectReceiptsValue(project.getId())));
        }

        model.addAttribute("receiptValues", receiptValues);
        model.addAttribute("projects", projects);
        model.addAttribute("projectService", projectService);

        return "list-projects";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        Project project = new Project();
        model.addAttribute("project", project);

        return "project-form";
    }

    @PostMapping("/save")
    public String saveProject(@Valid @ModelAttribute("project") Project project, BindingResult bindingResult, Model model){

        if(!project.datesValid()){
            FieldError e = new FieldError("project","endDate", "Završetak je prije početka");
            bindingResult.addError(e);
        }

        if(bindingResult.hasErrors())
            return "project-form";

        projectService.saveProject(project);

        return "redirect:/project/list";
    }

    @GetMapping("/details")
    public String showProjectDetails(@RequestParam("ProjectId") int id, Model model){

        Project project = projectService.getProject(id);
        model.addAttribute("project", project);
        model.addAttribute("sponsorships", projectService.getProjectSponsorships(id));
        model.addAttribute("participants", projectService.getParticipants(id));

        return "project-details";
    }
}
