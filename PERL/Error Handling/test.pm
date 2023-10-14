#!/usr/bin/perl

package test;

use strict;
use warnings;

use Exporter;
use Carp;

our @ISA = qw(Exporter);
our @EXPORT = qw(errorFunction $skillName);

our $skillName;

sub errorFunction{
    $skillName = shift;
    warn "Error calling errorFunction() in Test.pm "
    carp "Error calling errorFunction() in Test.pm "
}

1;