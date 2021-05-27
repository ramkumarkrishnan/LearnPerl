#!/usr/bin/perl
use strict;
use warnings;

sub HelloSub  {
  print "Hello Subroutine\n\n";
}
HelloSub();

=POD
--------------------------
Local and Global variables
The legend of "my"
=cut
print "\n Local, Global Variables\n\n";
our ($n, $m); #handle legacy code error
$n = 20;
print $n . ": \$n outside subroutine locglob\n";
sub locglob  {
  my $n = 10;  # using my keyword for local variable
  print $n . ": \$n in subroutine locglob\n";
  my $m = 30;
  print $m . ": \$m in subroutine locglob\n";
  $::n = 40;
  print  "\$n updated in subroutine locglob to $::n\n";
}
locglob();
print $n . ": \$n outside subroutine locglob\n";
print $m . ": \$m outside subroutine locglob\n";

# Subroutine with return value
print "\nSubroutine with return value\n\n";
our ($n1, $n2); # handle legacy code error
$n1 = 10;
$n2 = 20;
print "Outside multi(): \$n1 x \$n2 = $n1 x $n2 = " . $n1 * $n2 . "\n";
sub multi()  {
  $::n1 = 30;
  $::n2 = 40;
  my $n1 = 5;
  my $n2 = 10;
  print "In multi(): \$n1 x \$n2 = $n1 x $n2 = " . $n1 * $n2 . "\n";
  print "In multi(): \$::n1 x \$::n2 = $::n1 x $::n2 = " . $::n1 * $::n2 . "\n";
  return $::n1*$::n2;
}
print "Return multi(): " . multi() . "\n";

=POD
----------------------------------------
Subroutines with variable variable usage
=cut
print "\nSubroutine with variable variable usage\n\n";
sub multiply  {
=POD
Old Perl - raises "better written" error:
  $n1 = @_[0];
  $n2 = @_[1];
=cut
  $n1 = $_[0];
  $n2 = $_[1];
  return $n1 * $n2;
}
print "Multiply two numbers passed in as params: " . multiply(10, 20) . "\n";

# Cube - argument passed by value
sub cube  {
#  my $n = @_[0];
  my $n = $_[0];
  return $n ** 3;
}
print "Cube of 3: ", cube(3), "\n";

# arguments - argument passed by reference
sub nthpower  {
  return $_[0] ** $_[1];
}
print "3rd power of 5: ", nthpower(5, 3), "\n";

=POD
---------------------------------------------------------------
User input to variable variable to subroutine
See the use of '\' to separate the 'th' from $n and uc function
=cut
# arguments from user input
our $p;
print "Enter nth power: ";
chomp($n = <STDIN>);
print "\nEnter p: ";
chomp($p = <STDIN>);
print "$n\-th power of $p: ", nthpower($p, $n), "\n";

# Letter grade to GPA points
# use of "eq" very important for strings, or Perl misbehaves
our ($g, $r);
sub gpaPoint  {
  my $g = uc $_[0];
  my $r = -1;
  if ($g eq "A+")  {
    $r = 4.0;
  }
  elsif ($g eq "A")  {
    $r = 4.0;
  }
  elsif ($g eq "A-")  {
    $r = 3.7;
  }
  elsif ($g eq "B+")  {
    $r = 3.3;
  }
  elsif ($g eq "B")  {
    $r = 3.0;
  }
  elsif ($g eq "B-")  {
    $r = 2.8;
  }
  elsif ($g eq "C+")  {
    $r = 2.5;
  }
  elsif ($g eq "C")  {
    $r = 2.0;
  }
  elsif ($g eq "C-")  {
    $r = 1.8;
  }
  elsif ($g eq "D")  {
    $r = 1.5;
  }
  elsif ($g eq "F")  {
    $r = 0;
  }
  else {
    $r = -1;
  }
  return $r;
}
print "Enter grade: ";
chomp ($g = <STDIN>);
print "Point for grade " . uc($g) . " is: " . gpaPoint ($g) . "\n";


=POD
-------------------------------------------------------------------------------
Indication of how legacy/crappy the above code was
and how Perl is not a good backward compatible PL
--------------------------------------------------
16:31:46 ramkrish@ramkrish-mac Basics main ? perl subroutines.pl
Variable "$n" is not imported at subroutines.pl line 27.
Variable "$n1" is not imported at subroutines.pl line 52.
Scalar value @_[0] better written as $_[0] at subroutines.pl line 52.
Variable "$n2" is not imported at subroutines.pl line 53.
Scalar value @_[1] better written as $_[1] at subroutines.pl line 53.
Variable "$n1" is not imported at subroutines.pl line 56.
Variable "$n2" is not imported at subroutines.pl line 56.
Scalar value @_[0] better written as $_[0] at subroutines.pl line 62.
Scalar value @_[0] better written as $_[0] at subroutines.pl line 69.
Scalar value @_[1] better written as $_[1] at subroutines.pl line 69.
Scalar value @_[0] better written as $_[0] at subroutines.pl line 70.
Scalar value @_[1] better written as $_[1] at subroutines.pl line 70.
Global symbol "$n" requires explicit package name at subroutines.pl line 16.
Global symbol "$n" requires explicit package name at subroutines.pl line 17.
Global symbol "$n" requires explicit package name at subroutines.pl line 27.
Global symbol "$m" requires explicit package name at subroutines.pl line 28.
Global symbol "$n1" requires explicit package name at subroutines.pl line 32.
Global symbol "$n2" requires explicit package name at subroutines.pl line 33.
Global symbol "$n1" requires explicit package name at subroutines.pl line 34.
Global symbol "$n2" requires explicit package name at subroutines.pl line 34.
Global symbol "$n1" requires explicit package name at subroutines.pl line 34.
Global symbol "$n2" requires explicit package name at subroutines.pl line 34.
Global symbol "$n1" requires explicit package name at subroutines.pl line 52.
Global symbol "$n2" requires explicit package name at subroutines.pl line 53.
Global symbol "$n1" requires explicit package name at subroutines.pl line 56.
Global symbol "$n2" requires explicit package name at subroutines.pl line 56.
Execution of subroutines.pl aborted due to compilation errors.
=cut
