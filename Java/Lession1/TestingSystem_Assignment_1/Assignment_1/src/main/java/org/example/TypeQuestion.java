package org.example;

public class TypeQuestion {
    private int TypeID;
    private String TypeName;

    public int getTypeID() {
        return TypeID;
    }

    public void setTypeID(int typeID) {
        TypeID = typeID;
    }

    public String getTypeName() {
        return TypeName;
    }

    public void setTypeName(String typeName) {
        TypeName = typeName;
    }
    public TypeQuestion(){}
    public TypeQuestion(int TypeID,String TypeName){
        this.TypeID=TypeID;
        this.TypeName=TypeName;
    }
}
