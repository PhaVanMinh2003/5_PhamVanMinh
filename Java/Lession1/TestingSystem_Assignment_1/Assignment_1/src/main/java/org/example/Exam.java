package org.example;

import java.time.LocalDate;

public class Exam {
    private int ExamID;
    private int Code;
    private String Title;
    private CategoryQuestion  Category;
    private int Duration;
    private Account Account;
    private LocalDate CreateDate;

    public int getExamID() {
        return ExamID;
    }

    public void setExamID(int examID) {
        ExamID = examID;
    }

    public int getCode() {
        return Code;
    }

    public void setCode(int code) {
        Code = code;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public CategoryQuestion getCategory() {
        return Category;
    }

    public void setCategory(CategoryQuestion category) {
        Category = category;
    }

    public int getDuration() {
        return Duration;
    }

    public void setDuration(int duration) {
        Duration = duration;
    }

    public org.example.Account getAccount() {
        return Account;
    }

    public void setAccount(org.example.Account account) {
        Account = account;
    }

    public LocalDate getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(LocalDate createDate) {
        CreateDate = createDate;
    }
    public Exam(){}
    public Exam(int ExamID,int Code,String Title,CategoryQuestion  Category,int Duration,Account Account,LocalDate CreateDate){
        this.ExamID=ExamID;
        this.Code=Code;
        this.Title=Title;
        this.Category=Category;
        this.Duration=Duration;
        this.Account=Account;
        this.CreateDate=CreateDate;
    }
}
