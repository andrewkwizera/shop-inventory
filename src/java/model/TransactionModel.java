package model;

import dao.GeneralDao;
import domain.Transaction;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="transactionModel")
@SessionScoped
public class TransactionModel {
    private GeneralDao<Transaction> dao = new GeneralDao<Transaction>(Transaction.class);
    private Transaction transaction = new Transaction();
    private List<Transaction> transactionList;

    public GeneralDao<Transaction> getDao() {
        return dao;
    }

    public void setDao(GeneralDao<Transaction> dao) {
        this.dao = dao;
    }

    public Transaction getTransaction() {
        return transaction;
    }

    public void setTransaction(Transaction transaction) {
        this.transaction = transaction;
    }

    public List<Transaction> getTransactionList() {
        return transactionList;
    }

    public void setTransactionList(List<Transaction> transactionList) {
        this.transactionList = transactionList;
    }
    
    public List<Transaction> all() {
        return dao.findAll();
    }
    
    public int count() {
        return dao.count();
    }
    
    public Transaction find(int id) {
        return dao.findById(id);
    }
    
    public String delete(int id) {
        return dao.deleteById(id);
    }
    
    public void save() {
        try {
            dao.create(transaction);
        } catch(Exception e) {
    }
    }

    public void update() {
        try {
            dao.update(transaction);
        } catch(Exception e) {
        }
    }
    
    public void delete() {
        try {
            dao.deleteById(transaction.getId());
        } catch(Exception e) {
        }
    }
}
