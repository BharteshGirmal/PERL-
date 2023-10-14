#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
print "Array of hashes\n";


my @arrayOfHashes=({ orderid    => 100,
                     cost       => 20000,
                     quantity   => 3
                     },{
                     name       => "Perl",
                     address    => "Pune"
                     },{
                    brandname   => "Geeks",
                    vendorname  => "microsoft",
                    carrierName => "bluedart"
                     });

print "Accesing the elements from the hash reference\n";

print Dumper %{$arrayOfHashes[0]};
print $arrayOfHashes[0]->{"orderid"},"\n";

print "Accesing the keys from the hash\n";
print keys %{$arrayOfHashes[1]} ,"\n";
# % => to derefrence the Hash
print "Accesing the values from the hash\n";
print values %{$arrayOfHashes[1]} ,"\n";

print "For a Anoyomous Array\n";

my $arrayofhashes1 =[{ orderid    => 100,
                     cost       => 20000,
                     quantity   => 3
                     },{
                     name       => "Perl",
                     address    => "Pune"
                     },{
                    brandname   => "Geeks",
                    vendorname  => "microsoft",
                    carrierName => "bluedart"
                     }];

print Dumper $arrayofhashes1;
print Dumper @$arrayofhashes1[0];
print @$arrayofhashes1[1]->{"name"},"\n";


print "Converting Simple Array into Array of Hashes\n";

my @lines =("OrderId : 100",
            "Cost : 2000",
            "Quantity : 3");

my @arrayHash;

foreach(@lines)
{
    my @line = split(":", $_);
    $arrayHash[0]->{$line[0]} = $line[1];
}

print Dumper @arrayHash;
