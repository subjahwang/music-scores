% This version is heavily based on a version from May 2011.
% This version was created on 23 Feb 2014 at 23:12 PST.
%----------------------------------------------------------------------------
% Contact me at mikemoral [at] live [dot] com.
%
% This file is based on a public domain score and based on a
% a LilyPond file I previously worked on and is is released under the
% Creative Commons Attribution ShareAlike 3.0 License.
%
% The original version of this file is availble at GitHub at
%	https://github.com/mikemoral/open-scores/tree/master/HartyFanfare
%
%Last updated 23 Feb 2014 at 23:13 PST

\version "2.14.2"

\header {
  title = "Fanfare"
  subtitle = "for Four Trumpets"
  composer = "Hamilton Harty"
  copyright = "©2014 M. Morales under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegro"
}

trumpetBbI = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
    r4 \tempo "Allegro" c4-\f ~ \times 2/3 { c8-. b-. c-. } \times 2/3 { b-. a-. b-. }
    \times 2/3 { a g a } eis2-\sf( \< g4) \!
    r4 c4-^ ~ \times 2/3 { c8 b c } \times 2/3 { b a b }
    \times 2/3 { a g a } f4-\sf ~ f8.[\< f32 f] g8.[ g32 g]
    a4 \! f4-^ ~ f8.[ f32 f] f8.[ f32 f]
    e8.[ e32 e] e8.[ e32 e] \times 2/3 { a8 e c } \times 2/3 { e a e }
    fis8.[ fis32 fis]\< a2.~
    a2 ~ a4-.-\ff \! r4
  
}

trumpetBbII = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  
}

trumpetBbIII = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  
}

trumpetBbIV = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  
}

drum = \drummode {
  \global
  r1
  r4 snare2.:32 \< 
  snare4\! r4 r2
  r4 snare2.:32 \< 
  snare4\! r4 r2
  \grace { snare8[ snare snare snare] } snare4-. r4 \grace { snare8[ snare snare snare] } snare4-. r4
  snare1:32 \<
  snare2:32 \! snare4-.-\ff r4
}

trumpetBbIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb I"
  midiInstrument = "trumpet"
} \trumpetBbI

trumpetBbIIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb II"
  midiInstrument = "trumpet"
} \trumpetBbII

trumpetBbIIIPart = \new Staff \with {
  instrumentName = "Trumpet in Bb III"
  midiInstrument = "trumpet"
} \trumpetBbIII

trumpetBbIVPart = \new Staff \with {
  instrumentName = "Trumpet in Bb IV"
  midiInstrument = "trumpet"
} \trumpetBbIV

drumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
} \drum

\score {
  <<
    \trumpetBbIPart
    \trumpetBbIIPart
    \trumpetBbIIIPart
    \trumpetBbIVPart
    \drumsPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
