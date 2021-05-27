#!/usr/bin/perl

$hello = "Hello world!  ";
$nth = 10;
$flt = 0.01;
$chr = 'a';

$out = $hello . $chr . $nth * $flt;
printf ("Output: %s", $out);

#datatypes
$bool = 0;
$int = 10;
$flt = 0.0001;
$negative = -3; # negative
$zero = 0; # zero (can also be false, if used as a Boolean
$positive = 123; # positive decimal
$zeroPos = 0123; #0 prefix is used to sepcify octal - octal value = 83 decimal
$hex = 0xAB; #0x prefix is used to specify hexadecimal - hexadecimal value = 171 decimal
$bin = 0b1010; # 0b prefix is used to specify binary - binary value = 10 decimal
print $int," ",$flt," ",$bool," ",$negative," ",$zero," " ,$positive," " ,$zeroPos," ", $hex," ", $bin,"\n\n"; 

#array
@inta = (1, 2, 3);
@flta = (0.01, 0.02, 0.03);
@chra = ('a','b','c');
@stra = ("alpha", "beta", "gamma");
print @inta, "  ", @flta, "  ", @chra, "  ", @stra
