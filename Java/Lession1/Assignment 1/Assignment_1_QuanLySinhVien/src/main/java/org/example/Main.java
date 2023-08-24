package org.example;
import  java.util.*;
import java.io.IOException;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) throws IOException {
        System.out.println("Nhập thông tin sinh viên vào nhé bé ơi");
        Student student=new Student();
        try {
            student.NhapDL();
            student.NhapDLThoigian();
            student.Display();
        } catch (IOException e) {
            e.printStackTrace();
        }
        /*
        Teacher teacher=new Teacher();
        teacher.NhapDL();
        teacher.NhapDLThoigian();
        teacher.display();
        LopHoc lopHoc=new LopHoc();
        lopHoc.NhapDL();
        lopHoc.Display();*/

    }
}