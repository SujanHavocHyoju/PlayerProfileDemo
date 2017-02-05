/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.havoc.playerprofile.dao;

import com.havoc.playerprofile.entity.Player;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author HYOJU
 */
public interface PlayerDAO {
    List<Player> getAll() throws ClassNotFoundException, SQLException;
    Player getById(int id) throws ClassNotFoundException, SQLException;
}
