#!/usr/bin/perl
use strict;
use warnings;

use Mime::Lite;

my $mail -MIME::Lite->new(
            From =>'sp922989.ttl@tatamotors.com',
            to => 'bg925781.ttl@tatamotors.com',
            Subject => "Report",
            Type => 'multipart/mixed'
);

$mail->attach(
        Type => "TEXT",
        Data => 'Perl Status Report'
)
$mail->attach(
        Encoding => 'base64',
        Type => "TEXT/CSV",
        Path => "/new",
        Filename => "$mail_file",
        Disposition => 'attachment'
);

$mail->send;
