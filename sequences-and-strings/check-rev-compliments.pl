#!/usr/bin/perl -w

#checks if two strings given as arguments are reverse
#complements of each other

print "Please enter a short DNA sequence:";
$DNA1 = <STDIN>;
chomp $DNA1;

print "Please enter another short DNA sequence:";
$DNA2 = <STDIN>;
chomp $DNA2;

$revDNA2 = reverse$DNA2;
$revDNA2 =~ tr/ATGC/TACG/;

if ($DNA1 eq $revDNA2){
	print "$revDNA2 is reverse compliment strand of $DNA1";
	}else {
	print "$revDNA2 is not reverse compliment strand of $DNA1";
}

exit;