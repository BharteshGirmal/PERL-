#!/usr/bin/perl

use strict;
use warnings;


my %skillsExp =(
    Perl        =>  5,
    Java        =>  5,
    React        =>  5,
    JavaScript        =>  5,
    Node        =>  5,
);

my @twoDimenArray =([1, 2, 3], [4, 5, 6], [7, 8, 9]);

for(my $i=0;  $i<3;$i++)
{
    for(my $j=0; $j<3;$j++)
    {
        print " $twoDimenArray[$i][$j] "
    }
    print "\n";
}

my @colors = ("Red", "Yellow", "White", "Black", "Green");
print "@colors", "\n";


foreach(@colors)
{
    if($_ eq "Green")
    {
        $_.="+";
        next;
    }
    $_.="#";
}
print "@colors", "\n";