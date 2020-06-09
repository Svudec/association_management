package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.SponsorPackage;
import hr.unizg.fer.sudec.entity.Sponsorship;

import java.util.List;

public interface SponsorPackageService {

    SponsorPackage getPackage(int packageId);

    void save(SponsorPackage sponsorPackage);

    void delete(int packageId);

    List<SponsorPackage> getPackages();

    List<Sponsorship> getSponsorships(int packageId);

    int getNumberOfSponsorships(int packageId);
}
