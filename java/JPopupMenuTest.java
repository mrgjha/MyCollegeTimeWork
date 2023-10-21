import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class JPopupMenuTest extends JCloseableFrame {
    private JPopupMenu popupMenu;

    public JPopupMenuTest() {
	super("JPopupMenuTest (Swing)", 240, 100);

	popupMenu = new JPopupMenu();
	popupMenu.add(JMenuItemTest.createFileMenu());

	addMouseListener(new MouseAdapter() {
	    public void mouseClicked(MouseEvent event) {
		popupMenu.show((JPopupMenuTest)event.getSource(), 
			       event.getX(), event.getY());
	    }
	});
    }

    public static void main(String [] args) {
	JPopupMenuTest frame = new JPopupMenuTest();
	frame.setVisible(true);
    }
}
	
