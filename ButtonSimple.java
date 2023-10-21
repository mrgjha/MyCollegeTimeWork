import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ButtonSimple extends javax.swing.JFrame implements ActionListener {
    //constructor - initializes all the necessary components
    public ButtonSimple() {
        cont = getContentPane();
        cont.setLayout( new FlowLayout() ); 
        b1 = new JButton("Roll");
        jl = new JLabel("No button pushed");
        cont.add(b1);
        cont.add(jl);
        
        b1.addActionListener(this);
        this.setSize(300, 400);
    }
    
  
    public static void main(String args[]) {
        //instantiate the ButtonSimple object:
        ButtonSimple but = new ButtonSimple();
        but.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        but.show();
       
    }
    
    public void actionPerformed(java.awt.event.ActionEvent actionEvent) {
        //upon clicking the button:
        jl.setText("You pressed the Roll button");
    }    
    
    // Variables declaration 
      private JButton b1;
      private Container cont;
      private JLabel jl;
}
