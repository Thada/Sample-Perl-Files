#!/usr/bin/perl

#This program uses a for loop to print a table of 32 rows and 3 columns. Each
# row contains the number i, 2*i, and i*i.

use strict;
use warnings;

#A loop that prints a 32 by 3 column of numbers based on i
for (my $i = 1; $i <= 32; $i++) {
	print $i . "\t" . ($i*2) . "\t" . ($i*$i) . "\n";
}