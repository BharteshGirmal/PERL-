#!/usr/bin/perl

use strict;
use warnings;

print "Array of arrays\n";

my @domainNames= ( ["yahoo.com", 'Google.com'],
                    ["gitam.edu, au.edu", "cibit.edu","Gayatri.edu"],
                    [10..15]);

# accessing the elements from the array of array
print @{$domainNames[0]},"\n";
print @{$domainNames[1]},"\n";
print @{$domainNames[2]},"\n";

print @{$domainNames[0]}[1],"\n";
print @{$domainNames[1]}[0],"\n";
print @{$domainNames[2]}[2],"\n";

print "For Anoyomous Array \n";
my $domainNames2= [ ["yahoo.com", 'Google.com'],
                    ["gitam.edu, au.edu", "cibit.edu","Gayatri.edu"],
                    [10..15]];

print "Accessing the elements from the array of arrays\n";
print @{$domainNames2->[0]},"\n";
print @{$domainNames2->[1]},"\n";
print @{$domainNames2->[2]},"\n";

print @{$domainNames2->[0]}[1],"\n";
print @{$domainNames2->[1]}[2],"\n";
print @{$domainNames2->[2]}[0],"\n";