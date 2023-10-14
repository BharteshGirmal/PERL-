#!/usr/bin/perl
use strict;
use warnings;
use test;

print "Perl Pacakages Example ...\n";

my $skill = $ARGV[0];
my $exp = $ARGV[1];

addskills($skill, $exp);

print $skillExp{$skill},"\n";

test::getSkillExp();


