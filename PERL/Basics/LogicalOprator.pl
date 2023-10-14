#!/usr/bin/perl
use strict;
use warnings;

my @skills=("Perl", "Python", "Java", "Unix");
print @skills, "\n";

if(($skills[0] eq "Perl") and (scalar @skills ==4)){
    print "Logical AND \n";
}

if(($skills[0] eq "Perl") or (scalar @skills ==2)){
    print "Logical OR \n";
}

