/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.havoc.playerprofile.dao;

import com.havoc.playerprofile.entity.Attribute;
import java.sql.SQLException;

/**
 *
 * @author HYOJU
 */
public interface AttributeDAO {
    
    Attribute getById(int id) throws ClassNotFoundException, SQLException;
}
