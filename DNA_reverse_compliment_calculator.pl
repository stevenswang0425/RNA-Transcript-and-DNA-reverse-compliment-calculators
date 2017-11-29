use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.18;

no warnings 'experimental::smartmatch';

my $fwd_sequence = "";

while ($fwd_sequence eq "") {
  print "Enter a DNA sequence to calculate: ";

  $fwd_sequence = <STDIN>;

  chomp $fwd_sequence;
}


my $rev_sequence;
my $base;
my $index = 1;

foreach $base (split //, $fwd_sequence) {
  if ($base eq "T" || $base eq "t") {
    $rev_sequence .= "A";
    $index++;
    next;
  }
  elsif ($base eq "A" || $base eq "a") {
    $rev_sequence .= "T";
    $index++;
    next;
  }
  elsif ($base eq "C" || $base eq "c") {
    $rev_sequence .= "G";
    $index++;
    next;
  }
  elsif ($base eq "G" || $base eq "g") {
    $rev_sequence .= "C";
    $index++;
    next;
  }
  else {
    $rev_sequence = "";
    say "DNA sequence contains a illegal base at \"$index\".";}
    last;
}

$rev_sequence = reverse $rev_sequence;
say "The corresponding sequence of reverse compliment is: ", $rev_sequence;
