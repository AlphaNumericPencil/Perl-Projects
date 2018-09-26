#perlex7_mechanize.pl

use WWW::Mechanize;

my $mech = WWW::Mechanize-> new();
my $url = "http://www.monmouth.edu/academics/CSSE/news.asp";
$mech->get( url );

$news = $mech->content();

@headlines = ($news =~ /<strong>(.*)<\/strong>/g);

print @headlines;
