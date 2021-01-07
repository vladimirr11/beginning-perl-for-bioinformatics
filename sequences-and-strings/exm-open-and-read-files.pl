#!/usr/bin/perl -w

#open and reading 2 files

$ERG = 'ERG.txt';
open (ERG, $ERG);
@ERG = <ERG>;
print "\nHere is the protein sequence of the TF ERG:";
print "\n",@ERG,"\n";

$RUNX2 = 'runx2.txt';
open (RUNX2, $RUNX2);
@RUNX2 = <RUNX2>;
print "\nHere is the protein sequence of the TF RUNX2:";
print "\n",@RUNX2,"\n";

exit;