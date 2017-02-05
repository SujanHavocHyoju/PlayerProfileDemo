/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.havoc.playerprofile.entity;

/**
 *
 * @author HYOJU
 */
public class Player {
    private int id;
    private String playerName, age, height, weight, position, foot, nationality, club;
    private int attributeId;
    private Boolean status;
    private String image;

    public Player() {
    }

    public Player(int id, String playerName, String age, String height, String weight, String position, String foot, String nationality, String club, int attributeId, Boolean status, String image) {
        this.id = id;
        this.playerName = playerName;
        this.age = age;
        this.height = height;
        this.weight = weight;
        this.position = position;
        this.foot = foot;
        this.nationality = nationality;
        this.club = club;
        this.attributeId = attributeId;
        this.status = status;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }
    

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getFoot() {
        return foot;
    }

    public void setFoot(String foot) {
        this.foot = foot;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public int getAttributeId() {
        return attributeId;
    }

    public void setAttributeId(int attributeId) {
        this.attributeId = attributeId;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Player{" + "id=" + id + ", playerName=" + playerName + ", age=" + age + ", height=" + height + ", weight=" + weight + ", position=" + position + ", foot=" + foot + ", nationality=" + nationality + ", club=" + club + ", attributeId=" + attributeId + ", status=" + status + ", image=" + image + '}';
    }

    
    
    
    
}
