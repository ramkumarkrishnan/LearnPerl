#!/usr/bin/perl

=POD
Strings
=cut
print "\nString operations\n\n";

# String interpolation and difference between string literal and string
our ($name);
$name = 'Leo';
# does not interpret $name
print 'Hello $name, Nice to see you\n'; 
# interprets $name
print "\nHello $name, Nice to see you\n"; 

# complex syntax \s
print "Hello $name\s, Nice to see you\n"; 

our ($a, $b, $c);
$a = 'water ';
$b = "bottle $a";
print "Bring the ". $a . $b . "\n";
$a = 'water $b ';
$a .= $b;
$c = "Bring the ". $a . " \n";
print $c;

=POD
String built-in's
=cut
# Split a string
@sarr = split("", $c);
print $sarr[4] . "\n";

# Substr of a string
print substr($c, 6, 10) . "\n";

# Instr in a string (Index function)
print "\'water\' starts at " . index($c, "water") . "th position in $c\n";

# Upcase and lower case
print uc($c);
print lc($c);

# reverse
print reverse($c);

# Q U I Z - substring check
# StringCheck(str1, str2)  # is str1 in str2
sub StringCheck  {
  return (index($_[1], $_[0]) >= 0) ? 1 : 0;
} 

if (StringCheck("jumps", "The Quick Brown Fox jumps over the Lazy Dog")) {
  print "yes\n";
}
else {
  print "no\n";
}
 
if (StringCheck("fox", "The Quick Brown Fox jumps over the Lazy Dog")) {
  print "yes\n";
}
else {
  print "no\n";
}
  
