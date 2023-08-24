package org.example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
public class Student extends Member_Information {
    private  String MSSV;
    public String getMSSV() {
        return MSSV;
    }
    public void setMSSV(String MSSV) {
        this.MSSV = MSSV;
    }
    //contractor không tham số
    public Student(){}
    //contractor tham số
    private Student(String Name,String Age,String Home_town,String MSSV){
        super (Name,Age,Home_town);
        this.MSSV=MSSV;
    }
    public void NhapDL() throws NumberFormatException, IOException {
        InputStreamReader readData = new InputStreamReader(System.in);
        BufferedReader dataRecording = new BufferedReader(readData);
        System.out.println("Nhập Mã số sinh viên :");
        this.MSSV=dataRecording.readLine();
        System.out.println("Nhập tên :");
        super.setName(dataRecording.readLine());
        System.out.println("Nhập quê quán");
        super.setHome_town(dataRecording.readLine());
        dataRecording.close();
    }

    public LocalDate NhapDLThoigian() throws NumberFormatException, IOException{
        InputStreamReader readData=new InputStreamReader(System.in);
        BufferedReader dataRecording =new BufferedReader(readData);
        System.out.println("Nhập ngày tháng năm sinh theo dd/MM/yyyy:");
        super.setAge(dataRecording.readLine());
        DateTimeFormatter formatter= DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate Date=LocalDate.parse(super.getAge(),formatter);
        return Date;

    }
    //method overide
    public void Display() throws IOException {
        LocalDate Date =NhapDLThoigian();
        System.out.println("Ngày tháng năm sinh: "+Date.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
        System.out.println("Tên: "+super.getName());
        System.out.println("Mã số sinh viên: "+MSSV);
        System.out.println("quê quán: "+super.getHome_town());


    }
}


