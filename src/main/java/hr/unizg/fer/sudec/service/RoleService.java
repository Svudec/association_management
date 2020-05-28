package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Role;
import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface RoleService {

    List<Role> getRoles();

    Role getByName(String roleName);

    List<Student> getRoleHolders(String roleName);

    void addRoleHolder(String roleName, int studentId);

    void save(Role role);

    void removeHolder(String roleName, int studentId);
}
