package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dto.ReceiptDTO;
import hr.unizg.fer.sudec.entity.Receipt;

import java.util.List;

public interface ReceiptService {
    List<Receipt> getReceipts();

    void saveReceipt(ReceiptDTO dto);

    Receipt getReceipt(int id);

    double getAccountValue();
}
