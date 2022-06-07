package model;

import dao.GeneralDao;
import domain.Product;
import java.util.List;

public class ProductModel {
    private String sellMsg="";
    private GeneralDao<Product> dao = new GeneralDao<Product>(Product.class);
    private Product product = new Product();
    private List<Product> productList;

    public GeneralDao<Product> getDao() {
        return dao;
    }

    public String getSellMsg() {
        return sellMsg;
    }

    public void setSellMsg(String sellMsg) {
        this.sellMsg = sellMsg;
    }

    public void setDao(GeneralDao<Product> dao) {
        this.dao = dao;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }
    
    public List<Product> all() {
        return dao.findAll();
    }
    
    public int count() {
        return dao.count();
    }
    
    public Product find(int id) {
        return dao.findById(id);
    }
    
    public String delete(int id) {
        return dao.deleteById(id);
    }
    
    public void save() {
        try {
            dao.create(product);
            sellMsg="nicely Saved";
        } catch(Exception e) {
           sellMsg="Not saved"; 
        }
    }    
    
    public void update() {
        try {
            dao.update(product);
            
        } catch(Exception e) {
            
        }
    }
    public boolean checkprice(){
    boolean error=false;
    if(product.getBuyingPrice()>product.getSellingPrice()){
    error=true;
    sellMsg="Selling price must be greater than buying price";
    }
    return error;
    }
    public void delete() {
        try {
            dao.deleteById(product.getId());
           
        } catch(Exception e) {
            
        }
    }
}
