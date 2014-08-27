% This Lilypond file is copyrighted under the terms of the CC-BY-SA 4.0 license
% 
% This score last updated 26 August 2014.

\version "2.18.2"

\header {
  title = "Characteristic Study No. 11"
  composer = \markup { \smallCaps "Jean-Baptiste Arban" }
  copyright = "This score is released under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
  instrument = \markup { "B♭ Trumpet" }
}

global = {
  \key c \major
  \time 4/4
  \partial 4 
  %\tempo "Allegretto"
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  \tempo "Allegretto"
  g8. g16
  a16( g fis g) d'( c b c) e( d cis d) f( e dis e)
  g4.( f8) e8-. e( dis e)
  g16( fis) f-. e-. d16-. c-. b-. a-. a([ g) d'-. c-.] b-. a-. g-. f-.
  e( f e dis f f fis g) c,4 \breathe g'8. g16
  a16( g fis g) d'( c b c) e( d cis d) f( e dis e)
  a4.( g16 fis) e4 \breathe e8-. e-.
  dis8-. fis ~ fis16( e) dis( c) c( b) b( a) a( g) g( fis)
  fis( e dis e d e) g-. b-. e4 \breathe e8-. e-.
  f16-. g-. e-. g-. d-. g-. c,-. g'-. b,-. g'-. a,-. g'-. g,-. g'-. f,-. g'-.
  e,-. g'-. g,-. g'-. c,,-. g''-. e,-. g'-. g,8-.[ c,16-. e-.] g-. c-. e-. g-.
  f16-. \grace fis g-. e-. \grace fis g-. d-. \grace fis g-. c,-. \grace fis g-. b,-. \grace fis' g-. a,-. \grace fis' g-. g,-. \grace fis' g-. f,-. \grace fis' g-.
  e,-. \grace fis' g-. g,-. \grace fis' g-. c,-. \grace fis g-. e-.\grace fis g-. d4 \breathe g,8. g16
  a16( g fis g) d'( c b c) e( d cis d) f( e dis e)
  g4.( f8) e8-. e( dis e)
  g16( fis) f-. e-. d16-. c-. b-. a-. a([ g) d'-. c-.] b-. a-. g-. f-.
  e( f e dis f f fis g) c,4 \breathe g'8. g16
  a16( g fis g) d'( c b c) e( d cis d) f( e dis e)
  a4. ( e16) d-. a-. cis,( d) f-. a-. d-. f-. a-.
  g( fis) f-. e-. d-. c-. b-. a-. a( g) b-. a-. g-. f-. e-. d-.
  c( d) e-. f-. fis-. g-. a-. b-. c4 r8 c8 \bar "||"
  \key aes \major \tempo "Più lento" \set Score.tempoHideNote = ##t \tempo 4 = 90 c4 c8. c16 c8( ees, aes des)
  c4.( ees8 c4) \breathe aes8. aes16
  bes4( f'8.[ \turn ees16]) ees8( des ees, des')
  c4.( ees8) aes,4 r8 c8
  c4 c8.[ c16] c8( ees aes,) aes'
  aes2( f4) \breathe f8.[ f16]
  e8 g4.-> ~ g16[( fis) f-. d-.] b-.[ g-. fis-. d-.]
  c2 r16 c'16([ b c] b[ c \grace ees! des!16.-\fermata c32])
  c16( des c b) c[( c,) ees-. aes-.] c-.[ ees( d ees)] aes,-. des( ees des)
  c16( aes') g f ees des c bes c( aes) ees c aes( c) ees aes
  bes-. des( ees des) ees,-. des'( ees des) g,-. des'( ees des) bes-. des( ees des)
  c( aes') g f ees-. des-. c-. bes-. aes4 \breathe aes,16( c) ees-. aes-.
  c( des c b) c( c,) ees-. aes-. c( bes) c-. des-. ees-. f-. g-. aes-.
  
}

\score {
  \new Staff \with {
    %instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
