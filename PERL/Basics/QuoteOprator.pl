#!/usr/bin/perl

use strict;
use warnings;

my $single = q{perl};
my $double = qq{perl};

print "$single\n";
print "$double\n";

my @array = qw{perl python 1 2 3 4 };
print "@array\n";

