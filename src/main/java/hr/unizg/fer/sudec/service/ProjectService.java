package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Project;
import hr.unizg.fer.sudec.entity.Receipt;
import hr.unizg.fer.sudec.entity.Sponsorship;
import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface ProjectService {

    Project getProject(int id);

    List<Project> getProjects();

    int getParticipantsNumber(int projectId);

    List<Student> getParticipants(int projectId);

    List<Student> getNonParticipants(int projectId);

    void saveProject(Project project);

    List<Sponsorship> getProjectSponsorships(int projectId);

    int getProjectSponsorshipsNumber(int projectId);

    List<Receipt> getProjectReceipts(int projectId);

    double getProjectReceiptsValue(int projectId);

    void addParticipant(int projectId, int studentId);

    void removeParticipant(int projectId, int studentId);
}
