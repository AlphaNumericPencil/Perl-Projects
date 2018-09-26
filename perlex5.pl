#perlex5.pl


sub help {
	print "Usage: perl -w perlex5.pl <option> rosterfile
	print
	print "where <option> is one of the following
	print "    -h, -help, --help: display help"
	print "    -f, first, --first: sort by first name"
	print "    -l, -last, --last: sort by last name"
	print "    -s, -sid, --sid: sort by id"
	}
	
	
	#add student with first, last, and id as arguments
	# not always in that order.
	sub addstudent {
		$student = "$_[0] $_[1] $_[2]";
		push @roster, $student;
	}
	
	if (@ARGV[0] =~ /-h/){
		help();
		}

while ($student = <STDIN>){
	($last, $first, $id) = split /, */, $student;
	$student = "$first $last $id";
	push @roster, $student;
	}
	
	foreach $student ( sort @roster ) {
		print $student;
	}
