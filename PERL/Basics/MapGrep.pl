#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @skills = ("Perl", "Python", "Java", "Unix", "Java", "Unix");

@skills = map{ $_ . "-Tech  "} @skills;

print @skills, "\n";
@skills = map{ $_ => 4} @skills;

print @skills,"\n";

# convert Array into hash 
my @skills2 = ("Perl", "Python", "Java", "Unix", "Java", "Unix");
my %skillhash = map{ $_ => "values"} @skills2;
print Dumper (\%skillhash);

# Grep 
# @skills2 = grep{/^P/} @skills2;
# print Dumper (\@skills2);
# @skills2 = grep{ !/^P/ } @skills2;
# print Dumper (\@skills2);


# Map and grep

@skills2 = map {$_ => 4} grep{ /^P/} @skills2;
print Dumper(\@skills2);

