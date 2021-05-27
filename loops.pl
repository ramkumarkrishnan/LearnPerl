#!/usr/bin/perl

=POD
----------
WHILE loop
=cut
print ("\nWHILE loop\n\n");
$x=4;
$y=0;
while ($y <= 10)  {
  # the while loop will run till y<=10 condition is being met               
  $y += $x;
  $x += 1;
} #the loop will iterate 3 times
print "the value of x is: $x\n";
print "the value of y is: $y\n";

=POD
-------------
DO-WHILE loop
=cut
print ("\nDO-WHILE loop\n\n");
$number=5;
do  {
  print "Value of number is: $number\n";
  $number++;
} while ($number <= 9);
# the condition is checked after the first run

=POD
-------------
FOR loop
=cut
print ("\nFOR loop\n\n");
for ($i = 0; $i < 10; $i++)  {
  print "value of i is: $i\n";
} 

$input = 5;
for ($i = 1; $i <= $input; $i++)  {  # outer for loop
  print "Repeat $i times\n";
  for ($j = 1; $j <= $i; $j++)  {  # inner for loop
    print "$j ";
  }
  print "\n";
}
print "Done\n";

=POD
------------
FOREACH loop
=cut
print ("\nFOREACH loop\n");
@items = ('Alpha', 'Beta', 'Gamma');
foreach $item(@items)  {
  print "$item\n";
}

print ("\nFOREACH loop with \$_\n");
foreach (@items)  {
  print "$_\n";
}

=POD
------------
UNTIL loop
=cut
print ("\nUNTIL loop\n");
$y=0;
# the until loop will run "until" the condition is false               
until ($y > 5)  {
  $y += 1;
  print "The value of y is: $y\n";
} #the loop will iterate 6 times

=POD
Q U I Z
=cut
print ("\nQ U I Z\n");

# Arithmetic progression
$n = 5;
$p = 10;
$i = 1;
while ($i <= $p)  {
  print $n * $i . " ";
  $i++;
}
print "\n";

# Fibonacci series
$i = 0;
$p = 10;
$n2 = 0;
$n1 = 0;
$n = 0;
while ($i < $p)  {
  if ($i == 0)  {
    $n = 0;
  }
  if ($i == 1)  {
    $n = 1;
  }
  if ($i == 2)  {
    $n1 = 1;
    $n = 1;
  }
  print $n . " ";
  $n2 = $n1;
  $n1 = $n;
  $n = $n2 + $n1;
  $i++;
}
print "\n";

# A better Fibonacci
$f = "";
$p = 10;
$n2 = 0; 
$n1 = 1;
$n = 0;
for ($i = 0; $i < $p; $i++)
{
  if ($i <= 1)  {
    $n = $i;
    $f .= $n . " ";
  }
  else  {
    $n = $n2 + $n1;
    $f .= $n . " ";
    $n2 = $n1;
    $n1 = $n;
  }
}
$f =~ s/\s+$//;
print $f . "\n";

# Print pyramid
$p = 10;
$s = '*';
for ($i=1; $i <= $p; $i++)  {
  for ($j=0; $j < $i; $j++)  {
    print $s . " ";
  }
  print "\n";
}
    
