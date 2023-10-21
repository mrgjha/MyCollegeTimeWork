#! /usr/bin/perl
print "Content-Type: text/html\n\n";









for $x (1..5)

{

for $y (1..5)

{

print add($x,$y);

print "\n";

}

}

sub add

{

$num1 = shift;

$num2 = shift;

return $num1+$num2;

}

