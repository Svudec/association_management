package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.TeamDAO;
import hr.unizg.fer.sudec.dto.TeamDTO;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.entity.Team;
import org.hibernate.Hibernate;
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

        Team team = getTeam(teamDTO.getId());
        if(team == null){
            team = new Team();
        }

        team.setLeader(studentService.getStudent(teamDTO.getLeaderId()));
        modelMapper.map(teamDTO, team);

        teamDAO.saveTeam(team);
    }

    @Override
    @Transactional
    public TeamDTO getTeamDTO(int id) {

        TeamDTO teamDTO = new TeamDTO();
        Team team = getTeam(id);

        modelMapper.map(team, teamDTO);
        teamDTO.setLeaderId(team.getLeader().getId());

        return teamDTO;
    }

    @Override
    @Transactional
    public List<Student> getMembers(int teamId) {

        Team team = getTeam(teamId);
        Hibernate.initialize(team.getMembers());

        return team.getMembers();
    }

    @Override
    @Transactional
    public void addMember(int teamId, int newMemberId) {

        Team team = getTeam(teamId);
        Hibernate.initialize(team.getMembers());
        List<Student> members = team.getMembers();

        Student newMember = studentService.getStudent(newMemberId);
        members.add(newMember);
    }

    @Override
    @Transactional
    public void removeMember(int teamId, int memberId) {

        Team team = getTeam(teamId);
        Student member = studentService.getStudent(memberId);

        Hibernate.initialize(team.getMembers());
        List<Student> members = team.getMembers();

        members.remove(member);

        team.setMembers(members);
    }
}
