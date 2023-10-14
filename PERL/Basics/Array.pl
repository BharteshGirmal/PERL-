#!/use/bin/perl;

use strict;
use warnings;

print "Arrays\n";
# declaring the Array
my @skills=("Perl", 5, "Python", 2, "Java", 4);
# accsessing the elemensts of the array

print @skills, "\n";

print "First Element: $skills[0]\n";
print "Last Element: $skills[-1]\n ";
print "Last but one  Element: $skills[-2]\n";
print "Elements from Range : @skills[2..4]\n";

#   $#arr_name gives the last index ofthe array 
print "Element from 2 to last index : @skills[2..$#skills]";
print "Last 3 elements: @skills[$#skills-2..$#skills]";


# delclaring a numbered array 
my @experience =(1..10);
print @experience,"\n" ;

# size of Array 

print "Size of array ", scalar @experience, "\n";
print "Size of array ", $#experience+1, "\n";

push(@experience, 'ADD');
print @experience, "\n";
unshift(@experience, 'START');
print @experience, "\n";
my $ele = pop(@experience);
print "$ele is poped from the array", "\n";
my $ele2 = shift(@experience);
print "$ele2 is poped from the array", "\n";



