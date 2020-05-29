package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.TeamDTO;
import hr.unizg.fer.sudec.dto.addMemberDTO;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.entity.Team;
import hr.unizg.fer.sudec.service.StudentService;
import hr.unizg.fer.sudec.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/team")
public class TeamController {

    @Autowired
    private TeamService teamService;

    @Autowired
    private StudentService studentService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

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
    public String saveTeam(@Valid @ModelAttribute("team") TeamDTO team, BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()){

            model.addAttribute("disabled_edit", false);
            model.addAttribute("saveButton", "visible");
            model.addAttribute("editButton", "hidden");
            model.addAttribute("students", studentService.getStudentsIdFullNameMap());

            return "team-form";
        }

        teamService.saveTeam(team);

        return "redirect:/team/list";
    }

    @GetMapping("/details")
    public String showTeamDetails(@RequestParam("id") int id, Model model){

        TeamDTO teamDTO = teamService.getTeamDTO(id);
        model.addAttribute("team", teamDTO);
        model.addAttribute("disabled_edit", true);
        model.addAttribute("saveButton", "hidden");
        model.addAttribute("editButton", "visible");

        model.addAttribute("students", studentService.getStudentsIdFullNameMap());

        return "team-form";
    }

    @GetMapping("/edit")
    public String editTeamDetails(@RequestParam("id") int id, Model model){

        TeamDTO teamDTO = teamService.getTeamDTO(id);
        model.addAttribute("team", teamDTO);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");

        model.addAttribute("students", studentService.getStudentsIdFullNameMap());

        return "team-form";
    }

    @GetMapping("/members")
    public String teamMembers(@RequestParam("id") int id, Model model){

        model.addAttribute("students", teamService.getMembers(id));
        model.addAttribute("studentService", studentService);
        model.addAttribute("mappingPath", "team");

        model.addAttribute("studentButton", "display: none");
        model.addAttribute("memberButton", "");

        return "list-students";
    }

    @GetMapping("/formAddMember")
    public String formAddMember(@RequestParam("id") int id, Model model){

        Map<Integer, String> nonMembers = studentService.getStudentsIdFullNameMap();
        List<Student> members = teamService.getMembers(id);
        for(Student student : members){
            nonMembers.remove(student.getId());
        }

        addMemberDTO dto = new addMemberDTO();
        model.addAttribute("nonMembers", nonMembers);
        model.addAttribute("newMember", dto);
        model.addAttribute("mappingPath", "team");

        return "add-member";
    }

    @PostMapping("/addMember")
    public String addMember(@ModelAttribute("newMember") addMemberDTO dto){

        teamService.addMember(dto.getId(),dto.getMemberToAdd());
        return "redirect:/team/members?id=" + dto.getId();
    }

    @GetMapping("/removeMember")
    public String removeMember(@RequestParam("id") int teamId, @RequestParam("MemberId") int memberId){

        teamService.removeMember(teamId, memberId);

        return "redirect:/team/members?id=" + teamId;
    }
}
