


#! /usr/bin/perl


require 'cgi-lib.pl';

if (ReadParse(*in))

{

$name = $in{name};

$email = $in{email};

print "Content-type: text/html\n\n";

print "<HTML><HEAD><TITLE>THANKYOU</TITLE></HEAD></BODY>";

print "Your name is $name and your email address is $email";

print "</BODY></HTML>";

}

else

{

print "Content-Type: text/html\n\n";

print "<HTML><HEAD><TITLE>PLEASE ENTER YOUR NAME AND EMAIL TO CONTINUE</TITLE></HEAD><BODY>\n";

print "<FORM method=get><Input type=text name=email> Email address<BR>\n";

print "<INPUT type=text name=name> NAME<BR>\n";

print "<INPUT type=submit></FORM></BODY></HTML>";

}

