#!/usr/bin/perl

#This program removes all non-digits from user input and checks to see if the 
# input is a palindrome of digits.

use strict;
use warnings;

#Variable to hold user input
print "Please enter a string of digits: ";
my $string = <STDIN>;
chomp $string;

$string =~ s/[a-z|A-Z]//g;

#The reversed string
my $pal = reverse($string);

#A loop to check if the string is the same backwards as it is forwards
if ($string =~ /($pal)/) {
	print $string, " is a palindrome. \n";
}

else {
	print $string, " is NOT a palindrome. \n";
}