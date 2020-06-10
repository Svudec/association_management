package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dto.SponsorshipDTO;
import hr.unizg.fer.sudec.entity.Sponsorship;

public interface SponsorshipService {

    Sponsorship getSponsorship(int partnerId, int projectId);

    void createSponsorship(SponsorshipDTO sponsorshipDTO);

    void delete(int partnerId, int projectId);
}
