/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ShopInventory.domain;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author hp
 */
@Entity
public class Category {
    @Id
  private int id;
  private String name;
  private String description;
    @OneToOne
  private User user;
  private Date createdAt;
    
}
