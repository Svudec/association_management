package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Receipt;
import hr.unizg.fer.sudec.entity.ReceiptType;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReceiptDAOImpl implements ReceiptDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Receipt> getReceipts() {

        Session session = sessionFactory.getCurrentSession();
        Query<Receipt> query = session.createQuery("from Receipt order by time desc ", Receipt.class);

        return query.getResultList();
    }

    @Override
    public double getAccountValue() {

        Session session = sessionFactory.getCurrentSession();
        String hql = "select SUM(value) from Receipt where type = :type ";

        Query queryP = session.createQuery(hql).setParameter("type", ReceiptType.PRIHOD);
        Query queryR = session.createQuery(hql).setParameter("type", ReceiptType.RASHOD);

        return (Double) queryP.getSingleResult() - (Double) queryR.getSingleResult();
    }

    @Override
    public void save(Receipt receipt) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(receipt);
    }

    @Override
    public Receipt getReceipt(int id) {

        Session session = sessionFactory.getCurrentSession();

        return session.get(Receipt.class, id);
    }

    @Override
    public void delete(Receipt receipt) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(receipt);
    }
}
