#!/usr/bin/perl -w

#if-elsif-else conditionals

$protein = 'MKQQKMALLAMKLAMQ';

if($protein eq 'MKDAA'){
	print "MKDAA\n";
}elsif($protein eq 'OAAMKMAKQ'){
	print "OAAMKMAKQ\n";
}elsif($protein eq 'MKQQMALLAMKLAMQ'){
	print "the sequence!";
}else{
	print "Is \"$protein\" a peptide? This program is not sure.\n";
} 

exit;