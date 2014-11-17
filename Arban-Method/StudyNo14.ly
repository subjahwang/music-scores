%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This Lilypond file is copyrighted and is released %
% under the terms of the CC-BY-SA 4.0 license       %
% https://creativecommons.org/licenses/by-sa/4.0/   %
% This score last updated 16 November 2014.         %
%						    %
% Contact me at mikemoral [at] live [dot] com.      %
% 					            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\version "2.18.2"
\version "2.14.2"

\header {
  title      = "Characteristic Study No. 14"
  composer   = \markup { \smallCaps "Jean-Baptiste Arban" }
  copyright  = \markup { "©2014 Michael Morales." \small "This score is released under the terms of the Creative Commons ShareAlike Attribution 4.0 license" }
  instrument = \markup { "B♭ Trumpet" }
  
}

global = {
  \key c \major
  \time 12/8 
}

trumpetBb = \relative c' {
  \global
  \transposition bes
  % Music follows here.
  \tempo "Legato chromatique"
  c16( cis d dis e f fis g gis a bes b) c( b c e) d( c) b( a) a( g) g( f)
  
}

\score {
  \new Staff \with {
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {  }
}