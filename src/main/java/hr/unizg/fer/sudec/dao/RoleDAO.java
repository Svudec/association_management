package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Role;

public interface RoleDAO {

    Role getByName(String name);
}
