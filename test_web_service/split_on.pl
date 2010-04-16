#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;
		$line =~ s/(\#\<Name)/\n\1/g;
		print $line;
}


