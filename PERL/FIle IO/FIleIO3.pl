#!/usr/bin/perl
use strict;
use warnings;


rename ("Text.txt", "test1.txt");

unlink("Sample.txt");

open (FHR, "<test1.txt") or die "Cannot Open the File... or $!";
seek(FHR, 25, 0);

while(<FHR>)
{
    print tell(FHR), ":",$_;
}

close(FHR);

