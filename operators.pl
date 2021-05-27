#!/usr/bin/perl

=POD
--------------------
Arithmetic Operators
=cut
print ("Arithmetic Operators\n\n");
$a = 10;
$b = 4;
print "\$a: ", $a, " \$b: ",$b, "\n";
# addition
print "\$a + \$b = ". ($a + $b) . "\n";

# subtraction
print "\$a - \$b = ".($a - $b) . "\n";

# multiplication
print "\$a * \$b = ". ($a * $b) . "\n";

# division
print "\$a / \$b = ". ($a / $b) . "\n";

# modulus returns the remainder of the $a / $b
print "\$a % \$b = ".($a % $b) . "\n";

# Exponent (10^4) = 10 * 10 * 10 * 10
print "\$a ** \$b = ".($a ** $b) . "\n";

$i = 1;
# Prints 1
print "\$i: ", $i, "\n";

# Pre-increment operator increments $i by one before using its new value
print "++\$i: ", ++$i, "; Prints $i\n";

# Pre-decrement operator decrements $i by one before using its new value
print "--\$i: ", --$i, "; Prints $i\n";

# Post-increment operator uses the current value of the variable and then increments
print "\$i++: ", $i++, "; Prints 1 (but \$i value is now $i)\n";

# Post-decrement operator uses the current value of the variable and then decrements
print "\$i--: ", $i--, "; Prints 2 (but \$i value is now $i)\n";

# Left and right associativity
#
print ("\nLeft and right associativity\n");
print "5 - 3 + 2 = (5-3)+2" . (5-3+2);    # 5-3+2 is treated as (5-3)+2
print "\n";
print "5 - (3 + 2) = ". (5-(3+2));    # 5-3+2 is treated as 5-(3+2) => 0
print "\n";
print "5 + 3 * 2 = (5+3*2) ". (5+3*2);    # 5+3*2 is treated as 5+(3*2)
print "\n";
print "15 / 3 * 5 = ". (15/3*5);  # 15/3*5 is treated as (15/3)*5 
print "\n";
print "42 + 7 % 2 = 42+(7%2) ". (42+7%2);  # 42+7%2 is treated as 42+(7%2)
print "\n";
print "(42 + 7) % 2 = ". ((42+7)%2);  # 42+7%2 is treated as (42+7)%2 => 1
print "\n";
$a = 6;
print "6 += 4 => right associative ". ($a += 4);
$a = 5 * 3 % 2;
print "$a now is (5 * 3) % 2 => (15 % 2) => 1 " . $a . "\n";
$a = 5 % 3 * 2;
print "$a now is (5 % 3) * 2 => (2 * 2) => 4 ". $a . "\n";

=POD
--------------------
Relational operators
=cut
print ("\nRelational Operators\n\n");
$a = 4;
$b = 4;
if ($a != $b) {
  print "a and b are not equal\n";  # this will not be printed
}
if ($a == $b) {
  print "a and b are equal\n";
}
$a = 6;
$b = 8;
if ($b > $a) { # greater than 
  print ("Yes -- $b is greater than $a\n");
}
else {            
  print ("No -- $b is not greater than $a\n");
}
if ($a < $b) { # Less than
  print ("Yes -- $a less than $b\n");
}
else {
  print ("No -- $a is not less than $b\n");
}
if ($a <= $b) { # Less than or equal to
  print ("Yes -- $a is less than or equal to $b\n");
}
else {
  print ("No -- $a is not less than or equal to $b\n");
}
if ($b >= $a) { # Greater than or equal to
  print ("Yes -- $b is greater than or equal to $a\n");
}
else{
  print ("No -- $b is not greater than or equal to $a\n");
}

# Spaceship operator <=>
# The spaceship operator (<=>) is a number comparison operator. It
# returns 1 if the first expression is greater than the second expression.
# returns -1 if the first expression is lesser than the second expression.
# returns 0 if the first expression is equal to the second expression.
# Note: Why did Larry Wall not extend this to strings? Ans: see below

# Integers
print ((1 <=> 1).",");     #prints 0
print ((1 <=> 2).",");     #prints -1
print ((2 <=> 1));         #prints 1
print "\n";                #skips to next line 

# Floats
print ((1.5 <=> 1.5).","); #prints 0
print ((1.5 <=> 2.5).","); #prints -1
print (2.5 <=> 1.5);       #prints 1
print "\n";                #skips to next line

# Strings
print (("a" cmp "a").","); #prints 0
print (("a" cmp "b").","); #prints -1
print ("b" cmp "a");       #prints 1
print "\n";                #skips to next line

=POD
-----------------
Logical Operators
=cut
print ("\nLogical Operators\n\n");

# &&, and operator
$x=7; $y=6; $z=2;
if($x > $y && $x > $z) {
  print "You're in IF statement\n";
}
else {
  print "You're in ELSE statement\n";
}

# or operator
$x = 7; $y = 10; $z = 2;
if($x > $y || $x > $z){
  print "Successful!\n";
}
else {
  print "Failed!\n";
}

=POD
-----------------------------
Combined Assignment Operators
=cut
print ("\nCombined Assignment Operators\n\n");
$a = 3;
print "\$a = ".$a;
$b = ($a = 5);
print "\n$b = ($a = 5) returns $a, $b = " . $b;
print "\n\$a = ".$a;
print "\n\$b = ".$b;
$a = 1;
print (($a += 2)." # read as '$a = $a + 2'; $a now is (1 + 2) => 3\n");
print (($a -= 1)." # $a now is (3 - 1) => 2\n");
print (($a *= 8)." # $a now is (2 * 8) => 16\n");
print (($a /= 2)." # $a now is (16 / 2) => 8\n");
print (($a %= 5)." # $a now is (8 % 5) => 3 (modulus or remainder)\n");
print (($a **= $a)." # $a now is (3 ^ 3) => 27 (Exponent)\n");
