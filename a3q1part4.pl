#!/usr/bin/perl

#This program matches any string that contains any number of backslashes
# followed by any number of asterisks (any number including 0).

use strict;
use warnings;

#Variable to compare the pattern with
print "Please enter a string to check for any matches: ";
my $string = <STDIN>;
chomp $string;


#A loop to display if there are any matches
if ($string =~ /(\\*\**)/) {
	print $`, "<", $1, ">", $';
}
else {
	print "No match. \n";
}
