#!/usr/bin/perl

use strict;
use warnings;

#program that picks one of the four nucleotides and then keeps prompting
#until you correctly guess the nucleotide it picked

my $input;
my $rand;
my @nucl = ('A', 'T', 'C', 'G');

srand(time|$$);

do {
	$rand = $nucl[rand @nucl];
	print "Guess the base:";
	$input = <STDIN>;
	if ($input =~ /$rand/){
	print "YES! You guess the nucleotide!!!\n";
	exit;
	}else {
	print "Try again!!!\n";
	}
}until ($input =~ /^\s*q/i);

exit;