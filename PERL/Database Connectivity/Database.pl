#!/usr/bin/perl

use strict;
use warnings;

use DBI;

my $driver ="mysql";
my $database = "esdo";
my $dsn = "DBI:$driver:database=$database";
my $userid = "root";
my $password = "root1234";

my $dbh = DBI->connect($dsn, $userid, $password) or die $DBI::errstr;

my $sth = $dbh->prepare("SELECT * FROM p2454_ipa_job_jd_form");

$sth->execute() or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;