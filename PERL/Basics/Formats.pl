#!/usr/bin/perl

use strict;
use warnings;
my %skillsExperiences = { Perl => 5,
                          Python => 2,
                          Unix => 5};

my ($skill, $experiences);
my $skillName = "Skill And Experiences";
my $formatHeader ="HEADER";



format outputHash =
**************************************************
@||||||||||||||||||||||||||||||||||||||||||||||||||
$skillName
@<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< @##
$skill,                               $experiences
**************************************************
.
format reportHeader =
==================================================
@||||||||||||||||||||||||||||||||||||||||||||||||||
$formatHeader
                                                @<
                                                $%,
==================================================
.

select(STDOUT);
$~ = "outputHash";
$^ = "reportHeader";
$= = 10;

foreach (keys %skillsExperiences)
{
    $skill = $_;
    $experiences = $skillsExperiences{$_};
    write;
}
