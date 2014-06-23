\version "2.18.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "I. Chaconne"
  instrument = "1st Cornet in Bb"
  composer = "Gustav Holst"
}

global = {
  \key f \major
  \time 3/4
}

cornetBb = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  \compressFullBarRests
  \partial 4 r4
  R2.*7
  r4 r4 \mark \markup {\italic \smaller "Legato"} a4-\p ~ ( 
  a g f
  g2) c4~ (
  c bes a
  bes2) c
}

\score {
  \new Staff \with {
    instrumentName = "Cornet in Bb"
  } \cornetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
