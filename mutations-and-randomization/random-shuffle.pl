#!/usr/bin/perl


#program with subroutine that randomly shuffle the elements of an array

use strict;
use warnings;

my @AA = ('R','N','D','B','C','E','Q','Z','G','H','I','L','K','M','F','P','S','T','W','Y','V');

print "\nHere is the original array:";
print "@AA\n";
print "Here is the shuffled array:";

srand(time|$$);

my @array = shuffled_array (@AA);
print "@array\n";

exit;


sub shuffled_array{
	my(@nucl) = @_;
	for (my$j=0; $j<scalar@AA; ++$j){
	my $position = int(rand(scalar@AA));
	my $pop = pop@AA;
	splice (@AA, $position, 0, $pop);
	}return @AA;	
}