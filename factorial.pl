#!/usr/bin/perl
#-------------------------------------------------------------------------------
# Factorial Recursion
# Matthew Crick 
#-------------------------------------------------------------------------------
use warnings FATAL => qw(all);
use strict;
use Carp;
use Data::Dump qw(dump);
use Data::Table::Text qw(:all);
use Test::More qw(no_plan);
use feature qw(say state current_sub);

sub factorial($)
 {my ($n) = @_;
   if ($n == 0)                                                                          #
    {return 1 
    }
  $n * &factorial($n - 1);
 }
    
is_deeply factorial(0), 1;
is_deeply factorial(3), 6;
is_deeply factorial(5), 120;

sub Factorial($)
 {my ($n) = @_;
    my $c = 1;
    for my $v(1..$n)                                                                 #
     {$c *= $v; 
     }
  $c
 }
 
is_deeply Factorial(0), 1;
is_deeply Factorial(3), 6;
is_deeply Factorial(5), 120;

