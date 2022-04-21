
import com.ShopInventory.domain.HibernateUtil;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */
public class Test {
    public static void main(String[] args) {
        HibernateUtil.getSessionFactory().openSession().beginTransaction();
    }
}
