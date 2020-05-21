package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.SponsorshipDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SponsorshipServiceImpl implements SponsorshipService{

    @Autowired
    SponsorshipDAO sponsorshipDAO;
}
