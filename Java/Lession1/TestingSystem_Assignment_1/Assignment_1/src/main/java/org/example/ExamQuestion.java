package org.example;

public class ExamQuestion {
    private Exam Exam;
    private Question Question;

    public org.example.Exam getExam() {
        return Exam;
    }

    public void setExam(org.example.Exam exam) {
        Exam = exam;
    }

    public org.example.Question getQuestion() {
        return Question;
    }

    public void setQuestion(org.example.Question question) {
        Question = question;
    }
    public ExamQuestion(){}
    public ExamQuestion(Exam Exam,Question Question){
        this.Exam= Exam;
    this.Question= Question;
    }
}
