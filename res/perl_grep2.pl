#! /usr/bin/perl
open FILE, "/Users/anna/work/test_neti_app/res/ams-res.txt" or die $!;
@text = <FILE>;
close FILE;

# print @text;

while(<STDIN>)
  {
	  my($line) = $_;
		chomp($line);
		$b = "ams-res.txt";
		$cmd = "GREP_COLOR=32; export GREP_COLOR; grep -ni --color=always \"$line\\b\" $b";
		system $cmd;
	}
	
	# open FILE, ">/Users/anna/work/perl/grep_in_tname.txt" or die $!; 
	# print FILE @grepNames; 
	# close FILE;
	

# 

