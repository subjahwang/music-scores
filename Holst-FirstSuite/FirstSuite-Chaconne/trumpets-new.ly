% This file is based on a file I worked on previously in 2011.
% I have previously released this file under the terms of the
% Creative Commons Attribution ShareAlike 3.0 license.
%
% You can find the original version of this score at
% https://raw.githubusercontent.com/mikemoral/open-scores/master/HolstFirstSuite/trumpets.ly
%
%
% This file was last updated on 24 June 2014 08:50 PST
%
% You can contact me at lagetisto at gmx dot com

\version "2.18.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "I. Chaconne"
  instrument = "B♭ Trumpets"
  composer = "Gustav Holst"
  tagline = "Music engraving by LilyPond 2.18.2. This score was last updated on 24 June 2014."
  copyright = "This score is released under the terms of the Creative Commons ShareAlike Attribution 3.0 license"
}

cpap = \markup { \italic "cres. poco a poco"}
solo = \mark \markup { "Solo" }
soli = \markup { "Soli" }
bril = \markup { \small \bold \italic "Brillante"}
maes = \markup { \italic "Maestoso" }
lega = \markup { \italic "Legato" }
adue = \markup { "a2" }
tenu = \markup { \italic "ten."}
dim  = \markup { \italic "dim." }
rit  = \markup { \italic "rit. al fine" }

global = {
  \key f \major
  \time 3/4
}

trumpets = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  \tempo "Allegro moderato"
  \compressFullBarRests
  %\set Score.markFormatter = #format-mark-box-alphabet
 \tempo "Allegro moderato"
	\partial 4 r4
	R2.*24
	R2.*6
	r8 <c, c'>16-\mf <c c'> <c c'>8[ <c c'>16 <c c'>] <c c'>8[ <c c'>16 <c c'>]
	<c c'>8[ <c c'>16 <c c'>] <c c'>8[ <c c'>16 <c c'>] r8 <f f'>8-\f
	r8 <d d'>16 <d d'> <d d'>8 <d d'> r8 <a' a>
	r8 <c, c'>16 <c c'> <c c'>8 <c c'> r8 <c c'>
	r8 <f f'>16 <f f'> <f f'>8 <f f'> r8 <f f'>
	r8 <c c'>16 <c c'> <c c'>8 <c c'> r8 <c c'>
	r8 <d d'>16 <d d'> <d d'>8 <d d'> r8 <bes' bes,>
	r8 <c, c'>16 <c c'> <f f'>8 <f f'> r8 <f f'>
	r8 <c c'>16 <c c'> <c c'>8 r8 <c c'> r8
	r4 <c c'>8 r8 <c c'>\ff r8
	<c c'>8^\markup {\italic "Brillante"} r8 r4 <f f'>8 r8
	<g g'>8 r8 r4 <a a'>8 r8
	<a a'>8 r8 <g g'>8 r8 r4
	<c, c'>8 r8 r4 <c c'>8 r8
	<f f'>8  r8 r4 <e e'>8 r8
	<f f'>8 r8 <g g'>8 r8 r4
	<c c'>8 r8 r4 r4
	r4 r4 f,4^\adue^\tenu
	g2 d'4
	c2 a4
	f4 g2
	c,2 a'4 
	d2 e4
	<a, a'>4 <g g'>2
	<c c'>2.-\dim ~
	<c c'>2 r4
	R2.*24 
	R2.*16
	R2.*6
	f,2.^\adue-\p ~
	f2. \break
	c2.-\cpap^\markup { \center-column { \small \bold 1} } ~
	c2.^\markup { \center-column { \small \bold 2} } ~
	c2.^\markup { \center-column { \small \bold 3} } ~
	c2.^\markup { \center-column { \small \bold 4} } ~
	c2.^\markup { \center-column { \small \bold 5} } ~
	c2.^\markup { \center-column { \small \bold 6} } ~
	c2.^\markup { \center-column { \small \bold 7} } ~
	c2.^\markup { \center-column { \small \bold 8} } ~
	c2 f4-\ff
	bes2^\maes <f f'>4( ~
	<f f'>4 <e e'>4) <f c'>4(
	<a c>) <g c> <f b>
	<e c'>2 <e c'>4(
	<f c'>2) <g bes>4
	<e c'> <g bes>2
	g4^\adue ( a bes
	c d e)
	<f, f'>2-\rit r4
	R2.*4
	r4 r4 <f f'>4-> ~
	<f f'>2 <f f'>4-> ~
	<f f'>2. ~
	<f f'>4 <d' g>2
	<c c'>2.-\fermata
  
  
}

\score {
  \new Staff \with {
    instrumentName = "B♭ Trumpets"
  } \trumpets
  \layout { }
  \midi {
    \tempo 4=100
  }
}
