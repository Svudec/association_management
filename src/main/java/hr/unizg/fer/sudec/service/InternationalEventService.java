package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.LocalBranch;
import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface InternationalEventService {

    List<InternationalEvent> getEvents();

    InternationalEvent getEvent(int id);

    List<Student> getParticipants(int eventId);

    List<LocalBranch> getOrganizers(int eventId);

    void deleteEvent(int eventId);
}
