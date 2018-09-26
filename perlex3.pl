

my @roster = ();
while ($student = <STDIN>) {
($last, $first, $id) = split /, /, $student;
$student = "$first $last $id";
push @roster, $student;
}


foreach $student ( @roster ) {
	print $student;
}
