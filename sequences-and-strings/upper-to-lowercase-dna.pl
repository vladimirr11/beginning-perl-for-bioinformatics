#!/usr/bin/perl -w

#program that print DNA from uppercase in lowercase with the use of the function tr///

$DNA = 'ACGTGTACGATGACGTA';
print "\n", $DNA;

$DNA1 = $DNA;
$DNA1 =~ tr/ACGT/acgt/;
print "\n",$DNA1,"\n";

exit;