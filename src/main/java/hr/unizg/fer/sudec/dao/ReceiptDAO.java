package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Receipt;

import java.util.List;

public interface ReceiptDAO {
    List<Receipt> getReceipts();

    double getAccountValue();

    void save(Receipt receipt);

    Receipt getReceipt(int id);

    void delete(Receipt receipt);
}
