#!/usr/bin/perl

use strict;
use warnings;

#program that mutate protein sequence

my $amino_acids = 'RRRRRRRRRRRRRRRRRRRRRRRR';

srand(time|$$);

my $mutant_aas = mutate_protein($amino_acids);

print "\nHere is the original protein sequence:\n\n";
print "$amino_acids\n";
print "\nHere is the mutant protein sequence:\n\n";
print "$mutant_aas\n";

print "\nHere are 10 more successive mutations:\n\n";

for (my $i=0; $i<10; ++$i){
	$mutant_aas = mutate_protein($mutant_aas);
	print "$mutant_aas\n";
}

exit;


sub mutate_protein {
	my ($seq) = @_;
	my (@aa) = ('R','N','D','B','C','E','Q','Z','G','H','I','L','K','M','F','P','S','T','W','Y','V');
	my $position = int rand length $seq;
	my $amino_a = $aa[rand @aa];
	substr($seq, $position, 1, $amino_a);
	return $seq;
}