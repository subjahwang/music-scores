%Last updated 2014-02-18 19:15 Pacific time
%
%Released under the terms of the Creative Commons Attribution-ShareAlike 4.0 International license.
%This means you can freely use this work and derive from it so long as you give me attribution
%and you share under the same license.
%The details of the license are at http://creativecommons.org/licenses/by-sa/4.0/deed.en_US

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

makePercent =
#(define-music-function (parser location note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))

trumpetBb = \relative c'' {
  \global
  \transposition bes
  d8-.-\pp r8 r4
  r4 r8 \mark \markup \small "Solo. Con sordini" f,8->-\mf
  g8-> d4-> d8
  f'8.([ e16 d8-.) e-.]
  c8.([ d16 c8-.) a-.]			%Measure 5
  c4. f,8->
  g8-> d'4-> d8  
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
