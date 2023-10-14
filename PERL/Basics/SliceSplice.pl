#!/use/bin/perl;

use strict;
use warnings;

my @skills=("Java", "Perl", "React", "JavaScript", "Python");

my @marks=(66, 7, 77, 23, 45, 6, 78, 88 );

print "@marks[2..5]\n";

# splice(@skills, 0, 3, "C-Programming");
# print @skills, "\n";

splice(@skills, 0, 3, 1..10);
print @skills, "\n";
my @elements = splice(@marks , -3);
print "Last 3 elements of the array : @elements";