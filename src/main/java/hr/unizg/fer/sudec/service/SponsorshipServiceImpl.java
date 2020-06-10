package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.SponsorshipDAO;
import hr.unizg.fer.sudec.dto.SponsorshipDTO;
import hr.unizg.fer.sudec.entity.Sponsorship;
import hr.unizg.fer.sudec.entity.SponsorshipId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SponsorshipServiceImpl implements SponsorshipService{

    @Autowired
    private SponsorshipDAO sponsorshipDAO;

    @Autowired
    private PartnerService partnerService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private SponsorPackageService packageService;

    @Override
    @Transactional
    public Sponsorship getSponsorship(int partnerId, int projectId) {
        SponsorshipId id = new SponsorshipId();
        id.setPartner(partnerService.getPartner(partnerId));
        id.setProject(projectService.getProject(projectId));

        return sponsorshipDAO.getSponsorship(id);
    }

    @Override
    @Transactional
    public void createSponsorship(SponsorshipDTO sponsorshipDTO) {

        Sponsorship sponsorship = new Sponsorship();
        sponsorship.setPartner(partnerService.getPartner(sponsorshipDTO.getPartnerId()));
        sponsorship.setProject(projectService.getProject(sponsorshipDTO.getProjectId()));
        sponsorship.setSponsorPackage(packageService.getPackage(sponsorshipDTO.getSponsorPackageId()));
        sponsorship.setValue(sponsorshipDTO.getValue());
        sponsorship.setNote(sponsorshipDTO.getNote());

        sponsorshipDAO.createSponsorship(sponsorship);
    }

    @Override
    @Transactional
    public void delete(int partnerId, int projectId) {

        sponsorshipDAO.delete(getSponsorship(partnerId, projectId));
    }
}
