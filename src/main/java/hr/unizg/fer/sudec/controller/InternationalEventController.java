package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.dto.InternationalEventDTO;
import hr.unizg.fer.sudec.entity.EventCategory;
import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.service.InternationalEventService;
import hr.unizg.fer.sudec.service.LocalBranchService;
import hr.unizg.fer.sudec.service.StudentService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/event")
public class InternationalEventController {

    @Autowired
    private InternationalEventService eventService;

    @Autowired
    private LocalBranchService branchService;

    @Autowired
    StudentService studentService;

    @Autowired
    ModelMapper modelMapper;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/list")
    public String listEvents(Model model){

        List<InternationalEvent> events = eventService.getEvents();
        model.addAttribute("events", events);

        return "list-events";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){

        InternationalEventDTO event = new InternationalEventDTO();
        model.addAttribute("event", event);

        model.addAttribute("branches", branchService.getBranches());
        model.addAttribute("categories", EventCategory.values());

        return "event-form";
    }

    @PostMapping("/create")
    public String saveEvent(@Valid @ModelAttribute("event") InternationalEventDTO event, BindingResult bindingResult, Model model){

        if(!event.datesValid()){
            FieldError e = new FieldError("event","endDate", "Završetak je prije početka");
            bindingResult.addError(e);
        }

        if(bindingResult.hasErrors()){

            model.addAttribute("branches", branchService.getBranches());
            model.addAttribute("categories", EventCategory.values());

            return "event-form";
        }

        eventService.save(event);

        return "redirect:/event/list";
    }

    @GetMapping("/listByBranch")
    public String eventsOrganized(@RequestParam("BranchId") int id, Model model){

        model.addAttribute("events", branchService.getEvents(id));

        return "list-events";
    }

    @GetMapping("/details")
    public String showEventDetails(@RequestParam("EventId") int id, Model model){

        InternationalEvent event = eventService.getEvent(id);
        model.addAttribute("event", event);
        model.addAttribute("studentService", studentService);

        model.addAttribute("participants", eventService.getParticipants(id));
        model.addAttribute("organizers", eventService.getOrganizers(id));
        model.addAttribute("nonParticipants", eventService.getNonParticipants(id));

        return "event-view";
    }

    @GetMapping("/delete")
    public String deleteEvent(@RequestParam("id") int eventId){

        eventService.deleteEvent(eventId);
        return"redirect:/event/list";
    }

    @GetMapping("/addParticipant")
    public String addParticipant(@RequestParam("studentId") int studentId, @RequestParam("eventId") int eventId){

        eventService.addParticipant(eventId, studentId);
        return "redirect:/event/details?EventId=" + eventId;
    }

    @GetMapping("/removeParticipant")
    public String removeParticipant(@RequestParam("studentId") int studentId, @RequestParam("eventId") int eventId){

        eventService.removeParticipant(eventId, studentId);
        return "redirect:/event/details?EventId=" + eventId;
    }
}
