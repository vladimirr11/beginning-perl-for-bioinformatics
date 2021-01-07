#!/usr/bin/perl -w

#program which reverse the lines of a file

$ERG = 'ERG.txt';
open (ERG, $ERG);

@ERG = <ERG>;
print "\nHere is the protein sequence of the TF ERG:\n";
print @ERG,"\n";

@revERG = reverse@ERG;
print "\nHere is the reverse protein sequence of the TF ERG:\n";
print @revERG;

exit;