#!/usr/bin/perl

=POD
---------------------------------------------------------
Perl allows access to data through dynamic variable names.
The name of a variable can be stored in another variable,
allowing it to be accessed dynamically. Such variables are
called variable variables. 
To turn a variable into a variable variable, you put a $
sign in front of the variable.
=cut

# vehicle has value "car"
$vehicle = "car";

# vehicle is a variable variable
# the variable car has value honda
$$vehicle = "honda";

# Prints car
print "\$vehicle:\t"; 
print $vehicle;
print "\n";

# Prints honda
# \ is escape for special characters
print "\${\$vehicle}:\t";
print ${$vehicle};
print "\n";

# Prints honda
print "\$\$vehicle:\t"; 
print $$vehicle;
print "\n";

# Prints honda
print "\$car:\t\t"; 
print $car;
print "\n\n";

=POD
-------------------------------------------------
Perl allows you to "compose" variable names using
the dynamic variable concept to create variable
variables
=cut

$BuyPrice = 10;
$SellPrice = 30;
$Price = "Price";

@Trade = ("Buy","Sell");

# prints 10
print "\$BuyPrice:\t";
print $BuyPrice . "\n";

# prints 30
print "\$SellPrice:\t";
print $SellPrice . "\n";

# prints 20 - the variables are composed
# ${varname} is the safest way to reference variables
print "Trade proceeds: \$SellPrice - \$BuyPrice\n";
print ${@Trade[1] . $Price} - ${@Trade[0] . $Price} . "\n\n";
