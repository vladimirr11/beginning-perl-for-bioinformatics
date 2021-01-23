#!/usr/bin/perl

use strict;
use warnings;

# Mutate DNA using a random number generator to randomly select bases to mutate


# The DNA is chosen to make it easy to see mutations:
my $DNA = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';

my $i;
my $mutant;

# Seed the random number generator.
# time|$$ combines the current time with the current process id
srand(time|$$);

# Mutate the DNA
$mutant = mutate($DNA);

print "\nMutate DNA\n\n";
print "\nHere is the original DNA:\n\n";
print "$DNA\n";
print "\nHere is the mutant DNA:\n\n";
print "$mutant\n";

# Accumulate mutations in a for loop
print "\nHere are 10 more successive mutations:\n\n";

for ($i=0; $i<10; ++$i) {
	$mutant = mutate($mutant);
	print "$mutant\n";
}

exit;



# A subroutine to randomly select an element from an array
sub randomelement{
	my(@array)=@_;
	return $array[rand @array];
}


# A subroutine to select at random one of the four nucleotides
sub randomnucleotide{
	my(@nucleotides) = ('A', 'C', 'G', 'T');
	
	return randomelement(@nucleotides);
}



# A subroutine to randomly select a position in a string.
sub randomposition{
	my($string) = @_;

	return int rand length $string;
}



sub mutate{
	my($dna) = @_;
	my(@nucleotides) = ('A', 'C', 'G', 'T');
	
# Pick a random position in the DNA
	my($position) = randomposition($dna);
	
# Pick a random nucleotide
	my($newbase) = randomnucleotide(@nucleotides);
	
# Insert the random nucleotide into the random position in the DNA
	substr($dna, $position, 1, $newbase);
	return $dna;
}