package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.ReceiptDAO;
import hr.unizg.fer.sudec.dto.ReceiptDTO;
import hr.unizg.fer.sudec.entity.Receipt;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ReceiptServiceImpl implements ReceiptService{

    @Autowired
    private ReceiptDAO receiptDAO;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private GatheringService gatheringService;

    @Autowired
    private ProjectService projectService;

    @Override
    @Transactional
    public List<Receipt> getReceipts() {

        return receiptDAO.getReceipts();
    }

    @Override
    @Transactional
    public void saveReceipt(ReceiptDTO dto) {

        Receipt receipt = getReceipt(dto.getId());
        if(receipt == null) receipt = new Receipt();

        receipt.setGatheringReceipt(gatheringService.getGathering(dto.getGatheringReceiptId()));
        receipt.setProjectReceipt(projectService.getProject(dto.getProjectReceiptId()));
        modelMapper.map(dto, receipt);

        if(receipt.getGatheringReceipt() != null && receipt.getGatheringReceipt().getId() == 0){
            receipt.setGatheringReceipt(null);
        }
        if(receipt.getProjectReceipt() != null && receipt.getProjectReceipt().getId() == 0){
            receipt.setProjectReceipt(null);
        }

        receiptDAO.save(receipt);
    }

    @Override
    @Transactional
    public void deleteReceipt(int receiptId) {

        receiptDAO.delete(getReceipt(receiptId));
    }

    @Override
    @Transactional
    public Receipt getReceipt(int id) {

        return receiptDAO.getReceipt(id);
    }

    @Override
    @Transactional
    public double getAccountValue() {

        return Math.round(receiptDAO.getAccountValue() * 100.0) / 100.0;
    }
}
