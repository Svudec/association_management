package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dto.GatheringDTO;
import hr.unizg.fer.sudec.entity.Gathering;
import hr.unizg.fer.sudec.entity.Receipt;
import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface GatheringService {

    List<Gathering> getGatherings();

    void saveGathering(Gathering gathering);

    void saveGathering(GatheringDTO dto);

    Gathering getGathering(int id);

    void deleteGathering(int gatheringId);

    GatheringDTO getGatheringDTO(int id);

    List<Student> getMembers(int gatheringId);

    int getMembersNumber(int gatheringId);

    List<Receipt> getGatheringsReceipts(int gatheringId);

    double getGatheringsReceiptsValue(int gatheringId);

    void addMember(int gatheringId, int memberToAddId);

    void removeMember(int gatheringId, int memberId);

    List<Receipt> getGatheringReceipts(int gatheringId);
}
