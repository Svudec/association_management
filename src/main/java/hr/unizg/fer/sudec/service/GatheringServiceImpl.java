package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.GatheringDAO;
import hr.unizg.fer.sudec.dto.GatheringDTO;
import hr.unizg.fer.sudec.entity.Gathering;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.helperClass.EntitiesHelperClass;
import org.hibernate.Hibernate;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GatheringServiceImpl implements GatheringService{

    @Autowired
    private GatheringDAO gatheringDAO;

    @Autowired
    private TeamService teamService;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    @Transactional
    public List<Gathering> getGatherings() {

        return gatheringDAO.getGatherings();
    }

    @Override
    public Gathering getGathering(int id) {

        return gatheringDAO.getGathering(id);
    }

    @Override
    @Transactional
    public void saveGathering(GatheringDTO dto) {

        Gathering gathering = getGathering(dto.getId());
        if(gathering == null) gathering = new Gathering();

        gathering.setTeam(teamService.getTeam(dto.getTeamId()));
        EntitiesHelperClass.removeEmptyStrings(dto);
        modelMapper.map(dto, gathering);

        if(gathering.getTeam() != null && gathering.getTeam().getId() == 0){
            gathering.setTeam(null);
        }

        gatheringDAO.save(gathering);
    }

    @Override
    @Transactional
    public GatheringDTO getGatheringDTO(int id) {

        Gathering gathering = getGathering(id);
        GatheringDTO dto = new GatheringDTO();

        modelMapper.map(gathering, dto);
        if (gathering.getTeam() == null)    dto.setTeamId(0);
        else    dto.setTeamId(gathering.getTeam().getId());

        return dto;
    }

    @Override
    @Transactional
    public List<Student> getMembers(int gatheringId) {

        Gathering gathering = getGathering(gatheringId);
        Hibernate.initialize(gathering.getAttenders());

        return gathering.getAttenders();
    }

    @Override
    @Transactional
    public int getMembersNumber(int gatheringId) {

        return getMembers(gatheringId).size();
    }
}
