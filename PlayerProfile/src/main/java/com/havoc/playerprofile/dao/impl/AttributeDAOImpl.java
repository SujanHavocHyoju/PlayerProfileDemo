/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.havoc.playerprofile.dao.impl;

import com.havoc.playerprofile.dao.AttributeDAO;
import com.havoc.playerprofile.dao.PlayerDAO;
import com.havoc.playerprofile.entity.Attribute;
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
@Repository(value = "attributeDAO")
public class AttributeDAOImpl implements AttributeDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public Attribute getById(int id) throws ClassNotFoundException, SQLException{
        String sql = "SELECT * FROM tbl_attribute WHERE attribute_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Attribute>() {

            @Override
            public Attribute mapRow(ResultSet rs, int i) throws SQLException {
                Attribute a = new Attribute();
                a.setId(rs.getInt("attribute_id"));
                a.setPlayerName(rs.getString("player_name"));
                a.setSprintSpeed(rs.getInt("sprint_speed"));
                a.setAcceleration(rs.getInt("acceleration"));
                a.setFinishing(rs.getInt("finishing"));
                a.setShotPower(rs.getInt("shot_power"));
                a.setHeading(rs.getInt("heading"));
                a.setPositioning(rs.getInt("positioning"));
                a.setBallControll(rs.getInt("ball_controll"));
                a.setDribbling(rs.getInt("dribbling"));
                a.setReaction(rs.getInt("reaction"));
                a.setFreeKick(rs.getInt("free_kick"));
                a.setCrossing(rs.getInt("crossing"));
                a.setShortPassing(rs.getInt("short_passing"));
                a.setLongPassing(rs.getInt("long_passing"));
                a.setMarking(rs.getInt("marking"));
                a.setTackling(rs.getInt("tackling"));
                a.setReflexes(rs.getInt("reflexes"));
                a.setDiving(rs.getInt("diving"));
                a.setHandling(rs.getInt("handling"));
                a.setStrength(rs.getInt("strength"));
                a.setAggression(rs.getInt("aggression"));
                a.setAwareness(rs.getInt("awareness"));
                a.setAddedDate(rs.getDate("added_date"));
                a.setStatus(rs.getBoolean("status"));
                return a;
            }
        });

    }
}
