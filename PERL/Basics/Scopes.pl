#!/use/bin/perl

# use strict;
# use warnings;



sub myFunction{
    my $mystring ="Perl Programming";
    local $mylocal="Local";
    print "Inside the Subroutine Function : $mystring\n";
    print "Inside the Subroutine Local variable : $mylocal\n";
}
    print "Outside the Subroutine Function : $mystring\n"; # empty
    print "Outside the Subroutine Local variable : $mylocal\n";



# myFunction();

sub localfunction{
    my $Mystring = "Mystring";
    local $localString="Local";
    print "$Mystring\n";
    sub1()
}

sub sub1{
    print "$Mystring\n";
    print "$localString\n";
}

localfunction();