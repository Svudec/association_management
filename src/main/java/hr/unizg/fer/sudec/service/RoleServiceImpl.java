package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.RoleDAO;
import hr.unizg.fer.sudec.entity.Role;
import hr.unizg.fer.sudec.entity.Student;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService{

    @Autowired
    private RoleDAO roleDAO;

    @Autowired
    private StudentService studentService;

    @Override
    @Transactional
    public List<Role> getRoles() {
        return roleDAO.getRoles();
    }

    @Override
    @Transactional
    public Role getByName(String roleName) {
        return roleDAO.getByName(roleName);
    }

    @Override
    @Transactional
    public List<Student> getRoleHolders(String roleName) {

        Role role = getByName(roleName);
        if(role == null)
            return null;

        Hibernate.initialize(role.getUsers());
        return role.getUsers();
    }

    @Override
    @Transactional
    public void addRoleHolder(String roleName, int studentId) {

        Role role = getByName(roleName);
        if (role != null) {

            List<Student> holders = getRoleHolders(roleName);
            holders.add(studentService.getStudent(studentId));

            role.setUsers(holders);

            save(role);
        }
    }

    @Override
    @Transactional
    public void save(Role role) {

        roleDAO.save(role);
    }
}
