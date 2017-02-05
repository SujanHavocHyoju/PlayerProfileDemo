/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.havoc.playerprofile.dao.impl;

import com.havoc.playerprofile.dao.PlayerDAO;
import com.havoc.playerprofile.entity.Player;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HYOJU
 */
@Repository(value = "playerDAO")
public class PlayerDAOImpl implements PlayerDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Player> getAll() throws ClassNotFoundException, SQLException{
        String sql = "SELECT * FROM tbl_players";
        return jdbcTemplate.query(sql, new RowMapper<Player>() {

            @Override
            public Player mapRow(ResultSet rs, int i) throws SQLException {
                Player p = new Player();
                p.setId(rs.getInt("player_id"));
                p.setPlayerName(rs.getString("player_name"));
                p.setAge(rs.getString("age"));
                p.setHeight(rs.getString("height"));
                p.setWeight(rs.getString("weight"));
                p.setPosition(rs.getString("position"));
                p.setFoot(rs.getString("foot"));
                p.setNationality(rs.getString("nationality"));
                p.setClub(rs.getString("club"));
                p.setAttributeId(rs.getInt("attribute_id"));
                p.setStatus(rs.getBoolean("status"));
                p.setImage(rs.getString("image"));
                return p;
            }
        });
    }

    @Override
    public Player getById(int id) throws ClassNotFoundException, SQLException{
        String sql = "SELECT * FROM tbl_players WHERE attribute_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Player>() {

            @Override
            public Player mapRow(ResultSet rs, int i) throws SQLException {
                Player p = new Player();
                p.setId(rs.getInt("attribute_id"));
                p.setPlayerName(rs.getString("player_name"));
                p.setAge(rs.getString("age"));
                p.setHeight(rs.getString("height"));
                p.setWeight(rs.getString("weight"));
                p.setPosition(rs.getString("position"));
                p.setFoot(rs.getString("foot"));
                p.setNationality(rs.getString("nationality"));
                p.setClub(rs.getString("club"));
                p.setAttributeId(rs.getInt("attributeId"));
                p.setStatus(rs.getBoolean("status"));
                p.setImage(rs.getString("image"));
                return p;
            }
        });

    }
}
