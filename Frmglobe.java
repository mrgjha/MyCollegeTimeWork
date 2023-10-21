import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Frmglobe extends JFrame
{
	private JLabel Label1;
	private JLabel Label5;
	private JLabel Label4;
	private JLabel Label3;
	private JLabel Label2;

	public Frmglobe()
	{
		//Setting up JFrame (Frmglobe)..
		super("WELCOME");
		Container con = getContentPane();
		con.setLayout(null);

		//Setting up JLabel (Label1)..
		Label1 = new JLabel("WELCOME");
		Label1.setBounds(119, 71, 389, 80);
		con.add(Label1);

		//Setting up JLabel (Label5)..
		Label5 = new JLabel("Continue");
		Label5.setBounds(32, 158, 112, 33);
		con.add(Label5);

		//Setting up JLabel (Label4)..
		Label4 = new JLabel("Quit");
		Label4.setBounds(24, 230, 80, 49);
		con.add(Label4);

		//Setting up JLabel (Label3)..
		Label3 = new JLabel();
		Label3.setBounds(16, 222, 167, 33);
		con.add(Label3);

		//Setting up JLabel (Label2)..
		Label2 = new JLabel();
		Label2.setBounds(48, 71, 183, 41);
		con.add(Label2);

		setSize(, );
		setResizable(false);  // Set MAXIMIZE button and Resizing disabled
		setVisible(true);
	}

	public static void main(String args[])
	{
		Frmglobe app = new Frmglobe();
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// TO DO: ...

		// THIS CODE HAS BEEN GENERATED USING: Xtreme VB2J 1.1
		// DEVELOPED BY: Md. Tanzim Saqib
		// Website: www.tanzimsaqib.tk
		// Email: zimHere@gmail.com

	}
}

