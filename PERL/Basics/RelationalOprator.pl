#!/usr/bin/perl

use strict;
use warnings;

my $string1 = "Perl";
my $string2 = "Perl";
my $string3 = "Java";

if ($string1 eq $string2)
{
    print "Both $string1 and $string2 are same \n";
}
if ($string1 ne $string3)
{
    print "$string1 and $string3 Not equal \n";
}
if ($string1 gt $string3)
{
    print "$string1 is gretaer than  $string3  \n";
}