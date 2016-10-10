% This LilyPond file is ©2016 M. S. Morales
% This score is based on a public domain score available from IMSLP.
% This score and its source are freely avaible under the terms of the
% Creative Commons Attribution ShareAlike 4.0 license.
% See https://creativecommons.org/licenses/by-sa/4.0/ for license details.
%
% The most up-to-date version of this LilyPond file is available via GitHub at:
% https://github.com/lagetisto/music-scores/tree/master/Arban-Method

\version "2.18.2"

\header {
  title = "Characteristic Study No. 1"
  instrument = "B♭ Trumpet"
  composer = "Jean-Baptiste Arban"
  copyright = "Music engraving by LilyPond 2.18.2—www.lilypond.org" %there is an emdash after the number
  tagline = "©2016 M. S. Morales. Lincensed under CC-BY-SA 4.0. See creativecommons.org for more info."
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
  c,16->( b c e-.) g-.( c-. e-. g-.) c,,->( b c e-.)  g-.( c-. e-. g-._)
  f->( g) e-. f-. d-. e-. c-. d-. b->( c) a-. b-. g-. f-. e-. d-.
  c->( b c) e-. g-. c-. e-. g-. c,,->( b c) e-. g-. c-. e-. g-.
  f->( g) e f-. d-. e-. c-. d-. b->( c) a-. b-. g-. f-. e-. d-.
  c8-. \breathe c16-. e-. g-. c-. e-. d-. \afterGrace cis2-\trill( { b16 cis}
  d16) cis,->( d) f-. a-. d-. f-. e-. \afterGrace dis2-\trill( { cis16 dis}
  e16) e,( dis e) g-. c-. e-. g-. f-. cis,->( d) f-. aes-. b-. d-. f-.
  
  
}

\score {
  \new Staff \with {
    instrumentName = "B♭ Tpt."
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
