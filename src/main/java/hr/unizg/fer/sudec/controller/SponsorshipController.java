package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.SponsorshipDTO;
import hr.unizg.fer.sudec.service.PartnerService;
import hr.unizg.fer.sudec.service.ProjectService;
import hr.unizg.fer.sudec.service.SponsorPackageService;
import hr.unizg.fer.sudec.service.SponsorshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/sponsorship")
public class SponsorshipController {

    @Autowired
    private SponsorshipService sponsorshipService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private PartnerService partnerService;

    @Autowired
    private SponsorPackageService packageService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/new")
    public String showFormForNewSponsorship(Model model){

        SponsorshipDTO sponsorshipDTO = new SponsorshipDTO();

        model.addAttribute("sponsorshipDTO", sponsorshipDTO);
        model.addAttribute("partners", partnerService.getPartners());
        model.addAttribute("packages", packageService.getPackages());
        model.addAttribute("projects", projectService.getProjects());

        return "add-sponsorship";
    }

    @PostMapping("/new")
    public String createSponsorship(@Valid @ModelAttribute("sponsorshipDTO") SponsorshipDTO sponsorshipDTO, BindingResult bindingResult, Model model){

        if (bindingResult.hasErrors()){

            model.addAttribute("partners", partnerService.getPartners());
            model.addAttribute("packages", packageService.getPackages());
            model.addAttribute("projects", projectService.getProjects());

            return "add-sponsorship";
        }

        sponsorshipService.createSponsorship(sponsorshipDTO);
        return "redirect:/project/list";
    }

    @GetMapping("/details")
    public String sponsorshipDetails(@RequestParam("projectId") int projectId, @RequestParam("partnerId") int partnerId, Model model){

        model.addAttribute("sponsorship", sponsorshipService.getSponsorship(partnerId, projectId));
        return "sponsorship-view";
    }

    @GetMapping("/delete")
    public String deleteSponsorship(@RequestParam("projectId") int projectId, @RequestParam("partnerId") int partnerId){

        sponsorshipService.delete(partnerId, projectId);
        return "redirect:/project/details?ProjectId=" + projectId;
    }
}
