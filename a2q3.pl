#!/usr/bin/perl

#This is a program that takes a number, then reads n lines of text from user
# input, and prints these lines backwards. 

use strict;
use warnings;

#This will store the user's value for what lines to repeat
print "Enter an integer: ";
my $n = <STDIN>;
chomp $n;

#This will read n lines of text from the user
my @input = ();
print "Enter $n lines of text: \n";
do {
	push @input, scalar <STDIN>;
} until ($. > $n);

#This will reverse the user's input and print the result
@input = reverse (@input);
print "Your reversed input:\n " . "@input";