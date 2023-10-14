#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
my %skillsExperiences=(
    Unix    =>  5, 
    Perl    =>  9, 
    Java    =>  6, 
    Node    =>  1, 
    C     =>  3, 
    React   =>  7 
);
# Accessing the values from the hash 
print $skillsExperiences{"Unix"}, "\n";
print $skillsExperiences{"C"}, "\n";
print $skillsExperiences{"React"}, "\n";

# accessing the keys from the hash 
my @skillskeys=  keys %skillsExperiences;
print "Keys :   @skillskeys\n";

# accessing the values from the hash
my @skillvalues = values %skillsExperiences;
print "Values :     @skillvalues\n";

# exists function 
if (exists($skillsExperiences{"LDAP"})){
    print "Exists !!\n";
}
else {
    print "Not Exists !!\n";
}

if (!exists($skillsExperiences{"Java"})){
    print "Not Exists !!\n";
}
else{
    print "Exists !!\n";
}

# size of hash 

print scalar %skillsExperiences, "\n";
# scalar means a single value 
print scalar @skillskeys, "\n";
print scalar @skillvalues, "\n";

# creating a key value pair
$skillsExperiences{"Oracle"}=2;
print Dumper (\%skillsExperiences);

# deleting a pair 
delete $skillsExperiences{"Oracle"};
print Dumper (\%skillsExperiences);
