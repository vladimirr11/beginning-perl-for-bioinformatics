#!/usr/bin/perl -w

use strict;

#program that verify if string is DNA sequence or not

my $subb = message(my $DNA);
print $subb;

exit;

sub message{
	print "Please enter a DNA seq:";
	my ($DNA) = @_;
	$DNA = <STDIN>;
	if ($DNA =~ /[A*]|[T*]|[G*]|[C*]/g){
	return "That is OK!";
	}else {
	return "That is not a DNA!";
	}
}