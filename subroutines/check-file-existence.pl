#!/usr/bin/perl -w

use strict;
use warnings;

#check if DNA file exist

print "Please enter a DNA file:";

my $DNAf = <STDIN>;
chomp $DNAf;
open (DNAFILE, $DNAf);
my @DNA = <DNAFILE>;

my @es = check_file(my$e, my$s);
print $es[0];
print $es[1];

exit;


sub check_file {
	my ($e, $s) = @_;
	$e = (-e DNAFILE);
	$s = (-s DNAFILE);
	if ($e == 1){
	return "The \"$DNAf\" file exist!";
	}elsif ($s == 1){
	return "The \"$DNAf\" file has nonzero size!";
	}
}