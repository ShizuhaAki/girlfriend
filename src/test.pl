use v5.20;

my $str = 'sss$var';
my $var = 'aaa';
$str =~ s/$var/$var/g;

say $str;