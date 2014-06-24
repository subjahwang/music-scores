%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This score was last updated	     %%
%%	24 June 2014 02:42 PST       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  To do:			     %%
%%    *Spacing errors                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.18.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "II. Intermezzo"
  instrument = "B♭ Trumpets"
  composer = "Gustav Holst"
  tagline = "Music engraving by LilyPond 2.18.2. This score was last updated on 24 June 2014."
  copyright = "This score is released under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  \compressFullBarRests
  % Music follows here.
  <d, d'>8-\pp r8 r4
  R2*23 \mark \default
  R2*4
  r4 r8 <f d'>8->-\p
  r4 r8 <f d'>8->
  R2*2
  r4 r8 <a f'>8->
  r4 r8 <a f'>8->
  r4 r8 <a e'>8->-\markup {\italic "crescendo"}
  r4 r8 <a e'>8->
  r4 r8 <a fis'>8->
  r4 r8 <a fis'>8->
  <c g'>8-.[ <c a'>-. <c g'>-. <c a'>-.]
  <c g'>-.[ <c a'>-. <c g'>-. <c a'>-.]
  <c g'>-. \< [ <c a'>-. <c g'>-. <c a'>-.]
  <c g'>-.[ <c a'>-. <c g'>-. <c a'>-.]\! \mark \default
  R2*24 \mark \default
  \time 4/4 \tempo "L'istesso tempo" 
  R1*16 \mark \default
  \time 2/4 R2*16 \mark \default
  R2*14 \mark \default
  \key d \major 
  \time 4/4
  R1*20
  
  
  
  
}

\score {
  \new Staff \with {
    instrumentName = "B♭ Trumpets"
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
