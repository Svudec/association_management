package hr.unizg.fer.sudec.controller;

import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.service.InternationalEventService;
import hr.unizg.fer.sudec.service.LocalBranchService;
import hr.unizg.fer.sudec.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @GetMapping("/list")
    public String listEvents(Model model){

        List<InternationalEvent> events = eventService.getEvents();
        model.addAttribute("events", events);

        return "list-events";
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

        model.addAttribute("students", eventService.getParticipants(id));
        model.addAttribute("organizers", eventService.getOrganizers(id));

        return "event-view";
    }

    @GetMapping("/delete")
    public String deleteEvent(@RequestParam("id") int eventId){

        eventService.deleteEvent(eventId);
        return"redirect:/event/list";
    }
}
