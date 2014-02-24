% This version is heavily based on a version from May 2011.
% This version was created on 23 Feb 2014 at 23:12 PST.
%----------------------------------------------------------------------------
% Contact me at mikemoral [at] live [dot] com.
%
% This file is based on a public domain score and based on a
% a LilyPond file I previously worked on and is is released under the
% Creative Commons Attribution ShareAlike 3.0 License.
%
% The original version of this file is availble on GitHub at
%	https://github.com/mikemoral/open-scores/tree/master/HartyFanfare
%
% Last updated 23 Feb 2014 at 23:13 PST

\version "2.14.2"

\header {
  title = "Fanfare"
  subtitle = "for Four Trumpets"
  composer = "Hamilton Harty"
  copyright = "©2011-2014 M. Morales under the terms of the Creative Commons ShareAlike Attribution 3.0 license"
  % Remove default LilyPond tagline
  % tagline = ##f
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
    r4 c4-\f ~ \times 2/3 { c8-. b-. c-. } \times 2/3 { b-. a-. b-. }
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
  r4 g''4-\f ~ \times 2/3 { g8 f g } \times 2/3 { f e f }
  \times 2/3 { e d e } e2.-\sf \<
  r4 \! g4-^ ~ \times 2/3 { g8 f g } \times 2/3 { f e f }
  \times 2/3 { e d e } e4-\sf ~ e8.[\< e32 e] e8.[ e32 e]
  e4 c4-^ ~ c8.[ c32 c32] \times 2/3 { c8[ b c] }
  \times 2/3 { cis8 \! b cis } \times 2/3 { cis8 b cis } \times 2/3 { cis8 b cis } \times 2/3 { b cis b }
  d4 ~ d8.[ \< a32 a] a8.[ d32 d] d8.[ fis32 fis]
  fis2 ~ fis4-\ff-. \! r4
  
}

trumpetBbIII = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  r4 e'4-\f ~ \times 2/3 { e8 d e } \times 2/3 { d c d }
  \times 2/3 { c b c } b2.-\sf \<
  r4 \! e4 ~  \times 2/3 { e8 d e } \times 2/3 { d c d }
  \times 2/3 { c b c } b4-\sf ~ b8.[ \< b32 b] b8.[ b32 b]
  cis4 \! a4-^ ~ a8.[ a32 a] \times 2/3 { a8 e a }
  \times 2/3 { a8 e a } \times 2/3 { a8 e a } \times 2/3 { a8 e f } \times 2/3 { gis a gis }
  a4 ~ a8.[ \< fis32 fis] fis8.[ a32 a] a8.[ d32 d]
  d2 ~ d4-\ff \! r4
  
}

trumpetBbIV = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  c4-\f ~ c8.[ c32 c] c4 ~ \times 2/3 { c8 e c }
  \times 2/3 { f8 e-. f } g2-\sf( \< e4) \!
  c8.[ c32 c] g'8.[ c,32 c] c4 ~ \times 2/3 { c8 e c }
  \times 2/3 { f8 g f } g8.-\sf[ g32 g] g8.[\< g32 g] e8.[ e32 e]\!
  a4 r8. e32 e cis8.[ e32 e] a8.[ e32 e]
  cis8.[ e32 e] a8.[ e32 e] \times 2/3 { cis8 gis' f } \times 2/3 { e8 cis e }
  d4 ~ d8.[ \< d32 d] d8.[ fis32 fis] fis8.[ a32 a] d2 \! ~ d4-.-\ff r4

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
  instrumentName = "1st Bb Tpt"
  midiInstrument = "trumpet"
} \trumpetBbI

trumpetBbIIPart = \new Staff \with {
  instrumentName = "2nd Bb Tpt"
  midiInstrument = "trumpet"
} \trumpetBbII

trumpetBbIIIPart = \new Staff \with {
  instrumentName = "3rd Bb Tpt"
  midiInstrument = "trumpet"
} \trumpetBbIII

trumpetBbIVPart = \new Staff \with {
  instrumentName = "4th Bb Tpt"
  midiInstrument = "trumpet"
} \trumpetBbIV

drumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Side Drum"
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
