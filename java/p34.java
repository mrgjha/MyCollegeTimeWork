

<html>
<head>
</head>

<body background="MEDAQUA.gif" text="black" link="white" vlink="#FFFF00">
<b>

<pre>

&lt;HTML&gt;&lt;HEAD&gt;&lt;/HEAD&gt;
  &lt;BODY&gt;
    &lt;APPLET
        CODE     = "MyjavaApplet.class"
        WIDTH    = 400
        HEIGHT   = 300&gt;
        
    &lt;/APPLET&gt;
  &lt;/BODY&gt;
&lt;/HTML&gt;



// MyjavaApplet.java: draws rectangle with yellow color fill
import java.applet.*;
import java.awt.*;
public class MyjavaApplet extends Applet
{
   public synchronized void paint(Graphics g)
   {
      int x,y,width,height;
      Dimension dm = size();
      x = dm.width/4;
      y = dm.height / 4;
      width = dm.width / 2;
      height = dm.height / 2;
      // Draw the rectangle in the center with colors!
      g.setColor(Color.blue);
      g.drawRect(x,y,width,height);
      g.setColor(Color.yellow);
      g.fillRect(x + 1,y + 1,width - 2,height - 2);
   }
}



</pre>

<center><A HREF=Javascript:history.go(-1)><img src=previous.gif width="89" height="16"></A></center>
</b>
</body>
</html>

