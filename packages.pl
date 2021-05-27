#!/usr/bin/perl

=POD
Packages are blueprints of Objects. Packages contain both data (variables)
and functions. We define a package once and make many objects that are
instances of the package. A package is like a user defined data type that
defines methods and variables. In Java terms, a package is a Class.

What is the coding standard? Can we define multiple packages in a file?
Multiple packages defined in the same file is not advised; but if you have
to do it, you have to enclose the package in curly braces to help scoping.

Objects have:
- Property - variables inside a package or method
- Method - subroutines inside a package or object
=cut

print "Packages\n";

print "Shape\n";
{
  package Shape;

  sub new  {  # constructor

    my $class = shift; # Store the class name Shape in a local scalar variable

    my $self = {       # hash that stores key/val pair of member variables:
      name  => shift,  # name
      sides => shift,  # sides
    };

    # Turn the hash reference stored in $self into a Shape object
    # by "blessing" it into a Shape class
    bless $self, $class;

    return $self;      # return the newly created object
  }

  sub Details  {
    my ($self) = @_;
    print "A $self->{name} has $self->{sides} sides\n";
  }

  # Setters
  sub setName  {
    my ($self, $value) = @_;
    $self->{name} = $value;
    return $self->{name};
  }

  sub setSides  {
    my ($self, $value) = @_;
    $self->{sides} = $value;
    return $self->{sides};
  }

  # Getters
  sub getName  {
    my ($self) = @_;
    return $self->{name};
  }

  sub getSides  {
    my ($self) = @_;
    return $self->{sides};
  }
}

print "Person\n";
{
  package Person;

  sub new  {  # constructor

    my $class = shift; # Store the class name Person in a local scalar variable

    my $self = {       # hash that stores key/val pair of member variables:
      name    => shift, # name
      address => shift, # address
    };

    # Turn the hash reference stored in $self into a Shape object
    # by "blessing" it into a Shape class
    bless $self, $class; 

    return $self;      # return the newly created object
  }

  sub Details  {
    my ($self) = @_;
    print "$self->{name} lives at $self->{address}\n";
  }

  # Setters
  sub setName  {
    my ($self, $value) = @_;
    $self->{name} = $value;
    return $self->{name};
  }

  sub setAddress  {
    my ($self, $value) = @_;
    $self->{address} = $value;
    return $self->{address};
  }

  # Getters
  sub getName  {
    my ($self) = @_;
    return $self->{name};
  }

  sub getAddress  {
    my ($self) = @_;
    return $self->{address};
  }
}

print "\nPackage Usage\n\n";
$sqr = new Shape("square", 4);
$sqr->Details();
print "Name: " . $sqr->getName() . "\n";
print "Sides: " . $sqr->getSides() . "\n";
print "\n";

$tri = new Shape();
$tri->setName("Triangle");
$tri->setSides(3);    # numeric member - to see how typechecking works
$tri->setSides("3");  # string member - to see how typechecking works
print "Name: " . $tri->getName() . "\n";
print "Sides: " . $tri->getSides() . "\n";
print "\n";

$penta = new Shape();
$penta->setName("Pentagon");
$penta->setSides(5);  # string member - to see how typechecking works
$penta->Details();
print "Name: " . $penta->getName() . "\n";
print "Sides: " . $penta->getSides() . "\n";
print "\n";

$squire = new Person("Squire", "Balmoral Castle, Scotland, UK");
$squire->Details();
print "\n";

$pinto = new Person();
$pinto->setName("Pinto");
#$pinto->setSides(5); # see if the compiler barfs
$pinto->setAddress("Cuffe Parade, Bombay");
$pinto->Details();
print "Name: " . $pinto->getName() . "\n";
print "Addr: " . $pinto->getAddress() . "\n";
print "\n";

print "\nQ U I Z - Calculate Area\n\n"


