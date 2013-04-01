use strict;
use warnings;
use 5.010;
chdir("/ufallabhome/bilek/CzeRusT_play") or die $!;


for my $fnm (`ls | grep 's.evaluator' | ./eman_sort_by_date.pl`) {
    chomp $fnm;
    my $stat =`eman stat $fnm`;
    #print $stat;
    #print $fnm;
    if ($stat =~ /DONE/) {
        print $fnm;
        my $tb = `eman tb -vars $fnm`;
        $tb =~ /REFAUG=(..)/ or die ":OO";
        my $jazykto = $1;
        $tb =~ /SRCAUG=(..)/ or die ":DD";
        my $jazykfrom = $1;
        print "[smer:";
        print $jazykfrom." -> ".$jazykto;
        print "]";

        $tb =~ /REFAUG=(.*)/ or die ":OO";
        my $kompletto = $1;
        chomp $kompletto;
        $tb =~ /SRCAUG=(.*)/ or die ":OO";
        my $kompletfrom = $1;
        chomp $kompletfrom;
        

        print "[preklad:$kompletfrom -> $kompletto]";
        $tb =~ /ALILABEL=(.*)-(.*)-(.*)-(.*)/ or die ":OO";
        print "[alignment:$2 -> $4]";
        print "[lm:";
        if ($tb =~ /mixlm/) {
            print "mixed";
        } else {
            print "unmixed";
        }

        while ($tb =~ /\+- s\.lm(.*)\n(.*)\n(.*)/g) {
            print ";";
            my $corp = $2;
            my $corpaug = $3;
            $corp =~/CORP=(.*)/ or die ":OO";
            my $realcorp = $1;
            print $realcorp;
            $corpaug =~/CORPAUG=(.*?)+(.*)/ or die "://";
            my $realcorpaug = $2;
            print "+";
            print $realcorpaug;
        }
        print "]";
        my $res = `cat $fnm/scores`;
        $res =~ /BLEU.*?(0\.[0-9]*)/ or die ":O";
        print "[score:$1]"; 
        
        if ($fnm =~ /cyrillic/) {
            my $cres = `cat $fnm/cyrillic`;
            $cres =~ /(0\....)/ or die ":O";
            print "[cyril:$1]";
        }
        print "\n";
    } else {
        print $stat;
    }
}

#../../../github/results/long_list
