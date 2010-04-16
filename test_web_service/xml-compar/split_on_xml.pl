#! /usr/bin/perl

while(<STDIN>)
{
  my($line) = $_;
		$line =~ s/(\<name)/\n\1/g;
		print $line;
}


