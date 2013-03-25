
for my $file in { 
    use File::Slurp;
    @fl = read_file("filelist", chomp=>1);
    @fl
} {
    open $file;
    register-namespace pml http://ufal.mff.cuni.cz/pdt/pml/;
    cd pml:mdata;
    for my $s in pml:s {
        for my $w in $s/pml:m/pml:form {
            echo :n $w;
            echo :n ' ';
        }
        echo '';
    }
} 
