package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Sponsorship;
import hr.unizg.fer.sudec.entity.SponsorshipId;

public interface SponsorshipDAO {

    Sponsorship getSponsorship(SponsorshipId id);

    void createSponsorship(Sponsorship sponsorship);

    void delete(Sponsorship sponsorship);
}
