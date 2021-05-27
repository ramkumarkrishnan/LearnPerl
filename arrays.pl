#!/usr/bin/perl
=POD
ARRAYS
=cut
print ("\nArrays\n\n");

# Operators
@fruits = ('apple','banana','cherry','date','elderberry','feijoa','grape');
print "@fruits" . "\n";

# Array operations
print "\nAssign one array to another\n";
@freshfruits = @fruits;
print "@freshfruits" . "\n";

print "\nADD element to end of array\n";
# push to the tail/last element of the array (bizarre; should be append())
push (@fruits, 'huckleberry');
print "@fruits\n";

print "\nADD element to start of array\n";
unshift(@fruits, 'apricot');
print "@fruits\n";
# push like stack - modifies the array
unshift(@fruits, 'apple');
print "@fruits\n";

print "\nUPDATE element in the middle of an array\n";
@fruits[6] = 'gauva';
print "@fruits\n";

print "\nDELETE element from end of array\n";
# pop out the tail/last element of the array (bizarre; should be fetch())
our ($f);
$f = pop(@fruits);
print "@fruits\n";
print "$f\n";

print "\nDELETE element from front of array - like stack\n";
shift(@fruits);
print "@fruits\n";

print "\nDELETE element from middle of the array\n";
undef $fruits[4];
print "@fruits\n";

print "\nSORT the string array\n";
@sortedfruits = sort(@fruits);
print "@sortedfruits\n";

print "\nSORT a numeric array\n";
@numarr = (-2,19,34,12,9,6,-21,4,8,32,5);
print "@numarr\n";
@sortednumarr = sort(@numarr);
print "Just a sort(@arr) returns bogus results\n";
print "@sortednumarr\n";
print "You need to use the spaceship operator as follows:\n";
print "sorted = sort{\$a <=> \$b} \@array\n";
@sortednumarr = sort{$a <=> $b} @numarr;
print "@sortednumarr\n";

# length of the array (bizarre: why not just len())
print "\n# of fruits: " . scalar(@fruits) . "\n";

# array index
$i = 3;
print "\n$i-th element: $fruits[$i]\n";

# max index
print "\nmax index: " . $#fruits . "\n";
print "@fruits\n\n";

# Define array by range
@alphabets = (A..Z);
print "@alphabets" . "\n";

# QUIZ - find maximum number
sub findmaxnum  {
  my @arr = @_;
  print "Array: @arr\n";
  $max = -1;
  for ($i = 0; $i <= $#arr; $i++)  {
    if ($max < $arr[$i])  {
      $max = $arr[$i];
    }
  }
  return $max;
}
@num = (1..100);
print "Max number is: " . findmaxnum (@num) . "\n\n";

# Find maximum string
sub findmaxstr  {
  my @arr = @_;
  print "Array: @arr\n";
  $max = -1;
  for ($i = 0; $i <= $#arr; $i++)  {
    if ($max le $arr[$i])  {
      $max = $arr[$i];
    }
  }
  return $max;
}
print "Max string is: " . findmaxstr (@fruits) . "\n\n";

# Multidimensional array
@colors =
  (['red','green','blue'],['black','white','gray'],['pink','violet','purple']);
for ($i = 0; $i < 3; $i++)  {
  for ($j = 0; $j < 3; $j++)  {
    print $colors[$i][$j] . " ";
  }
  print "\n";
}
print "\n\n";

# QUIZ - print a 4x4 matrix with diagonal 0's, +1 upper, -1 lower
@diag = ([0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]);
for ($i = 0; $i < 4; $i++)  {
  for ($j = 0; $j < 4; $j++)  {
    if ($i == $j)  {
      $diag[$i][$j] = 0;
    }
    elsif ($i > $j)  {
      $diag[$i][$j] = -1;
    }
    elsif ($i < $j)  {
      $diag[$i][$j]  = 1;
    }
  }
}
for ($i = 0; $i < 4; $i++)  {
  for ($j = 0; $j < 4; $j++)  {
    print $diag[$i][$j] . " ";
  }
  print "\n";
}
print "\n";

# Subroutine to do the above
sub diag  {
  $n = $_[0];
  @arr = ();

  for ($i = 0; $i < $n; $i++)  {
    for ($j = 0; $j < $n; $j++)  {
      if ($i == $j)  {
        $diag[$i][$j] = 0;
      }
      elsif ($i > $j)  {
        $diag[$i][$j] = -1;
      }
      elsif ($i < $j)  {
        $diag[$i][$j]  = 1;
      }
    }
  }
  for ($i = 0; $i < $n; $i++)  {
    for ($j = 0; $j < $n; $j++)  {
      print $diag[$i][$j] . " ";
    }
    print "\n";
  }
}
diag(5);
print "\n";
