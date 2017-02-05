/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.havoc.playerprofile.controller;


import com.havoc.playerprofile.dao.PlayerDAO;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author HYOJU
 */
@Controller
@RequestMapping(value = "/player")
public class PlayerController {
    
    @Autowired
    PlayerDAO playerDAO;
    @RequestMapping(method = RequestMethod.GET)
    public String index() throws ClassNotFoundException, SQLException{
        
        return "/player/index";
    }
}
