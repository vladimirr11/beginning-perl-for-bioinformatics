#!/usr/bin/perl -w

#reading protein sequence from a file, take 2

$protfilename='runx2.txt';
open (PROTEINFILE, $protfilename);
@protein=<PROTEINFILE>;

print "\nHere is a fasta file protein sequence of the TF Runx2:\n\n";
print @protein;

close PROTEINFILE;

exit;