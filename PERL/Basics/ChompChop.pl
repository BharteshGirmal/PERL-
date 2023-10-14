#!usr/bin/perl

use strict;
use warnings;

print "Enter the Number : \n";
# my $input =<STDIN>;
# print "$input";
# chomp($input);
# print "$input";
my @skills =("Perl\n", "Python\n", "Java\n");
print "@skills";
chomp(@skills);
print "@skills\n";
my @skillNames =("Perl-", "Python-", "Java-");
print "@skillNames\n";
chop(@skillNames);
print "@skillNames";