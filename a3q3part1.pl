#!/usr/bin/perl

#This script prints any input line that matches foo and bar.

use strict;
use warnings;

#Initialize the variable to store user input
my $input;

#Initialize the variable to store any lines that match the pattern in the regex
my $output = "";

print "Please enter some text. CTRL-D to exit in UNIX, CTRL-Z then ENTER in WINDOWS: \n";

#A loop to take the user's input. CTRL-Z then ENTER or CTRL-D to exit the loop
while($input = <STDIN>) {

	#A loop that checks if "foo" and "bar" are in a single line somewhere
	if (($input =~ /foo/) && ($input =~ /bar/)) {
		$output = $output . $input;
	}
}

#If $output has not been changed and no lines contained "foo" and "bar" then
# this will print to the screen "No match."
if ($output =~ /^$/) {
		print "No match. \n";
	}
else {
		print "Matched lines of text: \n", $output;
}