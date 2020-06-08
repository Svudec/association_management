package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.PartnerDAO;
import hr.unizg.fer.sudec.entity.Partner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PartnerServiceImpl implements PartnerService{

    @Autowired
    PartnerDAO partnerDAO;

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
}
