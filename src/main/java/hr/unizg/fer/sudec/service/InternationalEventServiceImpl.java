package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.InternationalEventDAO;
import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.LocalBranch;
import hr.unizg.fer.sudec.entity.Student;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class InternationalEventServiceImpl implements InternationalEventService{

    @Autowired
    private InternationalEventDAO eventDAO;

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
    public List<Student> getParticipants(int eventId) {

        InternationalEvent event = getEvent(eventId);
        Hibernate.initialize(event.getParticipants());

        return event.getParticipants();
    }

    @Override
    @Transactional
    public List<LocalBranch> getOrganizers(int eventId) {

        InternationalEvent event = getEvent(eventId);
        Hibernate.initialize(event.getOrganizers());

        return event.getOrganizers();
    }
}
