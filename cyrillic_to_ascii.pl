#!/usr/bin/perl  
# convert cyrillic text to ascii from a file
use strict;
print "Starting ...\n";
my %cyr_lat = ('а' => "a", 'б' => "b", 'т' => "t", 'с' => "s", 'ч' => "ch", 'й' => "i", 'ы' => "i",); # add more
my %ascii = ('1' => "1", '2' => "2", '3' => "3", '4' => "4", '5' => "5", '6' => "6", '7' => "7", '8' => "8", '9' => "9", '-' => "-", 'T' => "T",);

my $filename = "File.txt";
my $last_string = '';

open (FILE_r, $filename);
while (<FILE_r>) { 
	chomp;
	my $bytes = $_;
	my @array = split(//, $bytes);
	my $i = 0;
	foreach (@array) {
		my $k = $array[$i];
		if ($array[$i] eq $ascii{$k}) {
			$last_string .= $ascii{$k};
			$i = $i + 1;
			}
		else {
			my $string = $array[$i].$array[$i+1];
			$last_string .= $cyr_lat{$string};
			$i = $i + 2;
		};
	};
	print $last_string,"\n";
	$last_string = '';
};
close (FILE_r);
