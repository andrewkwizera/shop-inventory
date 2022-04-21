/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ShopInventory.domain;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author hp
 */
@Entity
public class Transaction {
   @Id
    private int id;
   private TransacionType type;
   private String description;
   private double unitprice;
   private double quantity;
   
   private double total_price;
   @OneToOne
   private Receipt receipt;
   @OneToOne
   private User user;
   
   @OneToOne
   private Product product;
   
   private boolean isActive;
   
}
