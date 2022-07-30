use v5.34;
use Data::Dump qw(dump);

use lib ".";
use Predefined;
use Emotion;

my $current_emotion = 0;

sub get {
  print "> ";
  chomp(my $ret = <STDIN>);
  if ($ret eq "quit" || $ret eq "exit" || $ret eq "bye") {
    say "So you are leaving me already?";
    say "Well, bye!";
    exit;
  }
  # remove punctuations
  $ret =~ s/\.\,\?\!//g;
  $ret;
}

sub get_possible_response {
  my @ret;
  my $match = $_[1];
  my %pool = %Predefined::response_pattern->{$match};
  push @ret, $_ foreach (%pool{"general"});
  my $emotion = 
}

my $username = $ENV{'USER'};
say "Um, Hello? Is that ${ENV{'USER'}}?";
if ((my $tmp = &get) =~ /[nN](.*)/) {
  say "So what should I call you?";
  $username = &get;
  say "Alright, so you'll be $username then!";
}

while (1) {
  my $resp = &get;
  $resp = lc($resp);
  while (my ($k => $v) = each %Predefined::response_pattern) {
    if (my @matches = ($resp =~ /$k/g)) {
      
      my $choice = $v->[0];
      # transform pronouns
      $choice =~ s/keys %Predefined::pronoun_map/values %Predefined::pronoun_map/g;
      # transform placeholders
      my $i = 0;
      foreach my $match (@matches) {
        my $target = "#$i";
        $choice =~ s/$target/$match/g;
        $i++;
      }
      say $choice;
    }
  }
}
