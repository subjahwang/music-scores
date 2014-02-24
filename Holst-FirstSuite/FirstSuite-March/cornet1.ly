%Last updated 23 Feb 2014 22:42 Pacific time
%Created 2014-02-23 21:34 PST
%
%Released under the terms of the Creative Commons Attribution-ShareAlike 4.0 International license.
%This means you can freely use this work and derive from it so long as you give me attribution
%and you share under the same license.
%The details of the license are at http://creativecommons.org/licenses/by-sa/4.0/deed.en_US
%
%Contact me at mikemoral at live dot com.

\version "2.14.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "III. March"
  composer = "Gustav Holst"
  copyright = "©2014 M. Morales under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
  % Remove default LilyPond tagline
  % tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \time 2/2
  \tempo "Tempo di marcia"
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  \compressFullBarRests
  r4 f4-.-\ff e-. a,-.
  R1*2
  r2 a'->--\mf
  g4-\ff d f d
  e8 f e d c4 bes
  a d d8 c d4
  a d a'2->
  g4 d f d				%Measure 9
  e8 f e d c4 bes
  a d d8 e d c
  d4 r4 c2->
  a4. a8 a4 a
  a4. a8 a4 c
  f4 e d c				%Measure 15
  f4 e d c
  a4. a8 a4 a
  a4. a8 a4 c
  a' g f e
  a g f e
  d4. d8 d4 d
  d4. d8 d4 d				%Measure 22
  <bes' bes,> <a a,> <g g,> f
  e d c bes
  c4.\cresc c8 c4 c
  d4. d8 d4 d
  a'-\ff f d b
  c4 r4 a'2->-\>
  g4\f d f d				%Measure 29
  e8 f e d c4 bes
  a d d8 c d4
  a d a'2->
  e8 f e d c4 bes
  a d f8 g f e				%Measure 35
  f4 r4 f r4
  \key bes \major d,1->-\ff-\dim ~
  d ~
  d ~
  d2.\!\> r4\!
  R1*30
  R1*7
}

\score {
  \new Staff \with {
    instrumentName = "1st Bb Cornet"
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
