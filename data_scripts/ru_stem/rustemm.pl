#!/usr/bin/perl


use strict;

use Lingua::Stem::Ru;
#        my $stems = Lingua::Stem::Ru::stem({ -words => $word_list_reference,
#                                             -locale => 'ru',
#                                             -exceptions => $exceptions_hash,
#                                          });

#        my $stem = Lingua::Stem::Ru::stem_word( $word );


binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open FACTORED, "../factored.ru.97373" or die $!;
binmode(FACTORED, ":utf8");

while (<FACTORED>){
my @word =  split / /;
 foreach ( @word ) {
  my($form,$lemma,$tag) = split ( /\|/ );
  my $stem = Lingua::Stem::Ru::stem( $form );
  print "$stem ";
 }
#print "\n";
}

