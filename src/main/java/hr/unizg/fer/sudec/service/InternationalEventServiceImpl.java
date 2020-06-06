package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.InternationalEventDAO;
import hr.unizg.fer.sudec.dto.InternationalEventDTO;
import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.LocalBranch;
import hr.unizg.fer.sudec.entity.Student;
import org.hibernate.Hibernate;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class InternationalEventServiceImpl implements InternationalEventService{

    @Autowired
    private InternationalEventDAO eventDAO;

    @Autowired
    private StudentService studentService;

    @Autowired
    private LocalBranchService localBranchService;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    @Transactional
    public List<InternationalEvent> getEvents() {

        return eventDAO.getEvents();
    }

    @Override
    @Transactional
    public InternationalEvent getEvent(int id) {

        return eventDAO.getEvent(id);
    }

    @Override
    @Transactional
    public void save(InternationalEvent event) {

        eventDAO.saveEvent(event);
    }

    @Override
    @Transactional
    public void save(InternationalEventDTO eventDTO) {

        InternationalEvent event = new InternationalEvent();
        List<LocalBranch> organizers = event.getOrganizers();

        modelMapper.map(eventDTO, event);
        for (String organizerId: eventDTO.getOrganizers()) {

            organizers.add(localBranchService.getBranch(Integer.parseInt(organizerId)));
        }
        event.setOrganizers(organizers);

        save(event);
    }

    @Override
    @Transactional
    public void deleteEvent(int eventId) {

        eventDAO.deleteInternationalEvent(getEvent(eventId));
    }

    @Override
    @Transactional
    public List<Student> getParticipants(int eventId) {

        InternationalEvent event = getEvent(eventId);
        Hibernate.initialize(event.getParticipants());

        return event.getParticipants();
    }

    @Override
    @Transactional
    public List<Student> getNonParticipants(int eventId) {

        List<Student> nonParticipants = studentService.getStudents();
        nonParticipants.removeAll(getParticipants(eventId));
        return nonParticipants;
    }

    @Override
    @Transactional
    public List<LocalBranch> getOrganizers(int eventId) {

        InternationalEvent event = getEvent(eventId);
        Hibernate.initialize(event.getOrganizers());

        return event.getOrganizers();
    }

    @Override
    @Transactional
    public void addParticipant(int eventId, int studentId) {

        InternationalEvent event = getEvent(eventId);
        Hibernate.initialize(event.getParticipants());
        List<Student> participants = event.getParticipants();

        participants.add(studentService.getStudent(studentId));
        event.setParticipants(participants);
        save(event);
    }

    @Override
    @Transactional
    public void removeParticipant(int eventId, int studentId) {

        InternationalEvent event = getEvent(eventId);
        Hibernate.initialize(event.getParticipants());
        List<Student> participants = event.getParticipants();

        participants.remove(studentService.getStudent(studentId));
        event.setParticipants(participants);
        save(event);
    }
}
