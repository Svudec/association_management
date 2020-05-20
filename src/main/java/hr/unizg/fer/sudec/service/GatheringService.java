package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dto.GatheringDTO;
import hr.unizg.fer.sudec.entity.Gathering;
import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface GatheringService {

    List<Gathering> getGatherings();

    void saveGathering(GatheringDTO dto);

    Gathering getGathering(int id);

    GatheringDTO getGatheringDTO(int id);

    List<Student> getMembers(int gatheringId);

    int getMembersNumber(int gatheringId);
}
