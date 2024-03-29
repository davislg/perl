#!/usr/bin/perl
use strict;
use warnings;

use Path::Class;
use autodie; # die if problem reading or writing a file

my $dir = dir("/tmp"); # /tmp

my $file = $dir->file("file.txt"); # /tmp/file.txt

# Get a file_handle (IO::File object) you can write to
# As above but use open('>>') instead of openw()
my $file_handle = $file->open('>>');

my @list = ('-----', 'a', 'new', 'list', 'of', 'lines');

foreach my $line ( @list ) {
  # Add the line to the file
  $file_handle->print($line . "\n");
}
