#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

print "Hash Of Complex Records\n";

my %hashOfComplexRecords = 
(
    PerlProgramming=>{
        name => "Bhartesh",
        skills => ["Perl", "Java", "JavaScript", "React", "Python"],
        level=> [
            {
                expert => 10,
                beginner => 1
            },
            {
                laungauge => "English",
                proficiency => "Expert"
            }
        ],
        details =>{
            location=> "Pune",
            country => "India"
        }
    }
);

print Dumper(%hashOfComplexRecords);

print "Accessing the elements from the hash \n";

# print %{$hashOfComplexRecords{PerlProgramming}},"\n";
# print %hashOfComplexRecords{PerlProgramming}->{name},"\n";

my @hashobj = @{$hashOfComplexRecords{PerlProgramming}->{level}};

foreach(@hashobj){
    my %hash = %{$_};

    foreach my $key (keys %hash){

        print "$key => $hash{$key}\n";
    }
}