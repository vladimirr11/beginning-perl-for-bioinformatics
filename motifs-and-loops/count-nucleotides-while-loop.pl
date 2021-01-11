#!/usr/bin/perl -w

#determining frequency of nucleotides, take 3

#get the DNA sequence data
print "Please type the filename of the DNA sequence data:";
$DNAseq = <STDIN>;
chomp $DNAseq;

#does the file exist?
unless (-e $DNAseq){
	print "The file \"$DNAseq\" does not seem to exist!\n";
	exit;
}

#can we open the file?
unless (open (DNASEQ, $DNAseq)){
	print "Can not open the \"$$DNAseq\"!\n";
	exit;
}

@DNA = <DNASEQ>;
close DNASEQ;

$DNA = join('', @DNA);
$DNA =~ s/\s//g;

# Initialize the counts.
$A = 0;
$T = 0;
$G = 0;
$C = 0;
$E = 0;

# Use a regular expression "trick", and five while loops,
# to find the counts of the four bases plus errors
while ($DNA =~ /A/g){$A++}
while ($DNA =~ /T/g){$T++}
while ($DNA =~ /G/g){$G++}
while ($DNA =~ /C/g){$C++}
while ($DNA =~ /[^ATGC]g/){$E++}

print "A=$A T=$T G=$G C=$C Errors=$E\n";

#also write the results to a file called "countbase"
$output = "countbase";

unless (open(COUNTBASE, ">$output")){
	print "Can not open file \"$output\" to write to!\n";
	exit;
}

print COUNTBASE "A=$A C=$C G=$G T=$T errors=$E\n";
close COUNTBASE;

exit;