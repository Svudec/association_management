package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dto.LocalBranchDTO;
import hr.unizg.fer.sudec.entity.Country;
import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.LocalBranch;

import java.util.List;

public interface LocalBranchService {

    List<LocalBranch> getBranches();

    LocalBranch getBranch(int id);

    List<InternationalEvent> getEvents(int branchId);

    int getEventsNumber(int branchId);

    void createBranch(LocalBranchDTO branchDTO);

    void deleteBranch(int branchId);

    List<Country> getCountries();

    Country getCountry(int countryId);
}
