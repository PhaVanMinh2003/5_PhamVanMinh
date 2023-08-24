package org.example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Member_Information {
    private String Name;
    private String Age;
    private String Home_town;

    public String getName() {
        return Name;
    }
    public void setName(String Name) {
        this.Name = Name;
    }
    public String getAge(){
        return Age;
    }
    public void setAge(String Age){
        this.Age=Age;
    }
    public String getHome_town(){
        return Home_town;
    }
    public void setHome_town(String Home_town){
        this.Home_town=Home_town;
    }
    //contractor không có tham số
    public Member_Information(){}
    //contractor có tham số
    public Member_Information(String Name,String Age,String Home_town){
        this.Name=Name;
        this.Age=Age;
        this.Home_town=Home_town;
    }

}