#!/usr/bin/perl

=POD
-------- if-else ------------
- Inside the parentheses is the condition; in this case, it is a 
  comparison using greater than operator between two values.
- It is a good practice to use the same type of variables in comparisons
  (not comparing floating-point values to characters).
- Note also the left curly brace {. This symbol denotes a block of
  multiple lines of code. Without it, the conditional would only
  refer to the statement immediately following it.
- It is a good practice to always use the braces.
=cut
print ("\nIF - ELSE\n\n");

$a = 50; $b = 15;
if ($a > $b) {
  print "\$a is greater than \$b\n";
}
else {
  print "\$a is less than \$b\n";
}

$number = 18;   # play around by changing values

if ($number > 0)  { 
  print "$number is greater than 0\n"; 
  if ($number % 2 == 0)  {
    print "$number is even!\n"
  }  #end of inner if
  else  {
    print "$number is odd!\n"
  }  #end  of inner else
}  #end of outer if
else  {
  print "$number is less than 0\n"
}  #end of outer else

=POD
-------- if-elsif ---------
=cut
print ("\nIF - ELSIF\n\n");

$score=50;

if ($score > 100)  {  # If score is greater than 100
  print "Error: the score is greater than 100!\n";
}
elsif ($score < 0)  {  # Else If score is less than 0
  print "Error: the score is less than 0!\n";
}
elsif ($score >= 50)  {  # Else if score is greater or equal to 50
  print "Pass!\n";
}
else  {   # If none above, then score must be between 0 and 49
  print "Fail!\n";
}

$score=70;

if ($score <= 100 && $score >= 50)  {  # If score is greater than 100
  print "Pass!\n";
}
elsif ($score >= 0 && $score < 50)  {
  print "Fail!"
}
else  {  # If none above, then score must be less than 0 or greater than 100
  print "Invalid!\n";
}

=POD
-------- Given - When (case-switch) -------
-------- Deprecated in 5.18, available only in 5.010.
-------- Don't use this - implementation is buggy as explained here:
https://www.effectiveperlprogramming.com/2011/05/use-for-instead-of-given/ 
given (expression)  {
  when (constant-expression)  {
    statement; #statement(s) execute if constant-expression is true
  }
  when (constant-expression1)  {
    statement; #statement(s) execute if constant-expression1 is true
  }
  default  {    
    statement;   #the code inside default is run when no other cases match
  }
}
print "\nGiven - When\n\n";

$color = 'Green';
given ($color)  {
  when ('Green')  {
    print "Color is $color";
  }
  default  {
    print "No color";
  }
}
=cut

=POD
-------- Ternary Operator -------
=cut
print "\nTernary Operator\n\n";
$a=5; $b=2;

($a > $b) ? print "$a greater than $b\n" : print "$a is NOT greater than $b";

=POD
-------- Quiz -------
=cut
print "\nQ U I Z\n\n";

# Check if number is odd or even
$tmp = 3;
$tmp = -1;
$tmp = 38;
($tmp%2) ? print "Number is odd\n" : print "Number is even\n";

# Calculator
$a = 5; $b = 6; $op = '+';
if ($op == '+')   {
  print "$a + $b = " . $a + $b . "\n";
}
elsif ($op == '-')  {
  print "$a - $b = " . $a - $b . "\n";
}
elsif ($op == '*')  {
  print "$a * $b = " . $a * $b . "\n";
}
elsif ($op == '/')  {
  print "$a / $b = " . $a / $b . "\n";
}
