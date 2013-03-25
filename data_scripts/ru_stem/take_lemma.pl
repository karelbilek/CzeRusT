#!/usr/bin/perl


use strict;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open FACTORED, "factored.ru.97373" or die $!;
binmode(FACTORED, ":utf8");

while (<FACTORED>){
my @word =  split / /;
 foreach ( @word ) {
  my($form,$lemma,$tag) = split ( /\|/ );
#for czech  $lemma =~ s/\-.*//g;
#for czech  $lemma =~ s/\_.*//g;
  if ($lemma =~ /<unknown>/) {
  print "$form ";}
  else {print "$lemma "; }
 }
print "\n";
}

