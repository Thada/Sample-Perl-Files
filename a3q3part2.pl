#!/usr/bin/perl

#This script takes user input and checks if it matches three consecutive copies 
# of the regular expression: 'foo|bar'.  

use strict;
use warnings;

#Variable to compare the pattern with
print "Please enter a string to check for any matches: ";
my $string = <STDIN>;
chomp $string;


#A loop to display if there are any matches
if ($string =~ /((foo|bar){3})/) {
	print $`, "<", $1, ">", $';
}
else {
	print "No match. \n";
}
