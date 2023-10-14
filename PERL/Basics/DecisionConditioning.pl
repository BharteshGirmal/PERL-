#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper ;
my @skills=("Perl", "Python", "Java", "Unix", "Shell");

print Dumper @skills;

# if($skills[-1] eq "c")
# {
#      print "If.. True \n";
# }
# elsif($skills[1] ne "C")
# {
#      print "Elsif.. True\ n";
# }
# else
# {
#      print "false \n";
# }

unless (scalar @skills == 5)
{
    print "Unless True \n";
}
elsif($skills[-1] eq "Shell"){
    print "Unless elsif  True \n";
}
else{
    print "Unless else  True \n";
}