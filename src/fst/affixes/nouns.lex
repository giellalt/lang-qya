!! Noun inflection
!  ---------------
!! The Quenya language nouns inflect in cases.


! Standard declensions (nouns that end with -a, -i, -ie, -o, -u)

LEXICON NounSuffix
    +N: Cases ;

LEXICON Cases
    +Sing:      CasesSing ;
    +Dual:      CasesDual ;
    +Plur:      CasesPlur ;
    +Plur+Par:  CasesPlurPar ;

LEXICON CasesSing
    +Nom: # ;
    +Acc: # ;
    +Gen:{-V}o  # ;
    +Ins:nen # ;
    +All:nna # ;
    +Dat:n # ;
    +Loc:sse # ;
    +Loc+Short:s # ;
    +Abl:llo # ;
    +Poss:[w]a # ;  ! TODO: connect to adjectival endings?

LEXICON CasesDual
    +Nom:t # ;
    +Acc:t # ;
    +Gen:to  # ;
    +Ins:nten # ;
    +All:nta # ;
    +Dat:nt # ;
    +Loc:tse # ;
    ! +Loc+Short:ts # ;  TODO: ???
    +Abl:lto # ;
    +Poss:t[w]a # ;  ! TODO: connect to adjectival endings?
    CasesDual-U ;  ! If allowed, try using the dual endings in -u

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
    +Poss:i[w]a # ;  ! TODO: connect to adjectival endings?

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
    +Poss:lí[w]a # ;  ! TODO: connect to adjectival endings?


! I-plural declensions (nouns that end with -e or a consonant)
!!!! THIS SECTION IS NOT COMPLETE !!!!

LEXICON NounSuffix-I
    +N: Cases-I ;

LEXICON Cases-I
    +Sing:      CasesSing-I ;
    +Dual:      CasesDual-I ;
    +Plur:      CasesPlur-I ;
    +Plur+Par:  CasesPlurPar-I ;

LEXICON CasesSing-I
    +Nom: # ;
    +Acc: # ;
    +Gen:{-V}o  # ;
    +Ins:{+e}nen # ;
    +All:{+e}nna # ;
    +Dat:{+e}n # ;
    +Loc:{+e}sse # ;
    +Loc+Short:{+e}s # ;
    +Abl:{+e}llo # ;
    +Poss:[w]a # ;  ! TODO: connect to adjectival endings?

LEXICON CasesDual-I
    +Nom:t # ;
    +Acc:t # ;
    +Gen:to  # ;
    +Ins:nten # ;
    +All:nta # ;
    +Dat:nt # ;
    +Loc:tse # ;
    ! +Loc+Short:ts # ;  TODO: ???
    +Abl:lto # ;
    +Poss:t[w]a # ;  ! TODO: connect to adjectival endings?
    @R.Dual.U@ CasesDual-U ;  ! If allowed, try using the dual endings in -u

LEXICON CasesPlur-I
    +Nom:{-V}i # ;
    +Acc:{-V}i # ;
    +Gen:{-V}ion  # ;
    +Ins:{-V}inen # ;
    +All:{-V}innar # ;
    +Dat:{-V}in # ;
    +Loc:{-V}issen # ;
    +Loc+Short:{-V}is # ;
    +Abl:{-V}illon # ;
    +Poss:{-V}i[w]a # ;  ! TODO: connect to adjectival endings?

LEXICON CasesPlurPar-I
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
    +Poss:lí[w]a # ;  ! TODO: connect to adjectival endings?

LEXICON CasesDual-U
    +Nom:{-V}u # ;
    +Acc:{-V}u # ;
    +Gen:{-V}uo  # ;
    +Ins:{-V}unen # ;
    +All:{-V}unna # ;
    +Dat:{-V}un # ;
    +Dat:{-V}uen # ;  ! poorly attested
    +Loc:{-V}usse # ;
    +Loc+Short:{-V}us # ;  TODO: ???
    +Abl:{-V}ullo # ;
    +Poss:{-V}u[w]a # ;  ! TODO: connect to adjectival endings?

! vim: set ft=xfst-lexc:

