import java.awt.*;
import javax.swing.JApplet;
public class AppletWithParams extends JApplet {
  String someText;
  public String myGetParameter(String key, 
                             String def) {
    return (getParameter(key) != null ?           
		getParameter(key) : def);
  } // myGetParameter
  public void init() {
      someText = myGetParameter("someText", 
                 "You can change this text!");
  } // init
  public void paint(Graphics g) {
    g.drawString(someText, 100, 200);
  } // paint
} // AppletWithParams
