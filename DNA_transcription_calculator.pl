use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.18;

no warnings 'experimental::smartmatch';

my $DNA_sequence = "";

while ($DNA_sequence eq "") {
  print "Enter a DNA sequence to calculate: ";

  $DNA_sequence = <STDIN>;

  chomp $DNA_sequence;
}


my $RNA_sequence;
my $base;
my $index = 1;

foreach $base (split //, $DNA_sequence) {
  if ($base eq "T" || $base eq "t") {
    $RNA_sequence .= "A";
    $index++;
    next;
  }
  elsif ($base eq "A" || $base eq "a") {
    $RNA_sequence .= "U";
    $index++;
    next;
  }
  elsif ($base eq "C" || $base eq "c") {
    $RNA_sequence .= "G";
    $index++;
    next;
  }
  elsif ($base eq "G" || $base eq "g") {
    $RNA_sequence .= "C";
    $index++;
    next;
  }
  else {
    $RNA_sequence = "";
    say "DNA sequence contains a illegal base at \"$index\".";}
    last;
}

$RNA_sequence = reverse $RNA_sequence;
say "The corresponding sequence of RNA transcript is: ", $RNA_sequence;
