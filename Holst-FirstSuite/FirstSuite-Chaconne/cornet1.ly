\version "2.18.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "I. Chaconne"
  instrument = "1st Cornet in Bb"
  composer = "Gustav Holst"
  copyright = "©2014 M. Morales under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
}

global = {
  \key f \major
  \time 3/4
}

cornetBb = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  \tempo "Allegro moderato"
  \compressFullBarRests
  \partial 4 r4
  R2.*7
  r4 r4 a4-\p ~ ( 
  a^\markup {\italic \smaller "Legato"} g f
  g2) c4~ (
  c bes a
  bes2) c4~ ( %fix slur
  c f, g
  c, d f)
  e4.( f8 e[ f]
  g2-\> f8) r8 \! %fix slur
  R2.*8
  r4 r4 g8^\markup {\smaller "Solo"}[ g16 g]
  g8 r8 r4 c8[ c16 c]
  
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
