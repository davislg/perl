#!/usr/bin/perl
use strict;
use warnings;

use Email::Valid;

print("\nValidate E-mail Addresses:\n");
print("\ta.n\@example.com:\t" . (emailIsValid('a.n@example.com')?"true":"false") . "\n");
print("\texample.com:\t\t" . (emailIsValid('example.com')?"true":"false") . "\n");
print("\n");

sub emailIsValid {
  unless( Email::Valid->address($_[0]) ) {
    return 0;
  } else {
    return 1; 
  }
}

