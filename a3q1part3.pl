#!/usr/bin/perl

#This program will take a string as user input and check if it contains at
# least one 'm' followed by any number of 'n' characters (including none).

use strict;
use warnings;

#Variable to compare the pattern with
print "Please enter a string to check for any matches: ";
my $string = <STDIN>;
chomp $string;


#A loop to display if there are any matches
if ($string =~ /(m+n{0,})/) {
	print $`, "<", $1, ">", $';
}
else {
	print "No match. \n";
}
