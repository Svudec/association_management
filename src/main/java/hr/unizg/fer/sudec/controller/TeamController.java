package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.TeamDTO;
import hr.unizg.fer.sudec.entity.Team;
import hr.unizg.fer.sudec.service.StudentService;
import hr.unizg.fer.sudec.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/team")
public class TeamController {

    @Autowired
    private TeamService teamService;

    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public String listTeams(Model model){

        List<Team> teams = teamService.getTeams();
        model.addAttribute("teams", teams);
        model.addAttribute("teamService", teamService);

        return "list-teams";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        TeamDTO team = new TeamDTO();
        model.addAttribute("team", team);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");

        model.addAttribute("students", studentService.getStudentsIdFullNameMap());

        return "team-form";
    }

    @PostMapping("/save")
    public String saveTeam(@ModelAttribute("team") TeamDTO team){

        teamService.saveTeam(team);

        return "redirect:/team/list";
    }
}
