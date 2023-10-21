#! /usr/bin/perl
print "Content-Type: text/html\n\n";









print "The factors of 65 are".factors(65)."\n";

print "The factors of 72 are".factors(72)."\n";

print "The factors of 360 are".factors(360)."\n";

sub factors

{

$num = shift;

$temp = "";

for $x (1..$num)

{

# Is it a whole number when you divide $num by $x?

if (int($num/$x) == $num/$x)

{

# Append it to $temp

$temp = $temp." $x";

}

}

return $temp;

}


