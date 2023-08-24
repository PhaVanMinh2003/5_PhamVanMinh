package org.example;

import java.lang.reflect.Type;
import java.time.LocalDate;

public class Question {
    private int QuestionID;
    private String Content;
    private CategoryQuestion Category;
    private TypeQuestion Type;
    private Account Account;
    private LocalDate CreateDate;

    public int getQuestionID() {
        return QuestionID;
    }

    public void setQuestionID(int questionID) {
        QuestionID = questionID;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public CategoryQuestion getCategory() {
        return Category;
    }

    public void setCategory(CategoryQuestion category) {
        Category = category;
    }

    public TypeQuestion getType() {
        return Type;
    }

    public void setType(TypeQuestion type) {
        Type = type;
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
    public  Question(){}
    public  Question(int QuestionID,String Content,CategoryQuestion Category,TypeQuestion Type,Account Account,LocalDate CreateDate){
        this.QuestionID=QuestionID;
        this.Content=Content;
        this.Category=Category;
        this.Type=Type;
        this.Account= Account;
        this.CreateDate=CreateDate;
    }
}
