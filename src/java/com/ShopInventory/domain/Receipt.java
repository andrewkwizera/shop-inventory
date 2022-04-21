/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ShopInventory.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author hp
 */
@Entity
public class Receipt {
    @Id
    private String id;
}
