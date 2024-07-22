#!/usr/bin/perl

use strict;
use warnings;

print "Sending Emails \n";


my $to = 'bharteshgirmal@gmail.com';
my $from = 'bharteshgirmal@gmail.com';
my $subject = 'Sending Email from Perl Script';
my $message = '<h1>Hello  Bhartesh</h1>';

open(MAIL, "|/usr/sbin/sendmail -t");

print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n";
print MAIL $message;

close(MAIL);

print "Email Sent Successfully ...\n";
