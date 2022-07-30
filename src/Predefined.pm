package Predefined;

use strict;
use warnings;
use v5.20;


our @std_response = (
  "I'm sorry but I can't really get you, so um ..." ,
  "I see, so...",
  "Please go on",
);

our %pronoun_map = (
  "i" => "you",
  "you" => "me",
  "my" => "your",
  "your" => "my",
  "yours" => "mine",
  "me" => "you",
  "i've" => "you've",
  "you've" => "i've",
  "am" => "are",
  "was" => "were",
  "are" => "am",
);

our @sad_word = qw(
  depressed
  sad
  worried
  anxious
);

our %response_pattern = (
  "why don't you ([^\\?]*)\\??" => {
    general => [
    "What makes you think I didn't #0?",
    "Well, I didn't thought of that before, but maybe it's great to give it a try",
    "Ehehe, do you really want me to #0?"
    ]
  },
  "i'm (.*)" => {
    general => [
      "How do you feel about being #0?",
      "Why do you say you are #0?",
    ],
    sad => [
      "I'm sorry that you are #0"
    ]
  },
  "i can't (.*)" => {
    general => [
    "Well, maybe you could do it if you tried",
    "How do you know you can't #0?"
    ]
  },
  "i (.*)" => {
    general => [
    "Is #0 bothering you?",
    "So um..., what can I do for you, now that you #0?"
    ]
  }
);