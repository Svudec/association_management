package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Partner;

import java.util.List;

public interface PartnerDAO {

    List<Partner> getPartners();

    Partner getPartner(int partnerId);

    void save(Partner partner);

    void delete(Partner partner);

    double getSponsorshipsValue(Partner partner);
}
