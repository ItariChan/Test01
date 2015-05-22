public class Questions {
  private String questions[];
  
  public Questions(String...q) {
    this.questions = q;
  }
  
  public String toString(int e) {
    return questions [e];
  }
}
