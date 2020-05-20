package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Gathering;

import java.util.List;

public interface GatheringDAO {

    List<Gathering> getGatherings();

    Gathering getGathering(int id);

    void save(Gathering gathering);
}
