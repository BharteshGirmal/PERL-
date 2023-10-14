#!/usr/bin/perl
package test;
use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(addskills %skillExp);
our @EXPORT_OK = qw(getSkillExp)

our %skillExp = (Perl => 5);

sun addskills{
    my ($skills, $exp)= @_;

    $skillExp{$skill}= $exp;

    print "Key and Value pair added...\n";
}

sub getSkillExp
{
    foreach (keys %skillExp)
    {
        print $_ ," => ", $skillExp{$_} ,"\n";
    }
}
1;

# to execute as true 