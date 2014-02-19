%Last updated 2014-02-18 23:09 Pacific time
%
%Released under the terms of the Creative Commons Attribution-ShareAlike 4.0 International license.
%This means you can freely use this work and derive from it so long as you give me attribution
%and you share under the same license.
%The details of the license are at http://creativecommons.org/licenses/by-sa/4.0/deed.en_US
%
%
%    To Do:
%	1) Finish part
%	2) Add in text instructions
%
%Contact me at mikemoral at live dot com.

\version "2.14.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "II. Intermezzo"
  composer = "Gustav Holst"
  opus = "Op. 28"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
  \tempo "Vivace"
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  d8-.-\pp r8 r4
  r4 r8 \mark \markup \small "Solo con sordini" f,8->-\mf
  g8-> d'4-> d8
  f8.([ e16 d8-.) e-.]
  c8.([ d16 c8-.) a-.]			%Measure 5
  c4. f,8->
  g8-> d'4-> d8 
  f8.([ e16 d8) c-.]
  d2(
  d4.) d8-.				%Measure 10
  c8.([ d16 c8-.) bes-.]
  a8-.[ bes-. c-. a-.]
  bes4.( ees8
  bes4.) d8
  c8.([ d16 c8-.) bes-.]		%Measure 15
  g8-.[ f-. ees-. g-.]
  a2(
  a4.) d8-.
  f8.([ e16 d8-.) e-.]
  c8.([ d16 c8-.) bes-.]
  c4. f8->
  g-> d4-> d8
  f8.([ e16 d8) c-.]
  d4. r8
  r1
  c,4-\p c
  c c
  c4.( b8->)
  c4.( b8->)
  e4 e
  e e
  e4. d8->
  e4. d8->
  g4. fis8-.
  g4. fis8-.
  b4. a8->
  b4. a8->
  \repeat percent 3 { e8-.[ a-. e-. a-.] }
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
