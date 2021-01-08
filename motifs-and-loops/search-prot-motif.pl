#!/usr/bin/perl -w

#program for searching motifs in a file 

print "\nPlease enter a protein file name:";
$protfilename = <STDIN>;

#remove the new line at the end of $protfilename
chomp $protfilename;

#open the file or exit
unless (open(PROTFILENANE, $protfilename)){
	print "Cannot open a \"$protfilename\"n\n";
	exit;
}

@protein = <PROTFILENANE>;
close PROTFILENANE;

#put the protein seq data into a single string
$protein = join('', @protein);

#remove whitespace
$protein =~ s/\s//g;

#in a loop, ask the user for motif, search for motif, and report it found
#exit if no motif entered
do {
	print "Enter a motif to search for:";
	$motif = <STDIN>;
	chomp $motif;
	if ($protein =~ /$motif/){
	print "I found it!\n\n";
	}else {
	print "I could not find it!\n\n";
	}
	
}until ($motif =~ /^\s*$/);


exit;