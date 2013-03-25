use warnings;
use strict;

use 5.010;

my $password="SVNheslo";

open my $f, "<filelist" or die $!;
while (my $l=<$f>) {
    chomp ($l);
    if (!-e $l) {
        die $l;
    }
}

#"https://svn.ms.mff.cuni.cz/trac/pdt2.x/export/318/data/full/amw/train-1/cmpr9406_001.a"
#system("wget 'https://svn.ms.mff.cuni.cz/trac/pdt2.x/browser/data/full?rev=318' --user=bilek --password=$password");
