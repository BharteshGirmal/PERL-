#!/usr/bin/perl

use strict;
use warnings;

# first Way 

my $dirname ="D:/PERL/FIle IO/*";
print "glob output : ", glob($dirname);


# second way 

opendir(DIR, '.') or die "Cannot open directory or $!\n";

while (my $fileName = readdir DIR){
    print "From While Loop: ", $fileName, "\n";
}

closedir(DIR);

mkdir('D:/PERL/FIle IO/New');

chdir('D:/PERL/FIle IO/New');

my $cmdOut = 'pwd';

print "PWD  Output : $cmdOut";
