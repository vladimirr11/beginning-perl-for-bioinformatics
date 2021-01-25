#!/usr/bin/perl

use strict;
use warnings;

# Calculate the average percentage of positions that are the same
# between two random DNA sequences, in a set of 10 sequences.

my $percent;
my @percentages;
my $result;

my @random_DNA = ( );


# Seed the random number generator.
srand(time|$$);


# Generate the data set of 10 DNA sequences.
@random_DNA = make_random_DNA_set(10, 10, 10);

# Iterate through all pairs of sequences
for (my$k=0; $k<scalar@random_DNA-1; ++$k) {
	for (my$i = ($k+1); $i<scalar@random_DNA; ++$i){
	
# Calculate and save the matching percentage
	$percent = matching_percentage($random_DNA[$k], $random_DNA[$i]);
	push(@percentages, $percent);
	}
}

$result = 0;

foreach $percent(@percentages) {$result += $percent};

$result = $result/scalar(@percentages);

#Turn result into a true percentage
$result = int($result * 100);

print "In this run of the experiment, the average percentage of \n";
print "matching positions is $result%\n\n";

exit;



# Subroutine to calculate the percentage of identical bases in two
# equal length DNA sequences
sub matching_percentage {
	my($string1,$string2) = @_;
# we assume that the strings have the same length
	my($length) = length($string1);
	my($position);
	my($count) = 0;
	
	for ($position=0; $position<$length; ++$position) {
		if(substr($string1, $position, 1) eq substr($string2, $position, 1)) {
		++$count;
		}
	}
	return $count/$length;
}


# Subroutine to make a set of random DNA
sub make_random_DNA_set {
	my($minimum_length, $maximum_length, $size_of_set) = @_;
	my $length;
	my $dna;
	my @set;
# Create set of random DNA
	for (my$i=0; $i<$size_of_set; ++$i) {
	$length = randomlength($minimum_length, $maximum_length);
	$dna = make_random_DNA($length);
	push(@set, $dna);
	}
	return @set;
}


# A subroutine that will pick a random number from $minlength to $maxlength, inclusive.
sub randomlength {
	my($minlength, $maxlength) = @_;
	
# Calculate and return a random number within the desired interval.
	return (int(rand($maxlength - $minlength + 1)) + $minlength);
}


# Make a string of random DNA of specified length.
sub make_random_DNA {
	my($length) = @_;
	my $dna;
	for (my$i = 0; $i<$length; ++$i) {
		$dna .= randomnucleotide( );
		}
	return $dna;
}


# Select at random one of the four nucleotides
sub randomnucleotide {
	my(@nucleotides) = ('A','C','G','T');
	return randomelement(@nucleotides);
}


# randomly select an element from an array
sub randomelement {
	my(@array) = @_;
	return $array[rand @array];
}	