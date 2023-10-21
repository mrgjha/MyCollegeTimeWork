//=====================================================================
// File:    JCursorTest.java
// Author:  Lien Duong
// Class:   605.201 Introduction to Programming Using Java
// Purpose: Example of setting cursor
//=====================================================================

import java.awt.*; 
import javax.swing.*;
import javax.swing.event.*;

public class JCursorTest extends JCloseableFrame implements ListSelectionListener{
    private String[] CURSORS = { 
	"DEFAULT_CURSOR", 
	"CROSSHAIR_CURSOR", 
	"TEXT_CURSOR", 
	"WAIT_CURSOR", 
	"SW_RESIZE_CURSOR", 
	"SE_RESIZE_CURSOR", 
	"NW_RESIZE_CURSOR", 
	"NE_RESIZE_CURSOR", 
	"N_RESIZE_CURSOR", 
	"S_RESIZE_CURSOR", 
	"W_RESIZE_CURSOR", 
	"E_RESIZE_CURSOR", 
	"HAND_CURSOR", 
	"MOVE_CURSOR",}; 

    private JList list;

    public JCursorTest() {
	super("JCursorTest (Swing)", 200, 100);
	
	list = new JList(CURSORS);

	list.setSelectedIndex(0);
	list.addListSelectionListener(this);

	JScrollPane scrollPane = new JScrollPane(list);
	getContentPane().add(scrollPane);
    }

    public void valueChanged(ListSelectionEvent evt) { 
	setCursor(Cursor.getPredefinedCursor(list.getSelectedIndex())); 
    } 

    public static void main(String [] args) {
	JCursorTest frame = new JCursorTest();
	frame.setVisible(true);
    }
}
