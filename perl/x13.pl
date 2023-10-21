#! /usr/bin/perl


startbit();

print "This is a web page";

print "<P> I am doing something";

stopbit();


sub startbit

{

print "Content-Type: text/html\n\n";

print "<HTML><HEAD><TITLE>This is my webpage</TITLE></HEAD><BODY leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>";

print "<IMG border=0 src=\"Pi-ra1.jpg\"><IMG border=0 src=\"Pi-Ra.jpg\" width=100% height=100%><P>\n\n\n";

}

sub stopbit

{

print "<SMALL><CENTER>Copywrite 2001, Ashley Harris</CENTER></SMALL><P></BODY></HTML>";

}

1;

