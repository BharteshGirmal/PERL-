#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my %hashofHash =( Skills =>{ Perl=> 1,
                             Python=>2,
                             Java =>3},
                 Teams => { Tube=> 10,
                            Geeks=>2,
                            Rabbit=>4}
);

print "$_ => ", $hashofHash{$_}, "\n" for keys %hashofHash,"\n";

foreach ( keys %hashofHash)
{
    my %hash = %{$hashofHash{$_}};
    foreach my $key (keys %hash)
    {
        print "$key     =>      $hash{$key}\n";
    }
}

print "For Hash Reference\n";
my $hashofHash2 ={ Skills =>{ Perl=> 1,
                             Python=>2,
                             Java =>3},
                 Teams => { Tube=> 10,
                            Geeks=>2,
                            Rabbit=>4}
};

print "$_   =>", $hashofHash2->{$_},"\n" for keys %{$hashofHash2};

foreach(%{$hashofHash2})
{
    my %hash = %{$hashofHash2->{$_}};
    foreach my $key (keys %hash)
    {
        print "$key     =>  $hash{$key}\n";
    }
}

my @array =qw(Perl Shell Unix Java DNS LDAP Perl Shell Unix Yahoo Goggle Amazon Flipkart Yahoo Goggle );
my (%hash , $key, $string);

foreach (@array){
    if($_ =~ m(Perl|Unix|Shell|Java|DNS|LDAP)){
        checkKeys("Skills", $_);
    }
    else{
        checkKeys("Teams", $_);
    }
}

sub checkKeys{
    my ($key, $string)=@_;

    if( exists($hash{$key}) and exists($hash{$key}{$string}) ){
        $hash{$key}{$string}++;
    }
    else{
        $hash{$key}{$string}=1;
    }
}

print Dumper(\%hash);
