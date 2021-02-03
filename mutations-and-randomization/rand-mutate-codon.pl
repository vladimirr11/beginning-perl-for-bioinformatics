#!/usr/bin/perl

#program with subroutine that, given a codon returns a random mutation in the codon

use strict;
use warnings;

print "\nPlease enter randomly chosen codon:";
my $codon = <STDIN>;
chomp $codon;

srand(time|$$);

my $mutant_codon = mutant_codon($codon);

print "\nHere you have a random mutation in your chosen codon:";
print "$mutant_codon\n";

exit;


sub mutant_codon{
	my ($cod) = @_;
	my (@nucleotides) = ('A','T','C','G');
	my $position = int rand length $cod;
	my $rand_nucl;
	do{
		$rand_nucl = $nucleotides[rand @nucleotides];
	}until ($rand_nucl ne substr($cod, $position, 1, $rand_nucl));
	return $cod;
}