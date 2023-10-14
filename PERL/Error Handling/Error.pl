#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
print "Error Handling \n";

# If condition 
my $string  ="";
if($string)
{
    print "The Varible is defined\n";
}
else
{
    print "The Varible is Not defined\n";
}

# unless Condition 

foreach(0..10){
    unless($_ == 5)
    {
        print "$_\n";
    }
}

# ternery OPrator 

my $skillsExp ={ Perl => 1,
                 Python=>2};

print Dumper($skillsExp);

exists $skillsExp->{Python}? delete $skillsExp->{Python} : "Key Not Exists ";

print Dumper($skillsExp);


# while Opening a file

open(FHR, "<input.txt") or die "File Does not Exists or $!\n";

close(FHR);

# STDIN 

my $name =<STDIN>;

chomp($name);

warn "Name should starts with T" if ($name =`/T/`);
