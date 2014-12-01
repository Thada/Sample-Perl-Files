#!/usr/bin/perl

#This program takes in the command-line the name of a file as an argument.
# The input file contains line numbers, and the program will remove all 
# line numbers and store the output in a file called 'output.txt'. The
# file 'input.txt' in this directory may be used as an example input argument.

use strict;
use warnings;


#Takes the command-line argument, which is a file
my $file = $ARGV[0];

#Opens the file for reading, as well as a new file to store the output
open(FILE, "<", $file) or die "cannot open $file: $!\n";
open(OUTPUT, ">output.txt") or die "cannot open output.txt: $!\n";

#A loop to store the edited content of the argument file in a new file
#
while(<FILE>) {
	#If the line is just a digit
	if ($_ =~ /^\d+$/) {
		s/^\d+//;
		print OUTPUT "$_";
	}
	else {
		s/^\d+\s//;
		print OUTPUT "$_";
	}
}

#Closing the files and displaying confirmation
close(FILE);
close(OUTPUT);
print "Edit complete! File stored in 'output.txt'.";