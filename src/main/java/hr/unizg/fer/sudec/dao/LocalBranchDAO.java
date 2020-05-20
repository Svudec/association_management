package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.LocalBranch;

import java.util.List;

public interface LocalBranchDAO {

    List<LocalBranch> getBranches();

    LocalBranch getBranch(int id);
}
