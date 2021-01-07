#!/usr/bin/perl -w

#reverse transcribe RNA to DNA

$RNA = 'AUUUGCUUCGAUAAACGUCUUGCAGCAUACGUUACG';
print "\nHere is the starting RNA:";
print $RNA;

$DNA = reverse$RNA;
print "\nHere is the reverse transcribed DNA:";

$DNA =~ tr/AUGC/TACG/;
print $DNA,"\n";

exit;