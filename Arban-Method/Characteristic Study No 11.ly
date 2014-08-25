% This Lilypond file is copyrighted under the terms of the CC-BY-SA 4.0 license
% 
% This score last updated 24 August 2014.

\version "2.18.2"

\header {
  title = "Characteristic Study No. 11"
  composer = "Jean-Baptiste Arban"
  copyright = "This score is released under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
}

global = {
  \key c \major
  \time 4/4
  \partial 4 
  \tempo "Allegretto"
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  g8. g16
  a16( g fis g) d'( c b c) e( d cis d) f( e dis e)
  g4.( f8) e8-. e( dis e)
  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
