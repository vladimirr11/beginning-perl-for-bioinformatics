#!/usr/bin/perl -w

#switches two bases in a DNA string at specified positions
#with the help of 'substr' method

print "Please enter DNA sequence:";
$DNA = <STDIN>;
chomp $DNA;

print "Please enter two DNA bases:";
$bases = <STDIN>;
chomp $bases;

for (substr($DNA,-2,2)){
	$_ = $bases; 
	print "Here is the modified DNA sequence (at the end) with your two entry bases:$DNA";
}

exit;
