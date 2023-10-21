#! /usr/bin/perl
print "Content-Type: text/html\n\n";







open(MAIL,"| /lib/sendmail -t -oi");

print MAIL "To:gyan\@localhost.com\n";

print MAIL "From:happyuser@myhouse.com\n";

print MAIL "Subject:It worked\n\n";

print MAIL "This is just a quick message to say everything worked.";

close MAIL;

