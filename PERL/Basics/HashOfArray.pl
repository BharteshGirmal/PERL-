#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

print "Hash OF Arrays\n";
my %hashOfArrays=("com"=>["yahoo.com", "google.com"],
                  "edu"=>["gitam.edu", "au.edu", "cibit.edu"],
                  "number"=>[1..10]);

foreach( keys %hashOfArrays)
{
    print "$_ => @{$hashOfArrays{$_}}\n";
}

print $hashOfArrays{"edu"}->[2],"\n";

print "For Anoyomous Hash\n";

my $hashOfArrays2={"com"=>["yahoo.com", "google.com"],
                  "edu"=>["gitam.edu", "au.edu", "cibit.edu"],
                  "number"=>[1..10]};

foreach(keys %{$hashOfArrays2})
{
    print "$_   =>  @{$hashOfArrays2->{$_}}\n";
}

print $hashOfArrays2->{"edu"}->[2],"\n";
print $hashOfArrays2->{"com"}->[1],"\n";


print "Hash Of Array using Simple Array\n";

my @lines =("google.com", "microsoft.com", "gitam.edu", "au.edu", "cbit.edu","gayatri.edu", 10..15);


my %hashofarray;

foreach(@lines)
{
    if($_ =~ /com/)
    {
        make_hash("com", $_);
    }
    elsif ($_ =~ /edu/)
    {
        make_hash("edu", $_);
    }
    else
    {
        make_hash("number", $_);
    }
}


sub make_hash{

    my ($key, $value)= @_;
    
    if( exists($hashofarray{$key}))
    {
        push(@{$hashofarray{$key}}, $value);
    }
    else
    {
        $hashofarray{$key}[0]= $value;
    }
}


print Dumper(\%hashofarray);