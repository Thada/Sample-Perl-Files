#!/usr/bin/perl

#This program reads user input until CTRL-D is typed, then prints the
# frequency each word appeared in the input.

use strict;
use warnings;

#Used to gather input from the user
my $input;
my %count = ();
print "Please enter some text.  CTRL-D to exit in UNIX, CTRL-Z then ENTER in WINDOWS: \n";
while($input = <STDIN>) {

	#Clear newline characters and split lines into words by spaces
	chomp($input);
	my @line = split( /\s/, $input);
    foreach my $word (@line) { 

		#Makes all words lowercase
		$word = lc($word);

		#Keeps track of the count for each word
		if(defined($count{$word})) { 
				$count{$word} ++;
		} 
		else { 
			$count{$word} = 1;
		}
	} 
}

#Just a line that separates the input from output
print "--------------------\n";

#This will be the final list of words using the hash
my @finallist = keys %count;

#Prints out each word and the number of times it appeared in the input
foreach my $word (sort @finallist) {
	print "'$word' occured $count{$word} times \n";
}
