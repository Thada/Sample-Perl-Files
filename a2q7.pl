#!/usr/bin/perl

#This program takes a filename and a positive integer n as command-line
# arguments.  The program goes through the input file and forms groups of 
# n members.  'namelist.txt' may be used as an example input file.
# Example: 'a2q7.pl namelist 5'

use strict;
use warnings;

#Takes the command-line arguments. First is a file, second is a positive integer
my $file = $ARGV[0];
my $n = $ARGV[1];

#These are variables to hold values for keeping track of each group
my $count = 1;
my $group = 1;

#Opens the file for reading, as well as a new file to store the output
open(FILE, "<", $file) or die "cannot open $file: $!\n";

#Create a loop that will group and separate each name
while(<FILE>) {
	#Prints the group number when $count resets
	if ($count == 1) {
		print "\n$group\n";
	}
	#Prints a name and adds 1 to count
	if ($count != $n) {
		print "$_";
		$count++;
	}
	#Prints a name, changes the group number, and resets $count
	else {
		print "$_";
		$group++;
		$count = 1;
	}
}

close(FILE);
