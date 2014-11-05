%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This Lilypond file is copyrighted and is released %
% under the terms of the CC-BY-SA 4.0 license       %
% https://creativecommons.org/licenses/by-sa/4.0/   %
% This score last updated 5 November 2014.          %
%						    %
%Contact me at mikemoral [at] live [dot] com.       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\version "2.18.2"
\version "2.14.2"

\header {
  title      = "Characteristic Study No. 11"
  composer   = \markup { \smallCaps "Jean-Baptiste Arban" }
  copyright  = \markup { "©2014 Michael Morales." \small "This score is released under the terms of the Creative Commons ShareAlike Attribution 4.0 license" }
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
  \key aes \major \tempo "Più lento" c4 c8. c16 c8( ees, aes des)
  c4.( ees8 c4) \breathe aes8. aes16
  bes4( f'8. \turn [ ees16]) ees8( des ees, des')
  c4.( ees8) aes,4 r8 c8
  c4 c8.[ c16] c8( ees aes,) aes'
  aes2( f4) \breathe f8.[ f16]
  e8 g4.-> ~ g16[( fis) f-. d-.] b-.[ g-. fis-. d-.]
  c2 r16 c'16([ b c] b[ c \grace ees! des!16.-\fermata c32])
  c16( des c b) c[( c,) ees-. aes-.] c-.[ ees( d ees)] aes,-. des( ees des)
  c16( aes') g f ees des c bes c( aes) ees c aes( c) ees aes
  bes-. des( ees des) ees,-. des'( ees des) g,-. des'( ees des) bes-. des( ees des)
  c( aes') g f ees-. des-. c-. bes-. aes4 \breathe aes,16( c) ees-. aes-.
  c( des c b) c( c,) ees-. aes-. c( bes) c-. des-. ees-. f-. g-. aes-. %bar 33
  aes( f) c-. aes-. f4 ~ f8[ \breathe c16-. f-.] aes-. c-. f-. aes-.
  g( e) c-. bes-. g-. e-. c-. e'-. g( f) e-. des-. c-. bes-. aes-. g-. %is the 3rd E a flat note? -- bar 35
  f( e f) aes-. des( c b c) f8[ \breathe e16 f] e f \grace aes ges16.-\fermata f32 \bar "||"
  \key des \major f4 f8. f16 f8[( ges16 f] ees8 des)
  aes4.( f8 aes4) \breathe des8 ees
  f4 f8. f16 f4( \turn aes8) ges16-. f-.
  ees4 ~ ees8( aes,16) c ees4 \breathe ees8. f16
  ges4 ges8. ges16 ges4( f8) e
  f2( des4) \breathe f8. f16
  
  
}

\score {
  \new Staff \with {
    %%instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
