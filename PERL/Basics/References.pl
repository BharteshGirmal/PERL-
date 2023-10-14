#!/usr/bin/perl

use strict;
use warnings;

my $banner="Perl Programming";
my @skills = ("Perl", "Python", "Unix", "Java");
my %domainCodes =("yahho.com" => 101,
"google.com" => 201,
"youtube.com" => 301,
"gitam.org" =>401,
"au.org" => 501,
);

print "Scalar Reference of $banner :",\$banner,"\n";
print "Array Reference of @skills : ", \@skills, "\n";
print "Hash Reference of %domainCodes : ",\%domainCodes,"\n";

my $scalarRef= \$banner;
my $arrRef = \@skills;
my $hashRef = \%domainCodes;

print "Deferencing \n";
print "Deferencing of",$scalarRef ,"$$scalarRef\n";
print "Deferencing of",$arrRef ,"@$arrRef\n";
print "Deferencing of",$hashRef ,"%$hashRef\n";


print "Anonymous Array and Hash\n";

my $skills2 = ["Perl", "Python", "Unix", "Java"];
my $domainCodes2 ={"yahho.com" => 101,
"google.com" => 201,
"youtube.com" => 301,
"gitam.org" =>401,
"au.org" => 501,
};
print "$skills2\n";
print "$domainCodes2\n";
print "Deferencing the array and hash\n";
print "@$skills2\n";
print "%$domainCodes2\n";


print $skills2->[0],"\n";
print $domainCodes2->{"google.com"},"\n";

sub displayLines{
    my ($skills, $domainCodes) = @_;
    foreach(@$skills)
    {
        print "$_ ,"
    }
    print "\n";
    foreach(keys %$domainCodes)
    {
        print   "$_ => $domainCodes{$_}\n";
    }

}

# paasing refrences to the subroutine
displayLines(\@skills , \%domainCodes);