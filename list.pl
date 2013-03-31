use strict;
use warnings;
use 5.010;
chdir("/ufallabhome/bilek/CzeRusT_play") or die $!;


for my $fnm (`ls | grep 's.evaluator' | ./eman_sort_by_date.pl`) {
    chomp $fnm;
    my $stat =`eman stat $fnm`;
    print $stat;
    if ($stat =~ /DONE/) {
    
        my $tb = `eman tb -vars $fnm`;
        $tb =~ /REFAUG=(..)/ or die ":OO";
        my $jazykto = $1;
        $tb =~ /SRCAUG=(..)/ or die ":DD";
        my $jazykfrom = $1;
        say $jazykfrom." -> ".$jazykto;

        my $res = `cat $fnm/scores`;
        $res =~ /(BLEU.*)/ or die ":O";
        say $1; 
    }
}

#../../../github/results/long_list
