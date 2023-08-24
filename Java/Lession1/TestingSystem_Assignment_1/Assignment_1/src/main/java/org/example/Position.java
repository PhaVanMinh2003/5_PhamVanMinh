package org.example;

public class Position {
    private int PositionID;
    private String PositionName;

    public int getPositionID() {
        return PositionID;
    }

    public void setPositionID(int positionID) {
        PositionID = positionID;
    }

    public String getPositionName() {
        return PositionName;
    }

    public void setPositionName(String positionName) {
        PositionName = positionName;
    }
    public Position(){}
    public Position(int PositionID,String PositionName){
        this.PositionID=PositionID;
        this.PositionName=PositionName;}
}
