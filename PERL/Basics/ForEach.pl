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


foreach (keys %skillsExp)
{
    print "$_ =>", $skillsExp{$_}, "\n";
}

my @skills =("Perl", "Python", "java", "react");

foreach( 0..$#skills)
{
    print "$skills[$_]\n";
}

print "Foreach loopp using range oprator with an itrator\n";

foreach my $i( 0..$#skills)
{
    print "$skills[$i]\n";
}
