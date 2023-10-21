#!/usr/bin/perl

$adrevenue=100;
$my_stomach='full';
$full_sentence="My stomach feels $my_stomach.";

print "Content-type: text/html\n\n";
print <<ENDHTML;
<HTML>
<HEAD>
<TITLE>Perl Variable Test</TITLE>
</HEAD>
<BODY>
I wish I could make $adrevenue dollars a day from my web site!
<P>
$full_sentence
</BODY>
</HTML>
ENDHTML
