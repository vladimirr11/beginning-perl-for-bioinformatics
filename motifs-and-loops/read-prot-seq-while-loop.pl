#!/usr/bin/perl -w

#reading protein sequence data from a file, take 4

$ERG = 'ERG.txt';

unless (open(ERG,$ERG)){
	print "Could not open $ERG!\n";
	exit;
}

while ($ERG = <ERG>){
	print "Here is the next line of the file:\n";
	print $ERG;
}

close ERG;

exit;