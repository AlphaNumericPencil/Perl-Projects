


while($word = <STDIN>) {
	chomp $word; #remove trailing newline
	$length = length($word);
	$wordlengths[$length]++; # dynamically create array @wordlengths

}

print "Word Length \t\t Occurances \n\n";

for ( my $i = 1; $i <= $#wordlengths; $i++) {
	print "$i \t\t\t $wordlengths[$i] \n" if exists $wordlengths[$i];
}
