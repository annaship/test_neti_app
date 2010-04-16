#! /usr/bin/perl

while(<STDIN>)
  {
	  my($line) = $_;
		chomp($line);
		if ($line =~ m/<verbatim>([^<][^\/]+)<\/verbatim>/g)
		{			
			print "$1\n";
		}  
	}

  # if ($line =~ m/^([A-Z][a-z]+)/)                                                                    
  # {                                                                                                  
  #         $genera_name = $1;                                                                         
  #         print "$genera_name\n";                                                                    
  #         $flag = 1;                                                                                 
  # }                                                                                                  

# 

