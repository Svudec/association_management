package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.LocalBranchDAO;
import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.LocalBranch;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class LocalBranchServiceImpl implements LocalBranchService{

    @Autowired
    private LocalBranchDAO localBranchDAO;

    @Override
    @Transactional
    public List<LocalBranch> getBranches() {

        return localBranchDAO.getBranches();
    }

    @Override
    @Transactional
    public List<InternationalEvent> getEvents(int branchId) {

        LocalBranch branch = getBranch(branchId);
        Hibernate.initialize(branch.getEventsOrganized());

        return branch.getEventsOrganized();
    }

    @Override
    @Transactional
    public LocalBranch getBranch(int id) {

        return localBranchDAO.getBranch(id);
    }

    @Override
    @Transactional
    public int getEventsNumber(int branchId) {

        return getEvents(branchId).size();
    }
}
