package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.LocalBranch;
import hr.unizg.fer.sudec.service.LocalBranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/branch")
public class LocalBranchController {

    @Autowired
    private LocalBranchService localBranchService;

    @GetMapping("/list")
    public String listBranches(Model model){

        List<LocalBranch> branches = localBranchService.getBranches();
        model.addAttribute("branches", branches);
        model.addAttribute("branchService", localBranchService);

        return "list-branches";
    }

    @GetMapping("/events")
    public String eventsOrganized(@RequestParam("BranchId") int id, Model model){

        model.addAttribute("events", localBranchService.getEvents(id));

        return "list-events";
    }
}
