#!/usr/bin/env perl

use strict;
use warnings;

my @numbers = ( 1 .. 100 );
my $result  = 0;

for my $number ( @numbers ) {
    $result += $number;
}

print "$result\n";
