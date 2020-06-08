package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Partner;
import hr.unizg.fer.sudec.entity.Sponsorship;

import java.util.List;

public interface PartnerService {

    List<Partner> getPartners();

    Partner getPartner(int partnerId);

    void save(Partner partner);

    void delete(int partnerId);

    List<Sponsorship> getSponsorships(int partnerId);

    double getSponsorshipsValue(int partnerId);
}
