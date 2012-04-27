#!/usr/bin/perl
use strict;
use warnings;

# Variable Types
printHeader("Variable Types");

# Null Types
printNullTypes();

# Scalar Types
printScalarTypes();

# Weakly Typed
printWeaklyTyped();

# Array Types
printArrayTypes();

# Hash Types
printHashTypes();

# Square Brackets [] vs Braces {}
printSquareBracketsvsBraces();

# ********************************
# Function Definitions
# ********************************

# ---------------
# Print Header 
# ---------------
sub printHeader {
  my $length = length($_[0]); 

  print "\n";
  # Header top line
  print "# ";
  for (my $i=0; $i < $length; $i++) {
    print "-";
  }
  print "\n";

  # Header Title
  print "# ".$_[0]."\n";

  # Header bottom line
  print "# ";
  for (my $i=0; $i < $length; $i++) {
    print "-";
  }
  print "\n";
}

# ------------------
# Print Null Values
# ------------------
sub printNullTypes {
  printHeader("Null Types");

  print("NULL (undef) type [Explicit]:\n");
  my $undef = undef;                                # null representive
  print("\t$undef\n");                              # error

  print("NULL (undef) type [Implicit]:\n");
  my $undef2;                                       # null representive (same as above)
  print("\t$undef2\n");                             # same error as above
}

# --------------------
# Print Scalar Types 
# --------------------
sub printScalarTypes {
  printHeader("Scalar Types");

  # Simple
  my $localScalar = "This is a scalar variable.";
  print("\$localScalar: $localScalar\n");

  # Number
  my $num = 4040.5;
  print("$num\n");                                  # 4040.5

  # Concatenation using dot (.)
  my $world = "World";
  print("Hello ".$world."\n");                      # Hello world

  # Concatenation passing multiple arguements
  print("Hello ",$world,"\n");                      # Hello world
}

# --------------------
# Weakly Typed
# --------------------
sub printWeaklyTyped {
  printHeader("Weakly Typed");

  my $str1 = "4G";
  my $str2 = "4H";

  print($str1 .  $str2 ."\n");                      # "4G4H"
  print($str1 +  $str2 ."\n");                      # "8" with two warnings
  print($str1 eq $str2 ."\n");                      # "" (empty string, i.e. false)
  print($str1 == $str2 ."\n");                      # "1" with NO WARNING!
  print("\n");
}

# -------------------
# Array Types
# -------------------
sub printArrayTypes {
  printHeader("Array Types");
  
  my @array = (
    "print",
    "these",
    "strings",
    "out",
    "for",
    "me",                                           # trailing comma is okay/valid
  );
  
  # Print array elements
  print($array[0]);                                 # print
  print($array[1]);                                 # these
  print($array[2]);                                 # strings
  print($array[3]);                                 # out
  print($array[4]);                                 # for
  print($array[5]);                                 # me
  #print($array[6]);                                # warning
  print("\n");

  # Working backwards through the array
  print($array[-1]);                                # me
  print($array[-2]);                                # for
  print($array[-3]);                                # out
  print($array[-4]);                                # strings
  print($array[-5]);                                # these
  print($array[-6]);                                # print
  #print($array[-7]);                               # warning
  print("\n");
  
  # Array Length
  print("This array has ", 
    (scalar @array), " elements", 
    "\n");                                          # This array has 6 elements
  print("The last populated index is ", 
    $#array,
    "\n");                                          # The last populated index is 5

  # Interpolated strings
  print("@array\n");
}

# --------------------
# Hash Types
# --------------------
sub printHashTypes() {
  printHeader("Hash Types");
  
  my %scientists = (
    "Newton"   => "Isaac",
    "Einstein" => "Albert",
    "Darwin"   => "Charles",
  );

  print($scientists{"Newton"}."\n");                # Isaac
  print($scientists{"Einstein"}."\n");              # Albert
  print($scientists{"Darwin"}."\n");                # Charles
  #print($scientists{"Dyson"}."\n");                # runtime error - key not set

  # Convert Hash to Array
  my @scientistArray = %scientists;
  print("@scientistArray\n");
}

# -------------------------------
# Square Brackets [] vs Braces {}
# -------------------------------
sub printSquareBracketsvsBraces {
  printHeader("Square Brackets [] vs Braces {}");

  my $data = "orange";
  my @data = ("purple");
  my %data = ( "0" => "blue");

  print($data." ");                                 # orange
  print($data[0]." ");                              # purple
  print($data["0"]." ");                            # purple
  print($data{0}." ");                              # blue
  print($data{"0"}." ");                            # blue
  print("\n");
}


