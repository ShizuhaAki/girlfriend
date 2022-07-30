=pod
Primitive emotion detection
===========================

This module tries to detect the user's emotion.

How It Works
------------
It first extracts negation words from the sentence:
  not => negation
  not exactly, not that => neutral

Then it looks for a determinative word, for example, depressed.
The words are stored in Predefined.pm

Examples
--------
I'm depressed => sad
I'm happy => happy

I'm not exactly depressed => neutral
I'm not that happy => neutral

Notes
-----
This thing breaks easily.
=cut

use v5.34;
use lib ".";
use Predefined;

sub get_emotion {
  my $sentence = $_[1];
  my $negate = 1;
  my $ret = 0;
  $negate = -1 if ($sentence =~ /not/);
  foreach my $word (@Predefined::sad_word) {
    $ret = 1 if ($sentence =~ /$word/);
  }
  return $ret * $negate;
}