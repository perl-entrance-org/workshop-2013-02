#!/usr/bin/env perl

use strict;
use warnings;

print "??? ";
my $input = <STDIN>;
chomp $input;

my $result = 1;
for my $number ( 1 .. $input ) {
    $result *= $number;
}

print "$result\n";
