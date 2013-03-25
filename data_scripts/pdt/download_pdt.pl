use warnings;
use strict;

use 5.010;

my $password="SVNheslo";

open my $f, "<filelist" or die $!;
while (my $l=<$f>) {
    chomp ($l);
    my $dir = $l;
    $dir =~ s/\/[^\/]*$//g;
    say $l;
    system("mkdir -p $dir");
    system("wget 'https://svn.ms.mff.cuni.cz/trac/pdt2.x/export/318/$l' --user=bilek --password=$password -O $l");
}

#"https://svn.ms.mff.cuni.cz/trac/pdt2.x/export/318/data/full/amw/train-1/cmpr9406_001.a"
#system("wget 'https://svn.ms.mff.cuni.cz/trac/pdt2.x/browser/data/full?rev=318' --user=bilek --password=$password");
