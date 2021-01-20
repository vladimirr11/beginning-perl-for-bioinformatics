#!/usr/bin/perl -w

use warnings;
use strict;

#program that use subroutine to concatanate two DNA strings

print "Here is the first DNA seq:";
my $DNA1 = 'AGTCAGTGAGGTA';
print $DNA1, "\n";

print "Here is the second DNA seq:";
my $DNA2 = 'AGTTGTGGGTGC';
print $DNA2, "\n";

my $DNA = conct(my $conctdna);
print "Here are the two concataneted strings:$DNA";

exit;


sub conct{
	my $conctdna = @_;
	$conctdna = $DNA1.=$DNA2;
	return $conctdna;
}