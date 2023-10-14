#!/usr/bin/perl;

use strict;
use warnings;

my $experience = "Perl=Python=Java=Unix=DSA";

my @experience = split("=", $experience);

print @experience, "\n";

$experience= join(" || ", @experience);

print $experience;