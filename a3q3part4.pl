#!/usr/bin/perl

#This script takes user input and matches any line that has the same word
# repeated two or more times consecutively (assuming there is a space).

use strict;
use warnings;

#Variable to compare the pattern with
print "Please enter a string to check for any matches: ";
my $string = <STDIN>;
chomp $string;


#A regex to replace the string with a new string that higlights duplicate words
$string =~ s/\b(\w+)\s+\1\b/<$1 $1>/g;
if ($1 !~ //) {
	print $string;
}
else {
	print "No match. \n";
}
