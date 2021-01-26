#!/usr/bin/perl

use strict;
use warnings;

#program that asks you to pick an amino acid and then keeps (randomly)
#guessing which amino acid you picked

print "\nPlease choose one of the 20th amino acid and enter it one letter abbreviation:";
my $aa = <STDIN>;

my $amino_acid;
my $input;

my @AA = ('R','N','D','B','C','E','Q','Z','G','H','I','L','K','M','F','P','S','T','W','Y','V');

srand(time|$$);

do {
	for (my$k=0; $k<20; $k++){
	$amino_acid = $AA[rand @AA];
	}
	print "\nIs this the AA:$amino_acid\n\n";
	print "If is not please press enter to proceed or if is type \"YES\"!:";
	$input = <STDIN>;
}until ($input =~ /YES/i);

exit; 