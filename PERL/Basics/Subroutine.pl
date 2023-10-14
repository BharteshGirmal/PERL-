#!/usr/bin/perl

use strict;
use warnings;

my @lines=("google.com 100", "yahoo.com 101", "au.org 102", "gitam.org 103","microsoft.com 104", "flipkart.com 105");

my $msg ="org";

sub displaycomLines
{
    $msg=shift;
    foreach(@lines)
    {
        if($_ =~ /$msg/)
       { 
            print "$_\n";
        }
    }
}

sub displaycomLines2
{
    my $msg=shift;
    my $code=shift;
    foreach(@lines)
    {
        if($_ =~ /$msg.*$code/)
       { 
            print "$_\n";
        }
    }
}
sub displaycomLines3
{
    my ($msg, $code)= @_;
    foreach(@lines)
    {
        if($_ =~ /$msg.*$code/)
       { 
            print "$_\n";
        }
    }
}

sub appendDomain{
    @lines = @_;

    foreach(@lines)
    {
        if ($_ =~ /com/){
            $_.=": COM";
        }
        else{
            $_.=": ORG";
        }
    }

    return(@lines);
}


displaycomLines($msg);
print "More than 1 parameters\n";
displaycomLines2("com", 101);
print "using \"@_\" \n";
displaycomLines2("com", 101);

@lines = appendDomain(@lines);

print @lines,"\n";



my %domainAndCodes =("google.com" => 100, "yahoo.com"=>200, "microsoft.com"=>300, "gitam.org"=>422, "au.org"=>301, "flipkart.com"=>302);


sub appendDominHash{

    %domainAndCodes = @_;

    foreach( keys %domainAndCodes)
    {
        if( $_ =~ /com/){
            $domainAndCodes{$_}--;
        }
        else{
            $domainAndCodes{$_}++;
        }
    }

    return(%domainAndCodes);
}
print %domainAndCodes,"\n";
%domainAndCodes = appendDominHash(%domainAndCodes);
while(my($key, $value)= each (%domainAndCodes))
{
    print "$key =>  $value \n";
}