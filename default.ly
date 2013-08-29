% This LilyPond file was generated by Rosegarden 1.7.3
\version "2.12.0"
% point and click debugging is disabled
#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 16)
#(set-default-paper-size "a4")

global = { 
    \time 8/8
}
globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 4 = 60  
}
        
melodica = \new Voice {            
	 \set Staff.instrumentName = \markup { \column { "Melodica" } }
	 \autoBeamOn

} 
  

violinOne = \new Voice {
        \set Staff.instrumentName = \markup { \column { "Violin 1" } }
	\autoBeamOn   
	\compressFullBarRests

}
    
violinTwo=\new Voice {
       \set Staff.instrumentName = \markup { \column { "Violin 2" } }
       \autoBeamOn     
       \compressFullBarRests

} % Voice

viola= \new Voice {
        \set Staff.instrumentName = \markup { \column { "Viola" } }
	\autoBeamOn
        \compressFullBarRests      
}

cello = \new Voice {
        \set Staff.instrumentName = \markup { \column { "Cello" } }
        \autoBeamOn 
        \compressFullBarRests           

} % Voice
\paper {
  oddHeaderMarkup = \markup \bold { 
	\fill-line {
	  "default title" 
	  \fromproperty #'page:page-number-string 
  }}
  evenHeaderMarkup = \markup \bold { 
	\fill-line {
	  "default title" 
	  \fromproperty #'page:page-number-string 
  }}
  between-system-padding = #0.05
  between-system-space = #0.05
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}
\score {
  \new StaffGroup <<
    \new Staff << \global \globalTempo \melodica >>
    \new Staff << \global \globalTempo \violinOne >>
    \new Staff << \global \globalTempo \violinTwo >>
    \new Staff << \global \globalTempo \viola >>
    \new Staff << \global \globalTempo \cello >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner #'uniform-stretching = ##t
    }
  }
}
