package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.InternationalEvent;

import java.util.List;

public interface InternationalEventDAO {

    List<InternationalEvent> getEvents();

    InternationalEvent getEvent(int id);
}
