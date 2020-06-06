package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.LocalBranch;
import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface InternationalEventService {

    List<InternationalEvent> getEvents();

    InternationalEvent getEvent(int id);

    void save(InternationalEvent event);

    List<Student> getParticipants(int eventId);

    List<Student> getNonParticipants(int eventId);

    List<LocalBranch> getOrganizers(int eventId);

    void deleteEvent(int eventId);

    void addParticipant(int eventId, int studentId);

    void removeParticipant(int eventId, int studentId);
}
