#!/usr/bin/perl
use warnings;
use strict;
die "program x y density" unless (scalar(@ARGV) == 3);
my ($x, $y, $density) = @ARGV;
my @letters = ('0'..'9');
my $first = $letters[int rand @letters];
my $second = $letters[int rand @letters];
my $third = $letters[int rand @letters];
print "$y$first$second$third\n";
for (my $i = 0; $i < $y; $i++) {
    for (my $j = 0; $j < $x; $j++) {
    if (int(rand($y) * 2) < $density) {
        print "$second";
        }
        else {
        print "$first"; }
        }
        print "\n"; }
