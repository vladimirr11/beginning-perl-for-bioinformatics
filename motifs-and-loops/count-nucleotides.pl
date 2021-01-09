#!/usr/bin/perl -w

# Determining frequency of nucleotides

#getting the DNA seq data from a file
print "Enter a file containing a DNA sequence:";
$DNAseq = <STDIN>;
chomp $DNAseq;

#open the file or exit
unless (open(DNASEQ, $DNAseq)){
	print "Can not open \"$DNAseq\"\n";
	exit;
}

#reading the file and store it into an array variable
@DNAseq = <DNASEQ>;
close DNASEQ;

#put the DNA data from the array into a single string and remove the whitespace
$DNAseq = join('', @DNAseq);
$DNAseq =~ s/\s//g;

#separating out each element of the string into an array (each element become own scalar value
#in the array) by reusing the variable @DNAseq
@DNAseq = split('', $DNAseq);

#initializing a count
$count_of_A = 0;
$count_of_T = 0;
$count_of_G = 0;
$count_of_C = 0;
$errors = 0;

#In a loop, looking at each base and determining which of the four type of nucleotide is
#and increment the appropriate type

foreach $base (@DNAseq){
	if ($base eq 'A') {
	++$count_of_A;
	}elsif ($base eq 'T'){
	++$count_of_T;
	}elsif ($base eq 'G'){
	++$count_of_G;
	}elsif ($base eq 'C'){
	++$count_of_C;
	}else {
	print "!!!!!! Error - I do not recognize this base: $base\n";
	++$errors;
	}
}

#print the results
print "A=$count_of_A\n";
print "T=$count_of_T\n";
print "G=$count_of_G\n";
print "C=$count_of_C\n";
print "Errors=$errors\n";

print "Total number of bases:";
$total_bases = $count_of_A + $count_of_T + $count_of_G + $count_of_C;
print $total_bases;

exit;