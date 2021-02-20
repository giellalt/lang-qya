! Divvun & Giellatekno - open source grammars for Quenya language
! Copyright © 2015 The University of Tromsø & the Norwegian Sámi Parliament
! http://giellatekno.uit.no & http://divvun.no
!
! This program is free software; you can redistribute and/or modify
! this file under the terms of the GNU General Public License as published by
! the Free Software Foundation, either version 3 of the License, or
! (at your option) any later version. The GNU General Public License
! is found at http://www.gnu.org/licenses/gpl.html. It is
! also available in the file $GTHOME/LICENSE.txt.
!
! Other licensing options are available upon request, please contact
! giellatekno@uit.no or feedback@divvun.no

! ========================================================================== !
! !!            !!!Quenya morphological analyser                      !
! ========================================================================== !
!! INTRODUCTION TO MORPHOLOGICAL ANALYSER OF Quenya LANGUAGE.


Multichar_Symbols  !!≈ !!!Definitions for @CODE@

!! !!Analysis symbols
!  ----------------
!! The morphological analyses of wordforms for the Quenya
!! language are presented in this system in terms of the following symbols.
!! (It is highly suggested to follow existing standards when adding new tags).

!! The parts-of-speech are:
    +N +A +Adv +V                                 !!≈
    +Pron +CS +CC +Adp +Po +Pr +Interj +Pcle +Num !!≈

!! The parts of speech are further split up into:
    +Prop +Pers +Dem +Interr +Refl +Recipr +Rel +Indef

!! The Usage extents are marked using following tags:
    +Err/Orth
    +Use/-Spell

!! The nominals are inflected in the following Case and Number
    +Sing +Dual +Plur +Par
    +Nom +Acc +Gen +Ins +All +Dat +Loc +Short +Abl +Poss

!! The possession is marked as such:
    +PxSg1 +PxSg2 +PxSg3 +PxDu1 +PxDu2 +PxDu3 +PxPl1 +PxPl2 +PxPl3
!! The comparative forms are:
    +Comp +Superl
!! Numerals are classified under:
    +Attr +Card
    +Ord
!! Verb moods are:
    +Ind +Prs +Prt +Pot +Cond +Imprt
!! Verb personal forms are:
    +Sg1 +Sg2 +Sg3 +Du1 +Du2 +Du3 +Pl1 +Pl2 +Pl3
!! Other verb forms are
    +Inf +Ger +ConNeg +ConNegII +Neg +ImprtII +PrsPrc +PrfPrc +Sup +VGen +VAbess

! Abbreviated words are classified with:
    +ABBR +ACR
    +Symbol !!≈ * @CODE@ = independent symbols in the text stream, like £, €, ©
!! Special symbols are classified with:
    +CLB +PUNCT +LEFT +RIGHT
!! The verbs are syntactically split according to transitivity:
    +TV +IV
!! Special multiword units are analysed with:
    +Multi
!! Non-dictionary words can be recognised with:
    +Guess

!! Question and Focus particles:
    +Qst +Foc


!! Semantics are classified with
    +Mal +Fem +Sur
    +Plc
    +Org
    +Obj
    +Ani
    +Hum
    +Plant
    +Group
    +Time
    +Txt
    +Route
    +Measr
    +Wthr
    +Build
    +Edu
    +Veh
    +Clth


!! Derivations are classified under the morphophonetic form of the suffix, the
!! source and target part-of-speech.
    +V→N +V→V +V→A
    +Der/xxx


!! Morphophonology
!  ---------------
!! To represent phonologic variations in word forms we use the following symbols in the lexicon files:
!! Stem-dictionary forms (first form is the form used with endings, second is the form used with no endings)
    {stemd20} {stemt20} {stemm2n} {stems20} {stemn20}
    {stemu2o}
    {steme2é} {stemi2í}

!! Symbols used to trigger alternations in two-level rules
    {i}     ! start of a plural ending, deletes only e,i
    {o}     ! genitive ending, deletes only a,o
    {-V}    ! delete the preceeding vowel
    {l}     ! an l that triggers total regressive assimilation if possible

!! Symbols that are written differently in Tengwar script because of etymology, not phonology/context
    {w}  ! w/v
    ! th/s is written as þ
    ! ŋ/n is written as ñ

!! Assorted archiphonemes
    {strongi}  ! not deleted by a following {-V}, but is deleted by a following 'i'

!! !!Flag diacritics
!! We have manually optimised the structure of our lexicon using following
!! flag diacritics to restrict morhpological combinatorics - only allow compounds
!! with verbs if the verb is further derived into a noun again:
    @P.NeedNoun.ON@    !!≈ | @CODE@ | (Dis)allow compounds with verbs unless nominalised
    @D.NeedNoun.ON@    !!≈ | @CODE@ | (Dis)allow compounds with verbs unless nominalised
    @C.NeedNoun@       !!≈ | @CODE@ | (Dis)allow compounds with verbs unless nominalised
!!
!! For languages that allow compounding, the following flag diacritics are needed
!! to control position-based compounding restrictions for nominals. Their use is
!! handled automatically if combined with +CmpN/xxx tags. If not used, they will
!! do no harm.
    @P.CmpFrst.FALSE@ !!≈ | @CODE@ | Require that words tagged as such only appear first
    @D.CmpPref.TRUE@  !!≈ | @CODE@ | Block such words from entering ENDLEX
    @P.CmpPref.FALSE@ !!≈ | @CODE@ | Block these words from making further compounds
    @D.CmpLast.TRUE@  !!≈ | @CODE@ | Block such words from entering R
    @D.CmpNone.TRUE@  !!≈ | @CODE@ | Combines with the next tag to prohibit compounding
    @U.CmpNone.FALSE@ !!≈ | @CODE@ | Combines with the prev tag to prohibit compounding
    @P.CmpOnly.TRUE@  !!≈ | @CODE@ | Sets a flag to indicate that the word has passed R
    @D.CmpOnly.FALSE@ !!≈ | @CODE@ | Disallow words coming directly from root.
!!
!! Use the following flag diacritics to control downcasing of derived proper
!! nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
!! these flags. There exists a ready-made regex that will do the actual down-casing
!! given the proper use of these flags.
    @U.Cap.Obl@        !!≈ | @CODE@ | Allowing downcasing of derived names: deatnulasj.
    @U.Cap.Opt@        !!≈ | @CODE@ | Allowing downcasing of derived names: deatnulasj.
!!
!! Flags for allowing u-based dual endings
    @U.Dual.U@
    @R.Dual.U@

LEXICON Root
!! The word forms in Quenya language start from the lexeme roots of basic
!! word classes, or optionally from prefixes:
0   Nouns       ;
0   Verbs       ;
0   Adjectives  ;
0   Pronouns    ;
0   Numerals    ;
0   Prefixes    ;
    Punctuation ;
    Symbols     ;

! vim: set ft=xfst-lexc:
