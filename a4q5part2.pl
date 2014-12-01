#!/usr/bin/perl

#This script goes through a directory and finds all files with filenames
# that do not contain the suffix .html and are greater than 20 lines.
use strict;
use warnings;

#@files will be the current directory
my @files = <*>;

#A variable to hold the number of lines in each opened file
my $count = 0;

#This loop will open each file in the @files array (made up of each file in the current
# directory), check to see if the file does not end in .html, and will count the
# number of lines in each file.  If the file is not a .html file and is 20 or more lines,
# it will print the name of the file.

foreach my $file (@files) {
	if ($file !~ /.html$/) {
		open(FILE, "<", $file) or die "cannot open $file: $!\n";
		while(<FILE>) {
			$count = $count + 1;
		}
		if ($count >= 20) {
			print $file, "\n";
		}
		close(FILE);
	}
	$count = 0;
}