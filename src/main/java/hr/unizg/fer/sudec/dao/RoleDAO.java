package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Role;

import java.util.List;

public interface RoleDAO {

    Role getByName(String name);

    List<Role> getRoles();

    void save(Role role);
}
