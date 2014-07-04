% This version is based on a I made version from May 2011.
% This version was created on 23 Feb 2014 at 23:12 PST.
%----------------------------------------------------------------------------
% Contact me at lagetisto at gmx dot com.
%
% This file is based on a public domain score available from IMSLP
% and based on a LilyPond file I previously worked on and it
% is released under the Creative Commons Attribution ShareAlike
% 3.0 License.
%
% The original version of this file is availble on GitHub at
%	https://github.com/mikemoral/open-scores/tree/master/HartyFanfare
%
% The original version was published in 1921 by Goodwin & Tabb of London
% and can be found on IMSLP at
%	http://imslp.org/wiki/Fanfare_(Harty,_Hamilton)
%
%
% Last updated 24 Jun 2014 23:13 PST

\version "2.18.2"

\include "fanfare.ily"

\header {
  title = "Fanfare"
  subtitle = "for Four Trumpets"
  composer = "Hamilton Harty"
  tagline = "Music engraving by LilyPond 2.18.2. This score was last updated on 24 June 2014."
  copyright = "©2011-2014 M. Morales under the terms of the Creative Commons ShareAlike Attribution 3.0 license"
}

trumpetBbIPart = \new Staff \with {
  instrumentName = "1st B♭ Tpt"
  midiInstrument = "trumpet"
} \trumpetBbI

trumpetBbIIPart = \new Staff \with {
  instrumentName = "2nd B♭ Tpt"
  midiInstrument = "trumpet"
} \trumpetBbII

trumpetBbIIIPart = \new Staff \with {
  instrumentName = "3rd B♭ Tpt"
  midiInstrument = "trumpet"
} \trumpetBbIII

trumpetBbIVPart = \new Staff \with {
  instrumentName = "4th B♭ Tpt"
  midiInstrument = "trumpet"
} \trumpetBbIV

drumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Side Drum"
} \drum

\paper {
  #(set-paper-size "letter")
  %page-count = 1
  between-system-padding=0
  ragged-last-bottom = ##f
}

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
