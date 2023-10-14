#!/use/bin/perl;

use strict;
use warnings;

my $num=5;
my $div=0;

eval{ my $avg = $num/$div};
print "Error Captured : $@\n";