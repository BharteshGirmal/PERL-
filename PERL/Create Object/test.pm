#!/usr/bin/perl


package test;

use strict;
use warnings;

sub new {
    my $className = shift;
    my $ref => { skillName => shift }
    bless $ref, $className;
    return $ref
}
sub setSkill {
    my ($ref, $skillName) = @_;
    $ref->{skillName}= $skillName;
    return $ref->{$skillName};
}

sub getSkill {
    my ($ref) = @_;
    return $ref->{$skillName};
}

1;
