#!/usr/bin/perl

use strict;
 use warnings;

 print "Special Variables\n";

 my $skill = $ARGV[0];
 my $exp = $ARGV[1];

 if( $#ARGV < 1)
 {
    print "Usage : perl $0 <param1> <param2>\n";
    die;
 }

 print "@ARGV\n";


#  foreach (keys %ENV)
#  {
#     print "$_=> $ENV{$_}\n";
#  }

 print "$ENV{USERDOMAIN}\n";
 
 print "$ENV{PSMODULEPATH}\n";
