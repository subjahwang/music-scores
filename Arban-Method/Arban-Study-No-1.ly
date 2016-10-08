% This LilyPond file is ©2016 M. S. Morales
% This score is based on a public domain score available from IMSLP.
% This score and its source are freely avaible under the terms of the
% Creative Commons Attribution ShareAlike 4.0 license.
% See https://creativecommons.org/licenses/by-sa/4.0/ for license details.

\version "2.18.2"

\header {
  title = "Characteristic Study № 1"
  instrument = "B\flat Trumpet"
  composer = "Jean-Baptiste Arban"
  copyright = "©2016 M. S. Morales. Lincensed under CC-BY-SA 4.0. See creativecommons.org for more info."
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegro moderato"
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  c,16->( b c e-.) g-.( c-. e-. g-.)
  
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
