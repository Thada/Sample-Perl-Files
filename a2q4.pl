#!/usr/bin/perl

#This program takes from user input the radius of a circle, and depending
# on the context in which this subroutine is called will print different
# information about a circle with the given radius.

use strict;
use warnings;

#Prompts for and stores the user's input for the subroutine
print "Enter the radius of a circle: ";
my $r = <STDIN>;
chomp $r;

#Define constant PI
use constant PI => 3.141593;

#Defining a subroutine that takes the radius of a circle as input.  It will 
# return the area if input is a scalar, or a list with the area, diameter, and 
# circumference if input is a list.
sub circle {
	#For list context
	if (wantarray) {
		my $area = PI * $r * $r;
		my $diameter = 2 * $r;
		my $circum = PI * $diameter;
		my @list = ($area, $diameter, $circum);
		#print "The area, diameter, and circumference of the circle is: @list\n";
		return @list;
	}
	#For scalar context
	elsif (defined wantarray) {
		my $area = PI * $r * $r;
		#print "Area: $area\n";
		return $area;
	}
}

#When called in list context, prints the following
my @x = circle();
print "List context: @x\n";

#When called in scalar context, prints the following
my $x = circle();
print "Scalar context: $x\n";

