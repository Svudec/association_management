package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Project;

import java.util.List;

public interface ProjectDAO {

    Project getProject(int id);

    List<Project> getProjects();

    void save(Project project);
}
