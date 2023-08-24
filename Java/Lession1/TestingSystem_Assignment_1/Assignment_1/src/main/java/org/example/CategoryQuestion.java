package org.example;

public class CategoryQuestion {
    private int CategoryID;
    private String CategoryName;

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int categoryID) {
        CategoryID = categoryID;
    }

    public String getCategoryName() {
        return CategoryName;
    }

    public void setCategoryName(String categoryName) {
        CategoryName = categoryName;
    }
    public CategoryQuestion(){}
    public CategoryQuestion(int CategoryID,String CategoryName){
        this.CategoryID=CategoryID;
        this.CategoryName=CategoryName;
    }
}
