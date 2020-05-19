package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Team;

import java.util.List;

public interface TeamDAO {

    List<Team> getTeams();

    Team getTeam(int id);

    void saveTeam(Team team);
}
