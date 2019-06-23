#!/usr/bin/perl
use warnings;
use strict;
die "program x y density" unless (scalar(@ARGV) == 3);
my ($x, $y, $density) = @ARGV;
my @letters = ('a'..'z');
my $first = $letters[int rand @letters];
my $second = $letters[int rand @letters];
my $third = $letters[int rand @letters];
my $nbr = int rand(5000000000);
print "$nbr$first$second$third\n";
for (my $i = 0; $i < $y; $i++) {
    for (my $j = 0; $j < $x; $j++) {
    if (int(rand($y) * 2) < $density) {
        print "$second";
        }
        else {
        print "$first"; }
        }
        print "\n"; }
