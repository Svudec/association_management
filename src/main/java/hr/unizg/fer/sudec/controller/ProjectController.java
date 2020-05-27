package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.Project;
import hr.unizg.fer.sudec.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    private ProjectService projectService;

    @GetMapping("/list")
    public String listProjects(Model model){

        List<Project> projects = projectService.getProjects();
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
    public String saveProject(@ModelAttribute("project") Project project, Model model){

        projectService.saveProject(project);

        model.addAttribute("project", project);
        model.addAttribute("sponsorships", projectService.getProjectSponsorships(project.getId()));
        model.addAttribute("participants", projectService.getParticipants(project.getId()));

        return "project-details";
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
