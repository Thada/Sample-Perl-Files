#!/usr/bin/perl

#This program uses a foreach loop to print a table of 32 rows and 3 columns. Each
# row contains the number i, 2*i, and i*i.

use strict;
use warnings;

#Create the array that will be used in the loop
my @i = (1..32);

#A variable used for indexes in the array for the loop
my $a = 0;

#A loop that prints a 32 by 3 column of numbers based on i
foreach (@i) {
	print $i[$a] . "\t" . ($i[$a]*2) . "\t" . ($i[$a]*$i[$a]) . "\n";
	$a = $a + 1;
}