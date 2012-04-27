#!/usr/bin/perl
use strict;
use warnings;

#first, create your message
use Email::MIME;
my $message = Email::MIME->create(
  header_str => [
    From     => 'lawrence_g_davis@hotmail.com',
    To       => 'lawrence_g_davis@hotmail.com',
    Subject  => 'Test E-mail',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset  => 'ISO-8859-1',
  },
  body_str => "Testing e-mail tutorial!\n",
);

# send the message
use Email::Sender::Simple qw(sendmail);
sendmail($message);
