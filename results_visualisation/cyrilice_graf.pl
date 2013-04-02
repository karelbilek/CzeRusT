use warnings;
use strict;

my $pdir = `pwd`;
chomp $pdir;

my $filename = $ARGV[0];
open my $file, "<", $filename.".names" or die $!;
open my $ofile, ">", $filename.".R" or die $!;

chdir("/ufallabhome/bilek/CzeRusT_play") or die $!;

my @stepnicks;
my @bleus;
my @cyrilics;
while (my $line = <$file>) {
    chomp $line;
    $line =~ /(.*?)\s+(.*)/;
    my $stepname=$1;
    my $stepnick=$2;
    if ($stepnick=~/^s\./) {
        my $t = $stepnick;
        $stepnick=$stepname;
        $stepname=$t;
    }


    my $isReverse = $line=~/reverse/;
    my $cyrilName = $isReverse?"reverse_cyrillic":"cyrillic";

    my $res = `cat $stepname/scores`;
    $res =~ /BLEU.*?(0\.[0-9]*)/ or die ":O";
    my $bleu = $1;

    my $cres = `cat $stepname/$cyrilName`;
    $cres =~ /(0\....)/ or die "O:";
    my $cyril = $1;

    push @stepnicks, '"'.$stepnick.'"';
    push @bleus, $bleu*100;
    push @cyrilics, ($cyril*100);
}

sub printa {
    my $nm = shift;
    my @arr = @_;
    print $ofile $nm."<-c(";
    print $ofile join (", ", @arr);
    print $ofile ")\n";
}


print $ofile "png(\"$filename.png\")\n";
printa("BLEU", @bleus);
printa("OOV", @cyrilics);
printa("natpisi", @stepnicks);
print $ofile 'plot(BLEU,OOV, xlim=c(23,24), ylim=c(1,2), ylab="OOV (in percents)")';
print $ofile "\n";
print $ofile 'text(BLEU, OOV, natpisi, pos=4)';
print $ofile "\n";
print $ofile "dev.off()";

close $ofile or die $!;
chdir $pdir or die $!."$pdir";
system "cat $filename.R | R --no-save";
