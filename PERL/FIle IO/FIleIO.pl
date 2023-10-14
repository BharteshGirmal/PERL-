#!/usr/bin/perl
use strict;
use warnings;

open (FHR, "<Text.txt") or die "Cannot Open the File... or $!";
#   < to  read the file 

while(<FHR>)
{
    print "$_";
}

close(FHR);


open (FHR2, ">Text.txt") or die "Cannot Open the File... or $!";
print FHR2= "Skill Name\n";

while(<FHR2>)
{
    print "$_";
}

close(FHR2);