#!/usr/bin/perl

use strict;
use warnings;

use test;


my $obj = new test("perl");
$obj->setSkill("python");
$obj->setSkill("java");
print $obj->{skillName}, "\n";
print $obj->{getSkill}, "\n";