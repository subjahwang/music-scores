%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This score was last updated	     %%
%%	24 June 2014 08:50 PST       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  To do:			     %%
%%    *Adjust rehearsal mark spacing %%
%%    *Adjust slurs                  %%
%%    *Proofread score               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.18.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "I. Chaconne"
  instrument = "1st Cornet in B♭"
  composer = "Gustav Holst"
  tagline = "Music engraving by LilyPond 2.18.2. This score was last updated on 24 June 2014."
  copyright = "This score is released under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
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
  %\set Score.markFormatter = #format-mark-box-alphabet
  \partial 4 r4
  R2.*7
  r4 r4 a4^\markup {\italic "Legato"}-\p ~ ( 
  a g f
  g2) c4~ (
  c bes a
  bes2) c4~ ( %fix slur
  c f, g
  c, d f)
  e4.( f8 e[ f]
  g2-\> f8) r8 \! %fix slur
  R2.*8 %\mark \default
  r4 r4 g8-\mf^\markup {"Solo"}[ g16 g]
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
  d8[ c16 d] e8[ d16 e] f8-\ff r8 %\mark \default
  e8^\markup {\italic "Brillante"} r8 r4 f8 r8
  g8 r8 r4 c,8 r8
  f8 r8 b,8 r8 r4
  c8 r8 r4 c8 r8
  d8 r8 r4 c8 r8
  a8 r8 b8 r8 r4
  c8 r8 r4 r4
  r4 r4 f,4^\markup {\italic "ten."}
  g2 d'4
  c2 a4 f4 g2
  c,2 <a a'>4
  <d d'>2 <e e'>4
  <c c'>4 <g' g'>2
  <c c'>2.-\markup {\italic "dim."} ~
  <c c'>2 \> r4 \! %\mark \default		%Rehearsal mark "C"
  R2.*28
  r4 r4 f,4-\p %\mark \default
  e2^\markup {\italic "Pesante"}^\markup {"Soli"}  a,4
  bes2 d4
  f4 e2
  bes'2 d4
  a2 g4 ~
  g d e
  a,2 r4
  R2.*8
  r4 r4 f'4-\p^\markup {"Soli"}(
  g2 d'4 
  c2) a4(
  f g2
  c,) a4(
  d2 e4
  a g2
  c2. ~
  c2) f,4-\p(
  g2-\markup {\italic "cres. poco a poco"} d'4
  c2 a4
  f g2
  c) a,4(
  d2 e4
  a g2)
  bes4( a) c(
  bes) d( c)
  f( e) a,-\ff( ~ %\mark \default
  a^\markup {\italic "Maestoso"} g f
  g2) f'4 ~
  f e d
  f d <c c'> ~
  <c c'> f g
  c, d f
  f2.(
  e4.) r8 c,4
  d2-\markup {\italic "rit. al fine"} a'4
  g2 ees4
  c4 d4. r8
  R2.*8
  a'4 g2
  c4 d f ~
  f <es g>2
  <f c>2.-\fermata
  
  
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
