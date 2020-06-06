package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dto.TeamDTO;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.entity.Team;

import java.util.List;

public interface TeamService {

    List<Team> getTeams();

    int getNumberOfMembers(int teamId);

    Team getTeam(int id);

    void deleteTeam(int teamId);

    TeamDTO getTeamDTO(int id);

    void saveTeam(Team team);

    void saveTeam(TeamDTO team);

    List<Student> getMembers(int teamId);

    void addMember(int teamId, int newMemberId);

    void removeMember(int teamId, int memberId);
}
