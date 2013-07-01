#!/usr/bin/env perl
use strict;
use warnings;

my $answer = 'moznion';
chomp (my $input = <STDIN>);

if ($answer eq $input) {
    print "ok!\n";
} else {
    print "ng!\n";
}
