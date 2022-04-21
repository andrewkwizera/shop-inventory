/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ShopInventory.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author hp
 */
@Entity
public class Product {
    @Id
   private int id;
   private String  name;
   private byte [] image;
   private String text;
   private double buyingPrice;
   private double sellingPrice;
   private String currency;
   @OneToOne
   private User user;
   @OneToOne
   private Category category;    
   private boolean isActive;
   
   
}
