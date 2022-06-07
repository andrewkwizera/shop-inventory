package dao;
 
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
 
public class GeneralDao<X> {
    Class<X> type;
 
    public GeneralDao(Class<X> type) {
        this.type = type;
    }
    
    public String create(X obj){
     Session ss=HibernateUtil.getSessionFactory().openSession();
     ss.beginTransaction();
     ss.saveOrUpdate(obj);
     ss.getTransaction().commit();
     ss.close();
     return "Successfully created";
    }
    
    public String update(X obj){
     Session ss=HibernateUtil.getSessionFactory().openSession();
     ss.beginTransaction();
     ss.update(obj);
     ss.getTransaction().commit();
     ss.close();
     return "Successfully created";
    }
    
    public List<X> findAll(){
       Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tr = ss.beginTransaction();
       List<X> list = ss.createQuery("from "+ type.getName()).list();
       return list;
    }
    
    public List<X> filter(String condition) {
       Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tr = ss.beginTransaction();
       List<X> list = ss.createQuery("from "+ type.getName() + condition).list();
       return list;
    }
    
    public int count() {
       Session ss = HibernateUtil.getSessionFactory().openSession();
       Transaction tr = ss.beginTransaction();
       Long count = ((Long) ss.createQuery("select count(*) from " + type.getName()).uniqueResult());
       Integer total = count.intValue();
       return total;
    }
    
    public X findById(int id){
     Session ss = HibernateUtil.getSessionFactory().openSession();
     X item = (X) ss.get(type.getName(), id);
     ss.close();
     return item;
    }
    
    public List<X> findByCategory(int category){
      Session ss = HibernateUtil.getSessionFactory().openSession();
      Criteria crit = ss.createCriteria(type.getName());
      crit.add(Restrictions.eq("categoryId", category));
      return crit.list();
    }
    
    public List<X> findByEmail(String email){
      Session ss = HibernateUtil.getSessionFactory().openSession();
      Criteria crit = ss.createCriteria(type.getName());
      crit.add(Restrictions.eq("email", email));
      return crit.list();
    }
    
    
    public List<X> findByArticleId(int article){
      Session ss = HibernateUtil.getSessionFactory().openSession();
      Criteria crit = ss.createCriteria(type.getName());
      crit.add(Restrictions.eq("articleId", article));
      return crit.list();
    }
    
    public X login(String email, String password){
      Session ss = HibernateUtil.getSessionFactory().openSession();
      Criteria crit = ss.createCriteria(type.getName());
      crit.add(Restrictions.eq("email", email));
      crit.add(Restrictions.eq("password", password));
      return (X) crit.list().get(0);
    }
    
    public String deleteById(int id){
     Session ss = HibernateUtil.getSessionFactory().openSession();
     ss.beginTransaction();
     X item = (X) ss.get(type.getName(), id);
     ss.delete(item);
     ss.getTransaction().commit();
     ss.close();
     return "";
    }
}