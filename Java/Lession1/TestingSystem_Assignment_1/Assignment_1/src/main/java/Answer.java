import org.example.Question;

public class Answer {
    private int AnswerID;
    private String Content;
    private Question Question;
    private boolean isCorrect;

    public int getAnswerID() {
        return AnswerID;
    }

    public void setAnswerID(int answerID) {
        AnswerID = answerID;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public org.example.Question getQuestion() {
        return Question;
    }

    public void setQuestion(org.example.Question question) {
        Question = question;
    }

    public boolean getisCorrect() {
        return isCorrect;
    }

    public void setCorrect(boolean correct) {
        isCorrect = correct;
    }
    public Answer(){}
    public Answer(int AnswerID,String Content,Question Question,boolean isCorrect){
        this.AnswerID=AnswerID;
        this.Content=Content;
        this.Question= Question;
        this.isCorrect=isCorrect;
    }
}
