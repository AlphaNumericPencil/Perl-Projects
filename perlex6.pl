#perlex6.pl

open FILE, "<cs371roster";
$roster = do { local $/; <FILE> };

#print $roster

#read all student ids into @ids
@ids = ($roster =~ /(s[0-9]{7})/g); 
#                   (            ) -----> put ID into match group (optional)
#      (                         ) -----> generate list of matched student ids
#                               g ------> match all student ids found in roster
#                               without g, match only first student id

#ids found by lowercase s, then 7 1-9 characters. Parenthesis important

print "@ids\n";
