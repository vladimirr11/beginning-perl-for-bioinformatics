#!/usr/bin/perl -w

use strict;
use warnings;

#program that calculate the reverse complement strand of DNA with the help of 
#the function substr

print "\nHere is the original DNA:";
my $DNA = 'ATGACACCCTGACCG';

print $DNA, "\n";
my $rev = reverse$DNA;
print "\nHere is the reverse complement strand of the original DNA:";

for (my $b=0; $b<length$rev; ++$b){
	my $sub = substr($rev,$b,1);
	if ($sub =~ /A/g){
	print 'T';
	}elsif ($sub =~ /G/g){
	print 'C';
	}elsif ($sub =~ /T/g){
	print 'A';
	}elsif ($sub =~ /C/g){
	print 'G';
	}
}

exit;