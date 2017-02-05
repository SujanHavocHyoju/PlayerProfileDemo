/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.havoc.playerprofile.entity;

import java.util.Date;

/**
 *
 * @author HYOJU
 */
public class Attribute {
    private int id;
    private String playerName;
    private int sprintSpeed, acceleration, finishing, shotPower, heading, positioning;
    private int ballControll, dribbling, reaction, freeKick, crossing, shortPassing, longPassing;
    private int marking, tackling, reflexes, diving, handling, strength, aggression , awareness;
    private Date addedDate;
    private Boolean status;

    public Attribute() {
    }

    public Attribute(int id, String playerName, int sprintSpeed, int acceleration, int finishing, int shotPower, int heading, int positioning, int ballControll, int dribbling, int reaction, int freeKick, int crossing, int shortPassing, int longPassing, int marking, int tackling, int reflexes, int diving, int handling, int strength, int aggression, int awareness, Date addedDate, Boolean status) {
        this.id = id;
        this.playerName = playerName;
        this.sprintSpeed = sprintSpeed;
        this.acceleration = acceleration;
        this.finishing = finishing;
        this.shotPower = shotPower;
        this.heading = heading;
        this.positioning = positioning;
        this.ballControll = ballControll;
        this.dribbling = dribbling;
        this.reaction = reaction;
        this.freeKick = freeKick;
        this.crossing = crossing;
        this.shortPassing = shortPassing;
        this.longPassing = longPassing;
        this.marking = marking;
        this.tackling = tackling;
        this.reflexes = reflexes;
        this.diving = diving;
        this.handling = handling;
        this.strength = strength;
        this.aggression = aggression;
        this.awareness = awareness;
        this.addedDate = addedDate;
        this.status = status;
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

    public int getSprintSpeed() {
        return sprintSpeed;
    }

    public void setSprintSpeed(int sprintSpeed) {
        this.sprintSpeed = sprintSpeed;
    }

    public int getAcceleration() {
        return acceleration;
    }

    public void setAcceleration(int acceleration) {
        this.acceleration = acceleration;
    }

    public int getFinishing() {
        return finishing;
    }

    public void setFinishing(int finishing) {
        this.finishing = finishing;
    }

    public int getShotPower() {
        return shotPower;
    }

    public void setShotPower(int shotPower) {
        this.shotPower = shotPower;
    }

    public int getHeading() {
        return heading;
    }

    public void setHeading(int heading) {
        this.heading = heading;
    }

    public int getPositioning() {
        return positioning;
    }

    public void setPositioning(int positioning) {
        this.positioning = positioning;
    }

    public int getBallControll() {
        return ballControll;
    }

    public void setBallControll(int ballControll) {
        this.ballControll = ballControll;
    }

    public int getDribbling() {
        return dribbling;
    }

    public void setDribbling(int dribbling) {
        this.dribbling = dribbling;
    }

    public int getReaction() {
        return reaction;
    }

    public void setReaction(int reaction) {
        this.reaction = reaction;
    }

    public int getFreeKick() {
        return freeKick;
    }

    public void setFreeKick(int freeKick) {
        this.freeKick = freeKick;
    }

    public int getCrossing() {
        return crossing;
    }

    public void setCrossing(int crossing) {
        this.crossing = crossing;
    }

    public int getShortPassing() {
        return shortPassing;
    }

    public void setShortPassing(int shortPassing) {
        this.shortPassing = shortPassing;
    }

    public int getLongPassing() {
        return longPassing;
    }

    public void setLongPassing(int longPassing) {
        this.longPassing = longPassing;
    }

    public int getMarking() {
        return marking;
    }

    public void setMarking(int marking) {
        this.marking = marking;
    }

    public int getTackling() {
        return tackling;
    }

    public void setTackling(int tackling) {
        this.tackling = tackling;
    }

    public int getReflexes() {
        return reflexes;
    }

    public void setReflexes(int reflexes) {
        this.reflexes = reflexes;
    }

    public int getDiving() {
        return diving;
    }

    public void setDiving(int diving) {
        this.diving = diving;
    }

    public int getHandling() {
        return handling;
    }

    public void setHandling(int handling) {
        this.handling = handling;
    }

    public int getStrength() {
        return strength;
    }

    public void setStrength(int strength) {
        this.strength = strength;
    }

    public int getAggression() {
        return aggression;
    }

    public void setAggression(int aggression) {
        this.aggression = aggression;
    }

    public int getAwareness() {
        return awareness;
    }

    public void setAwareness(int awareness) {
        this.awareness = awareness;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Attribute{" + "id=" + id + ", playerName=" + playerName + ", sprintSpeed=" + sprintSpeed + ", acceleration=" + acceleration + ", finishing=" + finishing + ", shotPower=" + shotPower + ", heading=" + heading + ", positioning=" + positioning + ", ballControll=" + ballControll + ", dribbling=" + dribbling + ", reaction=" + reaction + ", freeKick=" + freeKick + ", crossing=" + crossing + ", shortPassing=" + shortPassing + ", longPassing=" + longPassing + ", marking=" + marking + ", tackling=" + tackling + ", reflexes=" + reflexes + ", diving=" + diving + ", handling=" + handling + ", strength=" + strength + ", aggression=" + aggression + ", awareness=" + awareness + ", addedDate=" + addedDate + ", status=" + status + '}';
    }
    
    
    
}
