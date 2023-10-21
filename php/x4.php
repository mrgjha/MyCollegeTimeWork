

<?php

//References
// PHP 3 assignment means copy
// PHP 4 supports assignment by reference
//Use & operator






$foo = 'Bob'; // Assign the value 'Bob' to $foo
$bar = &$foo; // Reference $foo via $bar.
$bar = "My name is $bar"; // Alter $bar...
echo $bar;
echo $foo; // $foo is altered too.
?>