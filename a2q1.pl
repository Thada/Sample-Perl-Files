#!/usr/bin/perl

#This program repeats a given string n times.

use strict;
use warnings;

#Variable to hold the string
print "Enter the text you would like repeated: ";
my $text = <STDIN>;

#Variable to hold the number of repeats
print "Enter the number of times to repeat: ";
my $n = <STDIN>;

#A simple error check
if ($n < 0) { 
	print "ERROR: You have entered a negative number";
}

#A loop to print the string 'n' times
while($n > 0){
	print $text;
	$n = $n - 1;
}