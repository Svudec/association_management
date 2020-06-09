package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.SponsorPackageDAO;
import hr.unizg.fer.sudec.entity.SponsorPackage;
import hr.unizg.fer.sudec.entity.Sponsorship;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class SponsorPackageServiceImpl implements SponsorPackageService{

    @Autowired
    private SponsorPackageDAO sponsorPackageDAO;

    @Override
    @Transactional
    public SponsorPackage getPackage(int packageId) {

        return sponsorPackageDAO.getPackage(packageId);
    }

    @Override
    @Transactional
    public void save(SponsorPackage sponsorPackage) {

        sponsorPackage.setCreationDate(new Date());
        sponsorPackageDAO.save(sponsorPackage);
    }

    @Override
    @Transactional
    public void delete(int packageId) {

        sponsorPackageDAO.delete(getPackage(packageId));
    }

    @Override
    @Transactional
    public List<SponsorPackage> getPackages() {

        return sponsorPackageDAO.getPackages();
    }

    @Override
    @Transactional
    public List<Sponsorship> getSponsorships(int packageId) {

        SponsorPackage sponsorPackage = getPackage(packageId);
        Hibernate.initialize(sponsorPackage.getSponsorships());

        return sponsorPackage.getSponsorships();
    }

    @Override
    @Transactional
    public int getNumberOfSponsorships(int packageId) {

        return getSponsorships(packageId).size();
    }
}
