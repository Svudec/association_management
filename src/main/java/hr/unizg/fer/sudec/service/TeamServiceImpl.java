package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.TeamDAO;
import hr.unizg.fer.sudec.dto.TeamDTO;
import hr.unizg.fer.sudec.entity.Team;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TeamServiceImpl implements TeamService{

    @Autowired
    private TeamDAO teamDAO;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private StudentService studentService;

    @Override
    @Transactional
    public List<Team> getTeams() {

        return teamDAO.getTeams();
    }

    @Override
    @Transactional
    public int getNumberOfMembers(int teamId) {

        Team team = getTeam(teamId);

        return team.getMembers().size();
    }

    @Override
    @Transactional
    public Team getTeam(int id) {

        return teamDAO.getTeam(id);
    }

    @Override
    @Transactional
    public void saveTeam(Team team) {

        teamDAO.saveTeam(team);
    }

    @Override
    @Transactional
    public void saveTeam(TeamDTO teamDTO) {

        Team team = new Team();
        modelMapper.map(teamDTO, team);
        team.setLeader(studentService.getStudent(teamDTO.getLeaderId()));

        teamDAO.saveTeam(team);
    }
}
