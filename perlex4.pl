#erlex4.pl

while ($student = <>) {
($last, $first, $id) = split /, */, $student;
	$fullname = "$first $last"; #key
	$roster{$fullname} = $id; # add key/value pair to %roster hash
	
	#perl sees $roster{$fullname} as creating a hash

}
print "Word Length \t\t Occurances \n\n";

foreach $fullname ( keys %roster) {
	print "$fullname, $roster{$fullname}";   #roster{fullname} only prints IDs
	}
