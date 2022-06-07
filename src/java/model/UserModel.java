package model;

import dao.GeneralDao;
import domain.User;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="userModel")
@SessionScoped
public class UserModel {
    private GeneralDao<User> dao = new GeneralDao<User>(User.class);
    private User user = new User();
    private List<User> userList;

    public GeneralDao<User> getDao() {
        return dao;
    }

    public void setDao(GeneralDao<User> dao) {
        this.dao = dao;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }
    
    public List<User> all() {
        return dao.findAll();
    }
    
    public int count() {
        return dao.count();
    }
    
    public User find(int id) {
        return dao.findById(id);
    }
    
    public String delete(int id) {
        return dao.deleteById(id);
    }
    
    public User findByEmail(String email) {
        return dao.findByEmail(email).get(0);
    }
    
    public User login(String email, String password) {
        return dao.login(email, password);
    }
    
    public void save() {
        try {
            dao.create(user);
        } catch(Exception e) {
        }
    }
}
