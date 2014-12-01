#!/usr/bin/perl

#This program checks to see if a regex pattern will match with a string,
# both taken from user input.

use strict;
use warnings;

#Variable to hold the pattern to search for
print "Please enter a regex pattern (without start and end slashes): ";
my $pattern = <STDIN>;
chomp $pattern;

#Variable to compare the pattern with
print "Please enter a string to check for any matches: ";
my $string = <STDIN>;
chomp $string;


#A loop to display if there are any matches
if ($string =~ /($pattern)/) {
	#The matched string will be highlighted, i.e. surrounded by < and >
	print $`, "<", $1, ">", $';
}
else {
	print "No match. \n";
}
