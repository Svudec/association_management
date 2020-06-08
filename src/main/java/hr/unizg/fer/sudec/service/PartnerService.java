package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Partner;

import java.util.List;

public interface PartnerService {

    List<Partner> getPartners();

    Partner getPartner(int partnerId);

    void save(Partner partner);

    void delete(int partnerId);
}
