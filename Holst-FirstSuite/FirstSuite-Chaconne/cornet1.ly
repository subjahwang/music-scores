%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%This score was last updated
%%	23 June 2014 03:32 PST
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.18.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "I. Chaconne"
  instrument = "1st Cornet in B♭"
  composer = "Gustav Holst"
  tagline = "Music engraving by LilyPond 2.18.2. This score was last updated on 23 June 2014."
  copyright = "This score is released under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
}s

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
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 4 r4
  R2.*7
  r4 r4 a4^\markup {\italic \smaller "Legato"}-\p ~ ( 
  a g f
  g2) c4~ (
  c bes a
  bes2) c4~ ( %fix slur
  c f, g
  c, d f)
  e4.( f8 e[ f]
  g2-\> f8) r8 \! %fix slur
  R2.*8 \mark \default
  r4 r4 g8-\mf^\markup {\smaller "Solo"}[ g16 g]
  g8 r8 r4 c8[ c16 c]
  d8 r8 r4 d8[ d16 d]
  e8 r8 r4 e8[ e16 e]
  f8 r8 r4 b,8[ b16 b]
  c8 r8 r4 d8-\mf^\markup{\smaller "Tutti"} [ d16 d]
  e8-\markup{\italic "crescendo"} [ c16 d] e8[ d16 e] f8[ e16 f]
  g8[ f16 g] e8[ d16 e] r8 a,8-\f
  r8 g16 a bes8 g r8 f
  r8 e16 f g8 e r8 c'
  r8 a16 b c8 a r8 g
  r8 e16 f g8 e r8 a
  r8 f16 g a8 f r8 g
  r8 c,16 e f8 d r8 a'
  r8 g16-\markup{\italic "crescendo"} a bes8[ a16 bes] c8[ bes16 c]
  d8[ c16 d] e8[ d16 e] f8-\ff r8 \mark \default
  e8^\markup {\italic "Brillante"} r8 r4 f8 r8
  
  
}

\score {
  \new Staff \with {
    instrumentName = "Cornet in B♭"
  } \cornetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
