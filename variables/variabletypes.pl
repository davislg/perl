#!/usr/bin/perl
use strict;
use warnings;

print "\n";
print "# --------------\n";
print "# Variable Types\n";
print "# --------------\n";

my $undef = undef; # null representive
print $undef . "\n"; # error

# implicit undef:
my $undef2;
print $undef2 . "\n"; # same error as above

my $num = 4040.5;
print $num . "\n"; # "4040.5"

my $string = "world";
print $string . "\n"; # "world"

# String concatenation
print "Hello ".$string."\n"; # "Hello world"

# String concatenation through passing multiple arguements
print "Hello ",$string,"\n"; # "Hello world"

print "\n";
print "# -----------------\n";
print "# Weakly Typed Test\n";
print "# -----------------\n";
my $str1 = "4G";
my $str2 = "4H";

print $str1 .  $str2 ."\n"; # "4G4H"
print $str1 +  $str2 ."\n"; # "8" with two warnings
print $str1 eq $str2 ."\n"; # "" (empty string, i.e. false)
print $str1 == $str2 ."\n"; # "1" with NO WARNING!

print "\n";
print "# ------\n";
print "# Arrays\n";
print "# ------\n";

my @array = (
  "print ",
  "these ",
  "strings ",
  "out ",
  "for ",
  "me ", # trailing comma is okay/valid
);
print $array[0]; # "print"
print $array[1]; # "these"
print $array[2]; # "strings"
print $array[3]; # "out"
print $array[4]; # "for"
print $array[5]; # "me"
#print $array[6]; # warning
print "\n";

# Working backwards through the array
print $array[-1]; # "me"
print $array[-2]; # "for"
print $array[-3]; # "out"
print $array[-4]; # "strings"
print $array[-5]; # "these"
print $array[-6]; # "print"
#print $array[-7]; # warning
print "\n";

# Array Length
print "This array has ", (scalar @array), " elements", "\n"; # "This array has 6 elements"
print "The last populated index is ", $#array,"\n";        # "The last populated index is 5"

# Interpolated strings
print "@array\n";

print "\n";
print "# --------------\n";
print "# Hash Variables\n";
print "# --------------\n";
my %scientists = (
  "Newton"   => "Isaac",
  "Einstein" => "Albert",
  "Darwin"   => "Charles",
);
print $scientists{"Newton"}."\n";   # "Isaac"
print $scientists{"Einstein"}."\n"; # "Albert"
print $scientists{"Darwin"}."\n";   # "Charles"
#print $scientists{"Dyson"}."\n";    # runtime error - key not set

# Convert Hash to Array
my @scientistArray = %scientists;
print "@scientistArray\n";

print "\n";
print "# -------------------------\n";
print "# Square Brackets vs Braces\n";
print "# -------------------------\n";
my $data = "orange";
my @data = ("purple");
my %data = ( "0" => "blue");

print $data." ";      # "orange"
print $data[0]." ";   # "purple"
print $data["0"]." "; # "purple"
print $data{0}." ";   # "blue"
print $data{"0"}." "; # "blue"
print "\n";
