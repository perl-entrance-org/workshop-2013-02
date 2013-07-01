#!/usr/bin/env perl
use strict;
use warnings;

print "a >>> ";
chomp(my $input1 = <STDIN>);

print "b >>> ";
chomp(my $input2 = <STDIN>);

print "$input1 + $input2 = " . ($input1 + $input2) . "\n";
print "$input1 - $input2 = " . ($input1 - $input2) . "\n";
print "$input1 * $input2 = " . ($input1 * $input2) . "\n";
print "$input1 / $input2 = " . ($input1 / $input2) . "\n";
