package org.example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
public class Teacher extends Member_Information {
    private float luong;
    public float getLuong(){
        return luong;
    }
    public void setLuong(float luong) {
        this.luong = luong;
    }
    public  Teacher(){}
    public  Teacher(String Name,String Age,String Home_town,float luong){
        super(Name,Age,Home_town);
        this.luong=luong;
    }
    //method overide
    public void NhapDL() throws NumberFormatException, IOException {
        InputStreamReader readData = new InputStreamReader(System.in);
        BufferedReader dataRecording = new BufferedReader(readData);
        System.out.println("Nhập Lương :");
        this.luong=Float.parseFloat(dataRecording.readLine());
    }
    public void Display(){
        System.out.println("Lương của giáo viên: "+luong);
    }
}
