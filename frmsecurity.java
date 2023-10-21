import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class frmsecurity extends JFrame
{
	private JButton cmdchangepassword;
	private JTextField Text1;
	private JPasswordField Text1;
	private JButton cmdlogin;
	private JButton cmdcancel;
	private JLabel Label4;
	private JLabel Label3;
	private JLabel Label2;
	private JLabel Label1;
	private JLabel Label1;
	private JLabel Label5;
	private JLabel Label6;

	public frmsecurity()
	{
		//Setting up JFrame (frmsecurity)..
		super("SECURITY");
		Container con = getContentPane();
		con.setLayout(null);

		//Setting up JButton (cmdchangepassword)..
		cmdchangepassword = new JButton("CHANGE PASSWORD");
		cmdchangepassword.setBounds(111, 158, 175, 25);
		cmdchangepassword.setDisplayedMnemonicIndex(7);
		cmdchangepassword.setMnemonic('P');
		con.add(cmdchangepassword);

		//Setting up JTextField (Text1)..
		Text1 = new JTextField();
		Text1.setBounds(119, 40, 167, 26);
		con.add(Text1);

		//Setting up JPasswordField (Text1)..
		Text1 = new JPasswordField();
		Text1.setBounds(119, 79, 167, 26);
		con.add(Text1);

		//Setting up JButton (cmdlogin)..
		cmdlogin = new JButton("LOGIN");
		cmdlogin.setBounds(16, 119, 96, 25);
		cmdlogin.setDisplayedMnemonicIndex(0);
		cmdlogin.setMnemonic('L');
		con.add(cmdlogin);

		//Setting up JButton (cmdcancel)..
		cmdcancel = new JButton("CANCEL");
		cmdcancel.setBounds(198, 119, 88, 25);
		cmdcancel.setDisplayedMnemonicIndex(0);
		cmdcancel.setMnemonic('C');
		con.add(cmdcancel);

		//Setting up JLabel (Label4)..
		Label4 = new JLabel();
		Label4.setBounds(103, 166, 183, 25);
		con.add(Label4);

		//Setting up JLabel (Label3)..
		Label3 = new JLabel();
		Label3.setBounds(190, 127, 96, 25);
		con.add(Label3);

		//Setting up JLabel (Label2)..
		Label2 = new JLabel();
		Label2.setBounds(8, 127, 104, 25);
		con.add(Label2);

		//Setting up JLabel (Label1)..
		Label1 = new JLabel("UID:");
		Label1.setBounds(16, 40, 96, 25);
		con.add(Label1);

		//Setting up JLabel (Label1)..
		Label1 = new JLabel("PASSWORD:");
		Label1.setBounds(16, 79, 96, 25);
		con.add(Label1);

		//Setting up JLabel (Label5)..
		Label5 = new JLabel();
		Label5.setBounds(8, 48, 104, 25);
		con.add(Label5);

		//Setting up JLabel (Label6)..
		Label6 = new JLabel();
		Label6.setBounds(8, 87, 104, 25);
		con.add(Label6);

		setSize(309, 211);
		setResizable(false);  // Set MAXIMIZE button and Resizing disabled
		setVisible(true);
	}

	public static void main(String args[])
	{
		frmsecurity app = new frmsecurity();
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// TO DO: ...

		// THIS CODE HAS BEEN GENERATED USING: Xtreme VB2J 1.1
		// DEVELOPED BY: Md. Tanzim Saqib
		// Website: www.tanzimsaqib.tk
		// Email: zimHere@gmail.com

	}
}

