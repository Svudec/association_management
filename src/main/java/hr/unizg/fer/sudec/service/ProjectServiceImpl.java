package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.ProjectDAO;
import hr.unizg.fer.sudec.entity.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService{

    @Autowired
    private ProjectDAO projectDAO;

    @Override
    @Transactional
    public Project getProject(int id) {

        return projectDAO.getProject(id);
    }

    @Override
    @Transactional
    public List<Project> getProjects() {

        return projectDAO.getProjects();
    }
}
