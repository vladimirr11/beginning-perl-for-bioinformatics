#!/usr/bin/perl -w

#demonstration of "scalar context" and "list context"

@bases = ('A','T','G','C');
print "\n",@bases,"\n";

$a = @bases;
print $a,"\n";

($a) = @bases;
print $a,"\n";

exit;