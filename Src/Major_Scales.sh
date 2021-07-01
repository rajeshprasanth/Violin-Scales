#!/bin/bash
#
#
workdir=lily-files
mkdir -p $workdir

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
cat > ./$workdir/${title}_Major_Broken_Chords.ly << EOF
\version "2.19.82"


\markup{"$title Major Broken Chords"}
\score {{
    \key $key_sig \major
    \numericTimeSignature
    \time 3/4
    \relative c' {
    $note1 4 $note3 $note5
	$note3 $note5 $note1
	$note5 $note1 $note3
	$note1 $note3 $note5
	
	$note5 $note3 $note1
	$note3 $note1 $note5
	$note1 $note5 $note3
	$note5 $note3 $note1

        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF

cat > ./$workdir/${title}_Major_Broken_3rd.ly << EOF
\version "2.19.82"

\markup{"$title Major Broken 3rd"}
\score {{
    \key $key_sig \major
    \numericTimeSignature
    \time 2/4
    \relative c' {
     $(cat broken.dat) 
        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}

EOF

cat > ./$workdir/${title}_Major_sequences.ly << EOF
\version "2.19.82"

\markup{"$title Major Sequences"}
\score {{
    \key $key_sig \major
    \numericTimeSignature
    \time 2/4
    \relative c' {
        $(cat sequence.dat)

        \bar ":|."
    }
}
}

\layout {
    indent = #0
    ragged-last = ##f
}
EOF

cat > ./$workdir/${title}_Major_keys.ly << EOF
\version "2.19.82"
\header {
  title = "Scale of $title"
}
global = {
    \key $key_sig \major
    \numericTimeSignature
    \time 4/4
}

\markup{"$title Major Keys "}
\score {{
    \global
     \relative c' {
       $(cat all_key_noslur.dat)
        \bar ":|."
    }
}
}
\pageBreak
\markup{"$title Major Keys with two notes slurred"}
\score {{
    \global
     \relative c' {
       $(cat all_key_2slur.dat)
        \bar ":|."
    }
}
}
\pageBreak
\markup{"$title Major Keys with four note slurred"}
\score {{
    \global
     \relative c' {
       $(cat all_key_4slur.dat)
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

rm -rf *.dat

cat > broken.dat <<EOF
      g 8 b
       a c
       b d
       c e
       d f
       e g
       f a
       g b
       a c
       b d
       c e
       d f
       e g
       f a
       g b
     
	b g       
	a f       
	g e       
	f d       
	e c       
	d b       
	c a       
	b g       
	a f       
	g e       
	f d       
	e c       
	d b       
	c a       
	b g   
EOF

cat > sequence.dat <<EOF
g 8 a b c
        a 8 b c d
        b c d e
        c d e f
        d e f g
        e f g a
        f g a b
        g a b c
        a b c d
        b c d e
        c d e f
        d e f g
        e f g a
        f g a b

        b a g f        
        a g f e        
        g f e d        
        f e d c        
        e d c b        
        d c b a        
        c b a g        
        b a g f        
        a g f e        
        g f e d        
        f e d c        
        e d c b        
        d c b a        
        c b a g
EOF

cat > all_key_noslur.dat << EOF
	g 4 a b c | d e f g | a g f e | d c b a  \bar "||" \break
        a b c d | e f g a | b a g f | e d c b  \bar "||" \break
        b c d e | f g a b | c b a g | f e d c  \bar "||" \break
        c d e f | g a b c | d c b a | g f e d  \bar "||" \break
        d e f g | a b c d | e d c b | a g f e  \bar "||" \break
        e f g a | b c d e | f e d c | b a g f  \bar "||" \break
        f g a b | c d e f | g f e d | c b a g  \bar "||" \break
        g a b c | d e f g | a g f e | d c b a  \bar "||" \break
        a b c d | e f g a | b a g f | e d c b  
EOF

cat > all_key_2slur.dat << EOF
	g 4 ( a ) b ( c)| d ( e ) f ( g ) | a ( g ) f ( e ) | d ( c ) b ( a ) \bar "||" \break
        a ( b ) c ( d ) | e ( f ) g ( a ) | b ( a ) g ( f ) | e ( d ) c ( b ) \bar "||" \break
        b ( c ) d ( e ) | f ( g ) a ( b ) | c ( b ) a ( g ) | f ( e ) d ( c ) \bar "||" \break
        c ( d ) e ( f ) | g ( a ) b ( c ) | d ( c ) b ( a ) | g ( f ) e ( d ) \bar "||" \break
        d ( e ) f ( g ) | a ( b ) c ( d ) | e ( d ) c ( b ) | a ( g ) f ( e ) \bar "||" \break
        e ( f ) g ( a ) | b ( c ) d ( e ) | f ( e ) d ( c ) | b ( a ) g ( f ) \bar "||" \break
        f ( g ) a ( b ) | c ( d ) e ( f ) | g ( f ) e ( d ) | c ( b ) a ( g ) \bar "||" \break
        g ( a ) b ( c ) | d ( e ) f ( g ) | a ( g ) f ( e ) | d ( c ) b ( a ) \bar "||" \break
        a ( b ) c ( d ) | e ( f ) g ( a ) | b ( a ) g ( f ) | e ( d ) c ( b ) 
EOF

cat > all_key_4slur.dat << EOF
      g 4 ( a b c ) | d ( e f g ) | a ( g f e ) | d ( c b a )   \bar "||" \break
        a ( b c d ) | e ( f g a ) | b ( a g f ) | e ( d c b )   \bar "||" \break
        b ( c d e ) | f ( g a b ) | c ( b a g ) | f ( e d c )   \bar "||" \break
        c ( d e f ) | g ( a b c ) | d ( c b a ) | g ( f e d )   \bar "||" \break
        d ( e f g ) | a ( b c d ) | e ( d c b ) | a ( g f e )   \bar "||" \break
        e ( f g a ) | b ( c d e ) | f ( e d c ) | b ( a g f )   \bar "||" \break
        f ( g a b ) | c ( d e f ) | g ( f e d ) | c ( b a g )   \bar "||" \break
        g ( a b c ) | d ( e f g ) | a ( g f e ) | d ( c b a )   \bar "||" \break
        a ( b c d ) | e ( f g a ) | b ( a g f ) | e ( d c b )  
EOF

if [ $1 == "g" ] ;then
	sed -i 's/\<f\>/fis/g' *.dat
elif [ $1 == "d" ] ;then
	sed -i 's/\<f\>/fis/g' *.dat
	sed -i 's/\<c\>/cis/g' *.dat
elif [ $1 == "a" ] ;then
	sed -i 's/\<f\>/fis/g' *.dat
	sed -i 's/\<c\>/cis/g' *.dat
	sed -i 's/\<g\>/gis/g' *.dat
elif [ $1 == "e" ] ;then
	sed -i 's/\<f\>/fis/g' *.dat
	sed -i 's/\<c\>/cis/g' *.dat
	sed -i 's/\<g\>/gis/g' *.dat
	sed -i 's/\<d\>/dis/g' *.dat
elif [ $1 == "b" ] ;then
	sed -i 's/\<f\>/fis/g' *.dat
	sed -i 's/\<c\>/cis/g' *.dat
	sed -i 's/\<g\>/gis/g' *.dat
	sed -i 's/\<d\>/dis/g' *.dat
	sed -i 's/\<a\>/ais/g' *.dat
elif [ $1 == "f" ] ;then
	sed -i 's/\<b\>/bes/g' *.dat
elif [ $1 == "bes" ] ;then
	sed -i 's/\<b\>/bes/g' *.dat
	sed -i 's/\<e\>/ees/g' *.dat
elif [ $1 == "ees" ] ;then
	sed -i 's/\<b\>/bes/g' *.dat
	sed -i 's/\<e\>/ees/g' *.dat
	sed -i 's/\<a\>/aes/g' *.dat
elif [ $1 == "aes" ] ;then
	sed -i 's/\<b\>/bes/g' *.dat
	sed -i 's/\<e\>/ees/g' *.dat
	sed -i 's/\<a\>/aes/g' *.dat
	sed -i 's/\<d\>/des/g' *.dat
elif [ $1 == "des" ] ;then
	sed -i 's/\<b\>/bes/g' *.dat
	sed -i 's/\<e\>/ees/g' *.dat
	sed -i 's/\<a\>/aes/g' *.dat
	sed -i 's/\<d\>/des/g' *.dat
	sed -i 's/\<g\>/ges/g' *.dat
fi














generator_scale $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10}
