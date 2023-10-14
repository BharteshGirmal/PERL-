#!/usr/bin/perl

use strict;
use warnings;

print "Regular expressions \n";
print "1) using Binding Operator \n";
print "2) Match Regular Expression \n";
print "3) Substitute Regular Expression \n";
print "4) Translitrate Expression \n";


my $string = "com.T.tutorailspoint.perl 5.34567 TTT //";

if($string =~ /perl/)
{
    print " Matches :\n";
}

if($string !~ /Java/)
{
    print "Not Matches : \n";
}
if($string =~ m/\/\//)
{
    print " Case Insensitive :\n";
}
if($string =~ m{//})
{
    print " Case Insensitive using Curly brackets:\n";
}