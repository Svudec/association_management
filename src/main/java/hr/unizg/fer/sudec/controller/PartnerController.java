package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.Partner;
import hr.unizg.fer.sudec.service.PartnerService;
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
@RequestMapping("/partner")
public class PartnerController {

    @Autowired
    PartnerService partnerService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/list")
    public String listPartners(Model model){

        List<Partner> partners = partnerService.getPartners();

        model.addAttribute("partners", partners);
        model.addAttribute("partnerService", partnerService);

        return "list-partners";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        Partner partner = new Partner();
        model.addAttribute("partner", partner);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");
        model.addAttribute("showSponsorships", "display: none");

        return "partner-form";
    }

    @PostMapping("/save")
    public String savePartner(@Valid @ModelAttribute("partner") Partner partner, BindingResult bindingResult, Model model){

        if (bindingResult.hasErrors()){

            model.addAttribute("disabled_edit", false);
            model.addAttribute("saveButton", "visible");
            model.addAttribute("editButton", "hidden");
            model.addAttribute("showSponsorships", "display: none");

            return "partner-form";
        }

        partnerService.save(partner);

        return "redirect:/partner/list";
    }

    @GetMapping("/details")
    public String showPartnerDetails(@RequestParam("id") int partnerId, Model model){

        Partner partner = partnerService.getPartner(partnerId);

        model.addAttribute("partner", partner);
        model.addAttribute("disabled_edit", true);
        model.addAttribute("saveButton", "hidden");
        model.addAttribute("editButton", "visible");
        model.addAttribute("showSponsorships", "");

        model.addAttribute("sponsorships", partnerService.getSponsorships(partnerId));


        return "partner-form";
    }

    @GetMapping("/edit")
    public String editPartner(@RequestParam("id") int partnerId, Model model){

        Partner partner = partnerService.getPartner(partnerId);
        model.addAttribute("partner", partner);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");
        model.addAttribute("showSponsorships", "display: none");

        return "partner-form";
    }

    @GetMapping("/delete")
    public String deletePartner(@RequestParam("id") int partnerId){

        partnerService.delete(partnerId);
        return "redirect:/partner/list";
    }
}
