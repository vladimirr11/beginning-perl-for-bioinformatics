#!/usr/bin/perl -w

#demonstration of some array function

#printing each element of an array

@bases = ('A','T','G','C');

print "\nHere are the elements of the array:\n";
print "\nFirts element:";
print $bases[0];
print "\nSecond element:";
print $bases[1];
print "\nThird element:";
print $bases[2];
print "\nFourth element:";
print "$bases[3]\n";

#or element may be printed one by another like this

@bases = ('A','T','G','C');
print "\nHere are the elements of the array printed one by another:";
print @bases,"\n";

#taking an element of the end of the array with the function pop

@bases = ('A','T','G','C');
$base = pop@bases;
print "\nHere is the element removed from the end of the array:";
print $base, "\n\n";
print "Here is the remaining elements:";
print @bases, "\n";

#taking element off of the beginning of the array with the function shift

@bases = ('A','T','G','C');
$base2 = shift@bases;
print "\nHere is the element removed from the beginning of the array:";
print $base2, "\n\n";
print "Here is the remaining elements:";
print @bases, "\n";

#putting element of the beginning of the array which is took off of 
#the end of the same array with the function unshift

@bases=('A','T','G','C');
$base3=pop@bases;
unshift (@bases,$base3);
print "\nHere is the element from the end put in the beginning:";
print @bases,"\n";

#putting element on the end of the array with push

@bases=('A','T','G','C');
$base2=shift@bases;
push (@bases,$base2);
print "\nHere is the element of the beginning put in the end of the array:";
print @bases,"\n";

#reversing the array with the function reverse 

@bases = ('A','T','G','C');
@reverse = reverse@bases;
print "\nHere is the reversed array:";
print @reverse,"\n";

#getting the lenght of the array with scalar

@bases = ('A','T','G','C');
print "\nHere is the lenght of the array:";
print scalar@bases,"\n";

#inserting element at an arbitrary place in an array using the perl splice function

@bases = ('A','T','G','C');
splice (@bases,2,0,'X');
print "\nHere is the array with inserted element after the second position:";
print @bases,"\n";

exit;