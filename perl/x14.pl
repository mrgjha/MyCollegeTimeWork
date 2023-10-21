#! /usr/bin/perl


open (COUNT,"counter.txt");

$count = <COUNT>;

close COUNT;

$count++;

open (COUNT,>counter.txt");

print COUNT $count;

close COUNT;

print "Content-type: text/html\n\n"; #Yes, I'm sure that's right.

# Start the JavaScript document.

print "document.write(\"";

print "There have been a total of $count hits on this site since I built it";

print "\");

# Ended

