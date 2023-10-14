#!/usr/bin/perl

use strict;
use warnings;


# Lcom.T.tutorailspoint.perl 5.5676 TTT // =
 

open(FHR , "<demo.txt") or die "Could not open file or $!";

while(<FHR>)
{
    if ( $_ =~ m{^com\..\.\w{14}\.C(.*)[5-6]\.81[2-5]\d{3}\s+(AAA|BBB)(.*)[*=]$})
    {
        print "$_\n";
    }

    chomp($_); # to cut the newline 
    $_ =~ s/com/org/;
    print "$_\n";
    $_ =~ tr/LDAP.*/ldap.*/;
    print "$_\n";
}   


close(FHR);