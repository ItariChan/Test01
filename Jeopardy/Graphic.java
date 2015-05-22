// Sonia Liu

import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Font;
import java.awt.TextField;
import java.awt.event.MouseListener;
import java.awt.event.MouseEvent;
import java.awt.event.KeyListener;
import java.awt.event.KeyEvent;

public class Graphic extends Applet implements KeyListener, MouseListener {
  //Graphics a = null;
  int score = 0;
  String s = Integer.toString(score);
  String displayQuestion = "Select a category to begin";
  String answer = "";
  String result = "";
  String t = "humanism";
  TextField response = new TextField(40);
  public int xpos,ypos;
  
  
  //Questions and Answers Array
    Questions qRen = new Questions("This belief stresses education, intellect, and individualism. The emphasis is on the \n unique and creative personality. Focus on human behavior and emotions.",
                                  "This man is called the father of humanism. He also wrote Love Letters to Laura.",
                                  "This statue, created by Donatello, focused on the beauty of the male body and was unique from Middle Age art in that it applied the use of perspective.",
                                  "This fresco, painted by Raphael, focused on the Cult of Knowledge. It applied perspective, \n individualism, and classicism. Apparent were gerat scientist and philosophers of the Classical era in addition to some of the Renaissance.",
                                  "Written by Niccolo Machiavelli, this work is considered the handbook of modern \npolitical science. It was written for the Medici family and revolutionized politics \nby describing methods to obtain power.");
    Questions qNewMon = new Questions ("This king received the title \"Defender of the Faith\" which he maintained even after from breaking from the Catholic Church to establish the Anglican Church.",
                                     "This act was passed by Henry VIII in order to establish the Church of England, giving Henry the opportunity to divorce Catherine of Argon and marry the lady-in-waiting Anne Boleyn.",
                                     "Henry VII established this court in order to try nobles without a jury.",
                                     "This French monarch held the nickname \"The Spider King\". He signed the Peace of the Merchants with the nobles, alienating them and eventually consolidating his power through taking many nobles' land.",
                                     "Under these Spanish monarchs the Hermandades was establish, which funcioned similarly to the Star Champer Court. The Spanish Inquisition also began their authority. _____ and _____");
    Questions qAbs = new Questions ("This notion, advocated by Absolutist rulers, declares that God has granted the monarch the right to rule.",
                                  "Established under Cardinal Richeliu, these informants alerted the monarch when his authority was being questioned by others.",
                                  "This was te last major religious war between Catholics and Protestants. France entered the war on the side of the Prtestants.",
                                  "This was an attempt by the nobles to kill 5 yr old Louis XIV which ultimately failed, leading to Louis's lifelong distast of the nobility.",
                                  "This English monarch wrote the True Law of Free Monarchy to suggest the divine nature of the King.");
    Questions qEnli = new Questions ("This belief, which formed the foundation of the Englightenment, proposed that natural processes can explain most.",
                                  "This type of economy is defiend by a lack of market regulation.",
                                  "This French philophe wrote Spirit of the Laws, which put forth the notion of the Separation of Powers uder government into the executive, legislative and judicial branches",
                                  "Rousseau argued that the best form of government is a commenwealth (democracy) in which the people gave their natural rights to each other and fused their wills into a combined gernal will, or agreement among the people.",
                                  "This economist wrote the Wealth of Nations, in which he argued that the source of a nation's true wealth is in itsproduction and consumption of goods. He also advocatedfor the Invisible Hand, in which the market wouldregulate itself, and a laissez-fair economy");
    Questions qFrenRev = new Questions ("This group in the Estates General constituted 1% of membership, yet owned 10% of French land and was exempt from taxes",
                                  "Under this law, peasants still had to pay rent to a local lord even though he owned his land.",
                                  "This man wrote what it What is the Third Estate, in which he argued that the third estate was everything, yet has had no representation in the political order.",
                                  "These laws passed under the National Assembly, declared that the tax exempt status of nobles was abolished, allpositions of authority were deemed available to all citizens without distinction of birth, and church tithes and feudal dues were abolished.",
                                  "This bourgeoisie, Jacobin leader dominated the Republic and took control of France.");
    Answers aRen = new Answers ("humanism",
                                "petrarch",
                                "david",
                                "school of athens",
                                "the prince");
    Answers aNewMon = new Answers ("henry viii",
                                "act of supremacy",
                                "star chamber court",
                                "louis xi",
                                "ferdinand and isabella");
    Answers aAbs = new Answers ("divine right",
                                "intendants",
                                "thirty years war",
                                "fronde",
                                "james i");
    Answers aEnli = new Answers ("natural law",
                                "laissez-faire",
                                "montesqueieu",
                                "social contract",
                                "adam smith");
    Answers aFrenRev = new Answers ("church",
                                "eminent domain",
                                "abbey sieyes",
                                "august decrees",
                                "robespierre");
    
  public void init () { 
    setSize(550,750);
    setBackground(Color.blue);
    //setlayout(null);
    response.setBounds(10,50,20,30);
    response.addKeyListener(this);
    addMouseListener(this);
    this.add(response);
  }
  
  // split string
  private void drawString(Graphics g, String text, int x, int y) {
                for (String line : text.split("\n"))
                    g.drawString(line, x, y += g.getFontMetrics().getHeight());
            }
  
  public void paint (Graphics a) {
    a.setColor(Color.black);
    //title rectangle
    a.drawRect(10,30,500,760);
    //categories
    a.drawRect(10,140,500,50);
    //small separating rectangle
    a.drawRect(10,30,500,100);
    //first two rows
    a.drawRect(10,190,500,100);
    //2nd/3rd row
    a.drawRect(10,390,500,100);
    //4th/5th row
    a.drawRect(10,590,500,100);
    //columns
    a.drawRect(110,140,100,550);
    a.drawRect(310,140,100,550);
    
    // Casey Trout
    
    // Add text for title
    Font titleFont = new Font("Goudy Stout", Font.PLAIN, 20);
    a.setFont(titleFont);
    drawString(a, "Welcome to\n    European History\n       Jeopardy", 20, 40);
    
    // Add text for categories
    Font catFont = new Font("Poplar Std", Font.PLAIN, 20);
    a.setFont(catFont);
    a.drawString("Renaissance", 20, 170);
    a.drawString("New Monarchies", 120, 170);
    a.drawString("Absolutism", 220, 170);
    a.drawString("Enlightenment", 320, 170);
    a.drawString("French Revolution", 420, 170);
    
    // Add text for bet amount
    Font betFont = new Font("Times New Roman", Font.BOLD, 40);
    a.setFont(betFont);
    for(int i = 20; i < 421; i+=100) {
      a.drawString("$100", i, 250);
      a.drawString("$200", i, 350);
      a.drawString("$300", i, 450);
      a.drawString("$400", i, 550);
      a.drawString("$500", i, 650);
    }
    
    // Add text for instructions
    Font question = new Font("Times New Roman", Font.PLAIN, 14);
    a.setFont(question);
    drawString(a, displayQuestion, 20, 700);
    drawString(a,result,20,750);
    
    // Sonia Liu
    
    //text for point values
    /*Font sFont = new Font ("Mongolian Baiti", Font.PLAIN, 14);
    a.setFont(sFont);
    a.drawString(s, 440, 120); */
  }
  
  // detects mouse click
  public void mousePressed (MouseEvent e) {}
  public void mouseReleased (MouseEvent e) {}
  public void mouseClicked (MouseEvent e) {
    xpos = e.getX();
    ypos = e.getY();
   //clickButton();
   if(xpos>=10 && xpos<=110 && ypos>=190 && ypos<=290) {
        displayQuestion = qRen.toString(0);
      } else {
        displayQuestion = "Select a category to begin.";
      }
      repaint();
  
    /*for(int i=1; i<5; i++) {
      if(xpos>=10 && xpos<=110 && ypos>=100*i+90 && ypos<=100*i+190) {
        displayQuestion = qRen.toString(i-1);
      } else {
        displayQuestion = "Select a category to begin.";
      }
      repaint();
    }*/
  }
  
  public void mouseEntered (MouseEvent e) {}
  public void mouseExited (MouseEvent e) {}
  public void mouseMoved(MouseEvent e) {}
  public void mouseDragged(MouseEvent e) {}
  
  /*public void clickButton() {
    for(int i=1; i<5; i++) {
      if(xpos>=10 && xpos<=110 && ypos>=100*i+90 && ypos<=100*i+190) {
        displayQuestion = qRen.toString(i-1);
      } else {
        displayQuestion = "Select a category to begin.";
      }
    }
    repaint();
  }*/
  
  // Casey Trout
  
  // detects user response to anwer question
  public void keyPressed(KeyEvent event) {
    int key = event.getKeyCode();
    if (key == KeyEvent.VK_ENTER) {
      // sets "answer" to the user's response
      answer = response.getText();
      answer = answer.toLowerCase();
      //System.out.println(answer);
    } 
     if(answer.equals(aRen.toString(0))) {
      result="Congratulations! You are correct!";
    } else {
      result = "";
    }
    repaint();
  }
  public void keyReleased(KeyEvent event) {}
  public void keyTyped(KeyEvent event){}
}
