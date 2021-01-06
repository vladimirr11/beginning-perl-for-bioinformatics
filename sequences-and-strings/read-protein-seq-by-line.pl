#!/usr/bin/perl -w

# reading protein sequence from a file, take 1

$protfilename = 'runx2.txt';
open(PROTEINFILE, $protfilename);
$protein = <PROTEINFILE>;
print "\nHere is the first line of my protein sequence:\n\n";
print $protein;

$protein = <PROTEINFILE>;
print "\nHere is the second line of my protein sequence:\n\n";
print $protein;

$protein = <PROTEINFILE>;
print "\nHere is the third line of my protein sequence:\n\n";
print $protein;

close PROTEINFILE;

exit;