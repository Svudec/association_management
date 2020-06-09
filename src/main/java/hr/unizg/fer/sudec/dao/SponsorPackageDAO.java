package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.SponsorPackage;

import java.util.List;

public interface SponsorPackageDAO {

    SponsorPackage getPackage(int packageId);

    List<SponsorPackage> getPackages();

    void save(SponsorPackage sponsorPackage);

    void delete(SponsorPackage sponsorPackage);
}
