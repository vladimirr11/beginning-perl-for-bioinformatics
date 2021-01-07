#!/usr/bin/perl -w

#program that print DNA in lowwercase with the use of string directives \L (string directives \U 
#print in uppercase) 

$DNA = 'ACGTGTACGATGACGTA';
print "\n",$DNA,"\n";

$DNA1 = $DNA;
print "\L$DNA1\n";

exit;