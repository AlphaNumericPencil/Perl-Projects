#perlex7.pl

open FILE, "<news.asp";
$news do { local $/; <FILE> };


@headlines = ($news =~ /<strong>(.*)<\/strong>/g);
#                               (  ) Only what is between the <strong> tags gets printed

print "@headlines\n";



@anames = ($news =~ /<a names =" (.*)"/g);

print "@anames\n"
