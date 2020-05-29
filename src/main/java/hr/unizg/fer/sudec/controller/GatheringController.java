package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.GatheringDTO;
import hr.unizg.fer.sudec.dto.addMemberDTO;
import hr.unizg.fer.sudec.entity.Gathering;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.service.GatheringService;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/gathering")
public class GatheringController {

    @Autowired
    private GatheringService gatheringService;

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
    public String listGatherings(Model model){

        List<Gathering> gatherings = gatheringService.getGatherings();
        Map<Integer,String> receiptValues = new HashMap<>();
        for (Gathering gathering : gatherings){
            receiptValues.put(gathering.getId(), String.format("%.2f", gatheringService.getGatheringsReceiptsValue(gathering.getId())));
        }

        model.addAttribute("receiptValues", receiptValues);
        model.addAttribute("gatherings", gatherings);
        model.addAttribute("gatheringService", gatheringService);

        return "list-gatherings";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        GatheringDTO gathering = new GatheringDTO();
        model.addAttribute("gathering", gathering);
        model.addAttribute("teams", teamService.getTeams());

        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");

        return "gathering-form";
    }

    @PostMapping("/save")
    public String saveGathering(@Valid @ModelAttribute("gathering") GatheringDTO dto, BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()){

            model.addAttribute("teams", teamService.getTeams());
            model.addAttribute("disabled_edit", false);
            model.addAttribute("saveButton", "visible");
            model.addAttribute("editButton", "hidden");

            return "gathering-form";
        }

        gatheringService.saveGathering(dto);

        return "redirect:/gathering/list";
    }

    @GetMapping("/details")
    public String showGatheringDetails(@RequestParam("id") int id, Model model){

        GatheringDTO dto = gatheringService.getGatheringDTO(id);
        model.addAttribute("gathering", dto);

        model.addAttribute("disabled_edit", true);
        model.addAttribute("saveButton", "hidden");
        model.addAttribute("editButton", "visible");

        model.addAttribute("teams", teamService.getTeams());

        return "gathering-form";
    }

    @GetMapping("/edit")
    public String editGatheringDetails(@RequestParam("id") int id, Model model){

        GatheringDTO dto = gatheringService.getGatheringDTO(id);
        model.addAttribute("gathering", dto);

        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");

        model.addAttribute("teams", teamService.getTeams());

        return "gathering-form";
    }

    @GetMapping("/members")
    public String gatheringMembers(@RequestParam("id") int id, Model model){

        model.addAttribute("students", gatheringService.getMembers(id));
        model.addAttribute("studentService", studentService);
        model.addAttribute("mappingPath", "gathering");

        model.addAttribute("studentButton", "display: none");
        model.addAttribute("memberButton", "");

        return "list-students";
    }

    @GetMapping("/formAddMember")
    public String formAddMember(@RequestParam("id") int id, Model model){

        Map<Integer, String> nonMembers = studentService.getStudentsIdFullNameMap();
        List<Student> members = gatheringService.getMembers(id);
        for(Student student : members){
            nonMembers.remove(student.getId());
        }

        addMemberDTO dto = new addMemberDTO();
        model.addAttribute("nonMembers", nonMembers);
        model.addAttribute("newMember", dto);
        model.addAttribute("mappingPath", "gathering");

        return "add-member";
    }

    @PostMapping("/addMember")
    public String addMember(@ModelAttribute("newMember") addMemberDTO dto){

        gatheringService.addMember(dto.getId(),dto.getMemberToAdd());
        return "redirect:/gathering/members?id=" + dto.getId();
    }

    @GetMapping("/removeMember")
    public String removeMember(@RequestParam("id") int gatheringId, @RequestParam("MemberId") int memberId){

        gatheringService.removeMember(gatheringId, memberId);

        return "redirect:/gathering/members?id=" + gatheringId;
    }
}
