#perlex2.pl

while($word = <STDIN>) {
	chomp $word;
	$length = length($word);
	if ($length <= 7){
		print "$word\n";
	}
}
