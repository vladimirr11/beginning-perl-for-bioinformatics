#!/usr/bin/perl -w

#program with a subroutine to append sequence to DNA

$dna = 'CGACGTCTTCTCAGGCGA';

#call to the subroutine "addACGT".
$longer_dna = addACGT($dna);
print "I added ACGT to $dna and got $longer_dna\n\n";

exit;

#define subroutine "addACGT"
sub addACGT {
	my($dna) = @_;
	$dna .= 'ACGT';
	return $dna;
}