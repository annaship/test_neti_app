#! /usr/bin/perl

while(<STDIN>)
  {
	  my($line) = $_;
		chomp($line);
		$line =~ s/^.+name="([^"]+)".+$/\1/g;
		print "$line\n";
	}

  # if ($line =~ m/^([A-Z][a-z]+)/)                                                                    
  # {                                                                                                  
  #         $genera_name = $1;                                                                         
  #         print "$genera_name\n";                                                                    
  #         $flag = 1;                                                                                 
  # }                                                                                                  

# 

