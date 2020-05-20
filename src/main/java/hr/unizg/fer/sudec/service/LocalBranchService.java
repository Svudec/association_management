package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.LocalBranch;

import java.util.List;

public interface LocalBranchService {

    List<LocalBranch> getBranches();

    LocalBranch getBranch(int id);

    List<InternationalEvent> getEvents(int branchId);

    int getEventsNumber(int branchId);
}
