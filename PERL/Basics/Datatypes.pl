#!/usr/bin/perl;

use strict;
use warnings;
use Data::Dumper;
print "Data types in perl \n";

print "Scalar\n";

my @skills= ("perl", "Javascript", "Java");

print "@skills\n";
print "Hashes\n";
my %skillhash={"Perl"=> 5 , "Python"=> 10};
print  Dumper (\%skillhash);
