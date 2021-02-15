!! Noun inflection
!  ---------------
!! The Quenya language nouns inflect in cases.

LEXICON NounSuffix
    +N: NumberPre ;

LEXICON Cases
    +Sing:      CasesSing ;
    +Dual:      CasesDual ;
    +Plur:      CasesPlur ;
    +Plur+Par:  CasesPlurPar ;

LEXICON CasesSing
    +Nom: # ;
    +Acc: # ;
    +Gen:o  # ;
    +Ins:nen # ;
    +All:nna # ;
    +Dat:n # ;
    +Loc:sse # ;
    +Loc+Short:s # ;
    +Abl:llo # ;
    +Poss:[w]a # ;

LEXICON CasesDual
    +Nom:t # ;
    +Acc:t # ;
    +Gen:to  # ;
    +Ins:nten # ;
    +All:nta # ;
    +Dat:nt # ;
    +Loc:tse # ;
    ! +Loc+Short:ts # ;  TODO ???
    +Abl:lto # ;
    +Poss:t[w]a # ;  TODO ???

LEXICON CasesPlur
    +Nom:r # ;
    +Acc:r # ;
    +Gen:ron  # ;
    +Ins:inen # ;
    +All:nnar # ;
    +Dat:in # ;
    +Loc:ssen # ;
    +Loc+Short:is # ;
    +Abl:llon # ;
    ! +Poss:[w]ar # ;  TODO ???

LEXICON CasesPlurPar
    +Nom:li # ;
    +Acc:li # ;
    +Gen:lion  # ;
    +Ins:línen # ;
    +All:linna # ;  ! r is optional for allative
    +All:linnar # ;
    +Dat:lin # ;
    +Loc:lisse # ;  ! n is optional for locative
    +Loc:lissen # ;
    +Loc+Short:lis # ;
    +Abl:lillo # ;  ! n is optional for ablative
    +Abl:lillon # ;
    +Poss:lí[w]a # ;

! vim: set ft=xfst-lexc:

