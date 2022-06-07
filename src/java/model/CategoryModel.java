package model;

import dao.GeneralDao;
import domain.Category;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="categoryModel")
@SessionScoped
public class CategoryModel {
    private GeneralDao<Category> dao = new GeneralDao<Category>(Category.class);
    private Category category = new Category();
    private List<Category> categoryList;

    public GeneralDao<Category> getDao() {
        return dao;
    }

    public void setDao(GeneralDao<Category> dao) {
        this.dao = dao;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }
    
    public List<Category> all() {
        return dao.findAll();
    }
    
    public int count() {
        return dao.count();
    }
    
    public Category find(int id) {
        return dao.findById(id);
    }
    
    public String delete(int id) {
        return dao.deleteById(id);
    }
    
    public void save() {
        try {
            dao.create(category);
        } catch(Exception e) {
        }
    }
    
    public void update() {
        try {
            dao.update(category);
            
        } catch(Exception e) {
        }
    }
    public void delete() {
        try {
            dao.deleteById(category.getId());
        } catch(Exception e) {
        }
    }
}
