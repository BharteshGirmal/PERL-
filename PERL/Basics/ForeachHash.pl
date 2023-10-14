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

while ( my($key, $value) = each(%skillsExp))
{
    print "$key     =>      $value\n";
}