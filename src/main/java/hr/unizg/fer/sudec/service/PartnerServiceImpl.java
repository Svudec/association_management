package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.PartnerDAO;
import hr.unizg.fer.sudec.entity.Partner;
import hr.unizg.fer.sudec.entity.Sponsorship;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PartnerServiceImpl implements PartnerService{

    @Autowired
    private PartnerDAO partnerDAO;

    @Override
    @Transactional
    public List<Partner> getPartners() {

        return partnerDAO.getPartners();
    }

    @Override
    @Transactional
    public Partner getPartner(int partnerId) {

        return partnerDAO.getPartner(partnerId);
    }

    @Override
    @Transactional
    public void save(Partner partner) {

        partnerDAO.save(partner);
    }

    @Override
    @Transactional
    public void delete(int partnerId) {

        partnerDAO.delete(getPartner(partnerId));
    }

    @Override
    @Transactional
    public List<Sponsorship> getSponsorships(int partnerId) {

        Partner partner = getPartner(partnerId);
        Hibernate.initialize(partner.getSponsorships());

        return partner.getSponsorships();
    }

    @Override
    @Transactional
    public double getSponsorshipsValue(int partnerId) {

        return partnerDAO.getSponsorshipsValue(getPartner(partnerId));
    }
}
