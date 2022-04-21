/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ShopInventory.domain;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author hp
 */
@Entity
public class User {
    @Id
  private int id;
  private String names;
  private String email;
  private String password;
  private Role role;
  private boolean isActive;
  private Date createdAt;  
}
