#!/bin/bash
#
#

workdir="lily-files"

mkdir -p $workdir


generator_scale() {
key_sig=$1
title=$2
note1=$3
note2=$4
note3=$5
note4=$6
note5=$7
note6=$8
note7=$9
note8=${10}
inc_note6=${11}
inc_note7=${12}


cat > ./$workdir/${title}_Minor_Scales_LO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}
\markup{"$title Natural Minor Scale (Lower Octave)"}
\score {{
    \global
    \relative c' {
      	$note1 4 $note2 $note3 $note4 $note5 $note6 $note7 $note8 $note8 $note7 $note6 $note5 $note4 $note3 $note2 $note1
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}


EOF

cat > ./$workdir/${title}_Minor_Scales_HO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Natural Minor (Higher Octave)"}
\score {{
    \global
    \relative c'' {
      	$note1 4 $note2 $note3 $note4 $note5 $note6 $note7 $note8 $note8 $note7 $note6 $note5 $note4 $note3 $note2 $note1
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF

cat > ./$workdir/${title}_Minor_Scales_2O.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Natural Minor (Two Octave)"}
\score {{
    \global
    \relative c' {
      	${note1}2 ${note2}4 $note3 $note4 $note5 $note6 $note7 ${note8}2 ${note2}4 $note3 $note4 $note5 $note6 $note7 ${note8}2  
	${note8}2 ${note7}4 $note6 $note5 $note4 $note3 $note2 ${note1}2 ${note7}4 $note6 $note5 $note4 $note3 $note2 ${note1}2
        
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF

cat > ./$workdir/${title}_Minor_Harmonic_Scales_LO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Harmonic Minor Scale (Lower Octave)"}
\score {{
    \global
    \relative c' {
      	$note1 4 $note2 $note3 $note4 $note5 $note6 $inc_note7 $note8 $note8 $inc_note7 $note6 $note5 $note4 $note3 $note2 $note1
        \bar ":|."
    }
}
}
\layout {
    indent = #0
    ragged-last = ##f
}


EOF

cat > ./$workdir/${title}_Minor_Harmonic_Scales_HO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}


\markup{"$title Harmonic Minor Scale (Higher Octave)"}
\score {{
    \global
    \relative c'' {
      	$note1 4 $note2 $note3 $note4 $note5 $note6 $inc_note7 $note8 $note8 $inc_note7 $note6 $note5 $note4 $note3 $note2 $note1
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}


EOF

cat > ./$workdir/${title}_Minor_Harmonic_Scales_2O.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Harmonic Minor Scale (Two Octave)"}
\score {{
    \global
    \relative c' {
      	${note1} 2 ${note2}4 $note3 $note4 $note5 $note6 $inc_note7 ${note8}2 ${note2}4 $note3 $note4 $note5 $note6 $inc_note7 ${note8}2  
	${note8} 2 ${inc_note7} 4 $note6 $note5 $note4 $note3 $note2 ${note1}2 ${inc_note7}4 $note6 $note5 $note4 $note3 $note2 ${note1}2
       \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}


EOF

cat > ./$workdir/${title}_Minor_Melodic_Scales_LO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Melodic Minor Scale (Lower Octave)"}
\score {{
    \global
    \relative c' {
      	$note1 4 $note2 $note3 $note4 $note5 $inc_note6 $inc_note7 $note8 $note8 ${note7} ${note6} $note5 $note4 $note3 $note2 $note1
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}


EOF

cat > ./$workdir/${title}_Minor_Melodic_Scales_HO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Melodic Minor Scale (Higher Octave)"}
\score {{
    \global
    \relative c'' {
      	$note1 4 $note2 $note3 $note4 $note5 $inc_note6 $inc_note7 $note8 $note8 ${note7} ${note6} $note5 $note4 $note3 $note2 $note1
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF

cat > ./$workdir/${title}_Minor_Melodic_Scales_2O.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Melodic Minor Scale (Two Octave)"}
\score {{
    \global
    \relative c' {
      	${note1}2 ${note2}4 $note3 $note4 $note5 $inc_note6 $inc_note7 ${note8}2 ${note2}4 $note3 $note4 $note5 $inc_note6 $inc_note7 ${note8}2  
	${note8}2 ${note7}4 $note6 $note5 $note4 $note3 $note2 ${note1}2 ${note7}4 $note6 $note5 $note4 $note3 $note2 ${note1}2
       \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF

cat > ./$workdir/${title}_Minor_Arpeggios_LO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Minor Arpeggios (Lower Octave)"}
\score {{
    \global
    \relative c' {
      	$note1  4 $note3  $note5   $note8 $note8   $note5  $note3  $note1
        \bar ":|."
    }
}
}
\layout {
    indent = #0
    ragged-last = ##f
}


EOF

cat > ./$workdir/${title}_Minor_Arpeggios_HO.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Minor Arpeggios (Higher Octave)"}
\score {{
    \global
    \relative c'' {
      	$note1  4 $note3  $note5   $note8 $note8   $note5  $note3  $note1
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF

cat > ./$workdir/${title}_Minor_Arpeggios_2O.ly << EOF
\version "2.19.82"

\header  {
title = "$title Minor"
}

global = {
    \key $key_sig \minor
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Minor Arpeggios (Two Octave)"}
\score {{
    \global
    \relative c' {
      	$note1  2 $note3  4 $note5   $note8 2   $note3 4  $note5   $note8 2
	$note8  2 $note5  4 $note3   $note1 2   $note5 4  $note3   $note1 2
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF


}


generator_scale $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} ${12}
