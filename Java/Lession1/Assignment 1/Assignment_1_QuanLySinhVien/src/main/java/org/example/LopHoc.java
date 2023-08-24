package org.example;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
public class LopHoc  {
    private String maLop;
    private String className;
    private String monHoc;
    private String thoiGianHoc;
    private int soLuongSVDK;

    public String getMaLop() {
        return maLop;
    }

    public void setMaLop(String maLop) {
        this.maLop = maLop;
    }
    public String getClassName(){
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getMonHoc() {
        return monHoc;
    }

    public void setMonHoc(String monHoc) {
        this.monHoc = monHoc;
    }

    public String getThoiGianHoc() {
        return thoiGianHoc;
    }

    public void setThoiGianHoc(String thoiGianHoc) {
        this.thoiGianHoc = thoiGianHoc;
    }

    public int getSoLuongSVDK() {
        return soLuongSVDK;
    }

    public void setSoLuongSVDK(int soLuongSVDK) {
        this.soLuongSVDK = soLuongSVDK;
    }
    public LopHoc(){}
    public LopHoc(String maLop,String className,String monHoc,String thoiGianHoc,int soLuongSVDK){
        this.maLop=maLop;
        this.className=className;
        this.monHoc=monHoc;
        this.thoiGianHoc=thoiGianHoc;
        this.soLuongSVDK=soLuongSVDK;
    }
    public void NhapDL() throws NumberFormatException, IOException {
        InputStreamReader readData = new InputStreamReader(System.in);
        BufferedReader dataRecording = new BufferedReader(readData);
        System.out.println("Nhập Mã Lớp:");
        this.maLop = dataRecording.readLine();
        System.out.println("Nhập tên Lớp:");
        this.className = dataRecording.readLine();
        System.out.println("Nhập môn Học:");
        this.monHoc = dataRecording.readLine();
        System.out.println("Nhập Thời gian học:");
        this.thoiGianHoc = dataRecording.readLine();
        System.out.println("Nhập số lượng sinh viên đăng kí:");
        this.soLuongSVDK = Integer.parseInt(dataRecording.readLine());
    }
    //method overide
    public void Display(){
        System.out.println("Mã lớp: "+maLop);
        System.out.println("Tên  lớp: "+className);
        System.out.println("Môn Học: "+monHoc);
        System.out.println("Thời gian học: "+thoiGianHoc);
        System.out.println("Số lượng sinh viên đăng kí: "+soLuongSVDK);
    }
}
