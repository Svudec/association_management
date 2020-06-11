package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.LocalBranchDTO;
import hr.unizg.fer.sudec.service.LocalBranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/branch")
public class LocalBranchController {

    @Autowired
    private LocalBranchService localBranchService;

    @GetMapping("/list")
    public String listBranches(Model model){

        model.addAttribute("branch", new LocalBranchDTO());

        model.addAttribute("countries", localBranchService.getCountries());
        model.addAttribute("last", "");
        model.addAttribute("branches", localBranchService.getBranches());
        model.addAttribute("branchService", localBranchService);

        return "list-branches";
    }

    @PostMapping("/new")
    public String createBranch(@Valid @ModelAttribute("branch")LocalBranchDTO dto, BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()){

            model.addAttribute("countries", localBranchService.getCountries());
            model.addAttribute("last", "");
            model.addAttribute("branches", localBranchService.getBranches());
            model.addAttribute("branchService", localBranchService);

            return "list-branches";
        }

        localBranchService.createBranch(dto);

        return "redirect:/branch/list";
    }

    @GetMapping("/delete")
    public String deleteBranch(@RequestParam("id") int branchId){

        localBranchService.deleteBranch(branchId);
        return "redirect:/branch/list";
    }

}
