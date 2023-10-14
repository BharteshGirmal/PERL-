#!/usr/bin/perl

use strict;
use warnings;

print "_FILE_:", __FILE__ ,"\n";
print "_LINE_:", __LINE__ ,"\n";
print "_PACKAGE_:", __PACKAGE__ ,"\n";


$SIG{INT} = sub { die "Interrupt signal found @~\n"};
sleep(5);