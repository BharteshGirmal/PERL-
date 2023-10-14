#!/usr/bin/perl

use strict;
use warnings;

print "Sending Emails \n";


my $to = 'sp922989.ttl@tatamotors.com';
my $from = 'bg925781.ttl@tatamotors.com';
my $subject = 'Sending Email from Perl Script';
my $message = '<h1>Hello shaileshm do your work properly Regards Bhartesh</h1>';

open(MAIL, "|/usr/sbin/sendmail -t");

print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n";
print MAIL $message;

close(MAIL);

print "Email Sent Successfully ...\n";