#!/usr/bin/perl

use strict;
use warnings;

my $string1= "Perl";
my $string2;

$string2 = $string1; 

print $string2, "\n";

my $num1=100;
my $num2=100;

$num1 += $num2;
print "$num1\n";
$num1 -= $num2;
print "$num1\n";
$num1 /= $num2;
print "$num1\n";
$num1 *= $num2;
print "$num1\n";
$num1 %= $num2;
print "$num1\n";
$num1 .= $num2;
print "$num1\n";