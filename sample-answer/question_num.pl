#!/usr/bin/env perl
use strict;
use warnings;

my $answer = 10;
chomp(my $input = <STDIN>);

my $result;
if ($answer == $input) {
  $result = "ok!\n";
} elsif ($answer - 5 <= $input && $answer + 5 >= $input) {
  $result = "near!\n";
} elsif ($answer < $input) {
  $result = "too big!\n";
} else {
  $result = "too small!\n";
}

print $result;
