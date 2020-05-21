package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.ProjectDAO;
import hr.unizg.fer.sudec.entity.Project;
import hr.unizg.fer.sudec.entity.Sponsorship;
import hr.unizg.fer.sudec.entity.Student;
import org.hibernate.Hibernate;
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

    @Override
    @Transactional
    public List<Student> getParticipants(int projectId) {

        Project project = getProject(projectId);
        Hibernate.initialize(project.getParticipants());

        return project.getParticipants();
    }

    @Override
    @Transactional
    public int getParticipantsNumber(int projectId) {

        return getParticipants(projectId).size();
    }

    @Override
    @Transactional
    public void saveProject(Project project) {

        projectDAO.save(project);
    }

    @Override
    @Transactional
    public List<Sponsorship> getProjectSponsorships(int projectId) {

        Project project = getProject(projectId);
        Hibernate.initialize(project.getSponsorships());

        return project.getSponsorships();
    }
}
