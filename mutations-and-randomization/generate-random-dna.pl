#!/usr/bin/perl

use strict;
use warnings;

# Generate random DNA using a random number generator to randomly select bases

my $size_of_set = 12;
my $maximum_length = 30;
my $minimum_length = 15;

my @random_DNA = ( );

# Seed the random number generator.
# time|$$ combines the current time with the current process id
srand(time|$$);

@random_DNA = make_random_DNA_set($minimum_length, $maximum_length, $size_of_set);

print "Here is an array of $size_of_set randomly generated DNA sequences\n";
print "with lengths between $minimum_length and $maximum_length:\n\n";

foreach my $dna(@random_DNA) {
	print "$dna\n";
}

print "\n";

exit;



# Make a set of random DNA
sub make_random_DNA_set {
	my ($minimum_length, $maximum_length, $size_of_set) = @_;
	my $length;
	my $dna;
	my @set;
# Create set of random DNA
	for (my$i=0; $i<$size_of_set; ++$i) {
	$length = randomlength($minimum_length,$maximum_length);
	$dna = make_random_DNA($length);
	push(@set, $dna);
	}
	return @set;
}


# A subroutine that will pick a random number from
# $minlength to $maxlength, inclusive.
sub randomlength{
	my($minlength,$maxlength) = @_;

	return(int(rand($maxlength-$minlength+1))+$minlength);
}


# Make a string of random DNA of specified length.
sub make_random_DNA{
	my($length) = @_;
	my $dna;
	for (my$i=0; $i<$length; ++$i) {
	$dna .= randomnucleotide( );
	}
	return $dna;
}


# Select at random one of the four nucleotides
sub randomnucleotide{
	my(@nucleotides) = ('A', 'C', 'G', 'T');

	return randomelement(@nucleotides);
}


# Randomly select an element from an array
sub randomelement{
	my(@array) = @_;
	return $array[rand @array];
}