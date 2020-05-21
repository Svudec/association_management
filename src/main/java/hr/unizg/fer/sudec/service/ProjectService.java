package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Project;

import java.util.List;

public interface ProjectService {

    Project getProject(int id);

    List<Project> getProjects();
}
