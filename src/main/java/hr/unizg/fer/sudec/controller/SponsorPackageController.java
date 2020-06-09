package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.SponsorPackage;
import hr.unizg.fer.sudec.service.SponsorPackageService;
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
@RequestMapping("/sponsorPackage")
public class SponsorPackageController {

    @Autowired
    private SponsorPackageService packageService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/list")
    public String listPackages(Model model){

        List<SponsorPackage> packages = packageService.getPackages();

        model.addAttribute("packages", packages);
        model.addAttribute("packageService", packageService);

        return "list-packages";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        SponsorPackage sponsorPackage = new SponsorPackage();
        model.addAttribute("package", sponsorPackage);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");
        model.addAttribute("showSponsorships", "display: none");

        return "package-form";
    }

    @PostMapping("/save")
    public String savePackage(@Valid @ModelAttribute("package") SponsorPackage sponsorPackage, BindingResult bindingResult, Model model){

        if (bindingResult.hasErrors()){

            model.addAttribute("disabled_edit", false);
            model.addAttribute("saveButton", "visible");
            model.addAttribute("editButton", "hidden");
            model.addAttribute("showSponsorships", "display: none");

            return "package-form";
        }

        packageService.save(sponsorPackage);

        return "redirect:/sponsorPackage/list";
    }

    @GetMapping("/details")
    public String showPackageDetails(@RequestParam("id") int packageId, Model model){

        SponsorPackage sponsorPackage = packageService.getPackage(packageId);

        model.addAttribute("package", sponsorPackage);
        model.addAttribute("disabled_edit", true);
        model.addAttribute("saveButton", "hidden");
        model.addAttribute("editButton", "visible");
        model.addAttribute("showSponsorships", "");

        model.addAttribute("sponsorships", packageService.getSponsorships(packageId));

        return "package-form";
    }

    @GetMapping("/edit")
    public String editPackage(@RequestParam("id") int packageId, Model model){

        SponsorPackage sponsorPackage = packageService.getPackage(packageId);
        model.addAttribute("package", sponsorPackage);
        model.addAttribute("disabled_edit", false);
        model.addAttribute("saveButton", "visible");
        model.addAttribute("editButton", "hidden");
        model.addAttribute("showSponsorships", "display: none");

        return "package-form";
    }

    @GetMapping("/delete")
    public String deletePackage(@RequestParam("id") int packageId){

        packageService.delete(packageId);
        return "redirect:/sponsorPackage/list";
    }
}
