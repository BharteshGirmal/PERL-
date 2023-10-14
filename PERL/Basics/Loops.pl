#!/usr/bin/perl

use strict;
use warnings;

my @errors =( "404 -  ERROR", "100 - OK", "101 - OK", "406 - ERROR", "102 - OK", "503 - ERROR", "104 - OK");


print "While Loop \n";

my $i=0;
my $count =0;

while ( $i < scalar @errors)
{
    if($errors[$i] =~ /ERROR/)
    {
        $count = $count +1;
    }
    $i++;
}

print "From while Loop : $count\n";
my $grepcount = grep {/ERROR/} @errors;
print "From Grep count : $grepcount\n";

my $y=0;
print "Do While Loop \n";
do 
{
    if($errors[$y] =~ /ERROR/)
    {
        $count ++;
    }
    $y++;
}while ( $y < scalar @errors);
print "From Do while Loop : $count\n";

print "Untill Loop \n";

my $x =  0;
my $ctr = 0;
until ($x > scalar @errors)
{
    if($errors[$x] =~ /ERROR/)
    {
        $ctr++;
    }
    $x++;
}

print "From Until Loop : $ctr\n";


print "For Loop \n";
print @errors   , "   \n";
for (my $i=0; $i < scalar @errors; $i++)
{
    if($errors[$i] =~ /OK/)
    {
        my ($errorCode , $msg) = split("-", $errors[$i]);
        $errorCode++;
        $errors[$i] = "$errorCode - $msg";
    }
}
print @errors   , "   \n";


for ( 0..$#errors)
{
    if( $errors[$_] =~ /OK/)
    {
        my ($errorcode, $msg) = split("-", $errors[$_]);
        $errorcode++;
        $errors[$_] = "$errorcode - $msg ";
    }
}

print @errors, "\n";

