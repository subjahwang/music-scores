\version "2.18.2"

\header {
  title = "Concertante Duo No. 12"
  subtitle = "For Two Guitars"
  composer = "Guillaume-Pierre-Antoine Gatayes"
  opus = "Op. 82"
}

global = {
  \key g \major
  \time 4/4
}

classicalGuitar = \relative c' {
  \global
  % Music follows here.
  \partial 4
  \tempo "Moderato" d8.[ b16]
  g4 <g g,>2 b8 g
  d4 <d d>2 d8.[ g16]
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "1st Guitar"
  } { \clef "treble" \classicalGuitar }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
