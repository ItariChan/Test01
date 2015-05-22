public class Answers {
  //private boolean isCorrect;
  private String answers[];
  
  public Answers(String...a) {
    this.answers = a;
  }
  
  public String toString(int e) {
    return answers [e];
  }
}
