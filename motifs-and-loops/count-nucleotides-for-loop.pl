#!/usr/bin/perl -w

#determining frequency of nucleotides, take 2

#get the DNA sequence data
print "Please type the file name of DNA seqence data:";
$DNAseq = <STDIN>;
chomp $DNAseq;

#does the file exist
unless (-e $DNAseq){
	print "File \"$DNAseq\" does not seem to exist!\n";
	exit;
}

#can we open the file
unless (open(DNASEQ, $DNAseq)){
	print "Can not open \"$DNAseq\"\n";
	exit;
}

#read the file in an array and close it
@DNA = <DNASEQ>;
close DNASEQ;

#turn the array into a string and remove the whitespace
$DNA = join('', @DNA);
$DNA =~ s /\s//g;

#initialize the counts
$count_of_A = 0;
$count_of_T = 0;
$count_of_G = 0;
$count_of_C = 0;
$errors = 0;

#In a loop, look at each base in turn, determine which of the
#four types of nucleotides it is, and increment the
#appropriate count
for ($position = 0; $position<length$DNA; ++$position){

	$base = substr($DNA, $position, 1); 
	
	if ($base eq 'A'){
	++$count_of_A;
	}elsif ($base eq 'T'){
	++$count_of_T;
	}elsif ($base eq 'G'){
	++$count_of_G;
	}elsif ($base eq 'C'){
	++$count_of_C;
	}else {
	print "!!!!!!!! Error - I don't recognize this base: $base\n";
	++$errors;
	}
}

# print the results
print "A=$count_of_A\n";
print "T=$count_of_T\n";
print "G=$count_of_G\n";
print "C=$count_of_C\n";
print "Errors=$errors\n";
print "Total number of bases:";

$total_bases = $count_of_A+$count_of_T+$count_of_G+$count_of_C;
print $total_bases;

exit;