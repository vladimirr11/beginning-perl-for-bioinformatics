#!/usr/bin/perl -w

#program that report on the percentage of hydrophobic amino acids 
#in protein sequence

print "Please enter a protein sequence file:";
$protfile = <STDIN>;
chomp $protfile;

unless (open (PROTFILE, $protfile)){
	print "Can not open \"$protfile\"!!\n";
	exit;
}

@protfile = <PROTFILE>;
close PROTFILE;

$protein = join('',@protfile);
$protein =~ s/\s//g;

@protfile = split('', $protein);

$hydraa = 0;
$otheraa = 0;

foreach $AA (@protfile){
	if ($AA eq 'A'){
	++$hydraa;
	}elsif ($AA eq 'I'){
	++$hydraa;
	}elsif ($AA eq 'L'){
	++$hydraa;
	}elsif ($AA eq 'M'){
	++$hydraa;
	}elsif ($AA eq 'F'){
	++$hydra;
	}elsif ($AA eq 'V'){
	++$hydra;
	}elsif ($AA eq 'P'){
	++$hydraa;
	}elsif ($AA eq 'G'){
	++$hydraa;
	}else {
	++$otheraa;
	}
}

$totalaa = $hydraa + $otheraa;

print "HYDROPHOBIC AA=$hydraa\n";
print "OTHER AA=$otheraa\n";
print "TOTAL AA=$totalaa\n";

$prohydraa = ($hydraa/$totalaa) * 100;
print "% HYDROPHOBIC AA=$prohydraa\n";
$prootheraa = 100 - $prohydraa;
print "% OTHER AA=$prootheraa";

exit;