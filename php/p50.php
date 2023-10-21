<html>
<head><title>Hello World</title></head>

<body background="MEDAQUA.gif" text="black">
<pre>
<b>
&lt;?php
$firstvisit = !isset($_COOKIE['beenherebefore']);
if ($firstvisit)
setcookie('beenherebefore','yes');
?&gt;
&lt;html&gt;
&lt;body&gt;
&lt;p&gt;
&lt;?php
if ($firstvisit)
echo "Hello";
else
echo "Welcome back";


/* setcookie must be called before any output
this sets a session cookie, use
setcookie('beenherebefore','yes',
time()+31557600); to set a yearlong permanent one
unreliable to use $_COOKIE after a setcookie */


?&gt;
&lt;/p&gt;
&lt;/body&gt;


</b>
<center><A HREF=Javascript:history.go(-1)><img src=previous.gif width="89" height="16"></A></center>

</pre>
</body>
</html>

&lt;/html&gt;

