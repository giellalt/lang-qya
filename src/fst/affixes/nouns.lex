!! Noun inflection
!  ---------------
!! The Quenya language nouns inflect in cases.


! Standard declensions (nouns that end with -a, -i, -ie, -o, -u)

LEXICON NounSuffix
    +N:%> Cases ;

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
    +Poss:{w}a # ;  ! TODO: connect to adjectival endings?

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
    +Poss:t{w}a # ;  ! TODO: connect to adjectival endings?
    @R.Dual.U@ CasesDual-U ;  ! If allowed, try using the dual endings in -u

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
    +Poss:i{w}a # ;  ! TODO: connect to adjectival endings?

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
    +Poss:lí{w}a # ;  ! TODO: connect to adjectival endings?


! I-plural declensions (nouns that end with -e or a consonant)

LEXICON NounSuffix-I
    +N:%> Cases-I ;

LEXICON Cases-I
    +Sing:      CasesSing-I ;
    +Dual:      CasesDual-I ;
    +Plur:      CasesPlur-I ;
    +Plur+Par:  CasesPlurPar-I ;

LEXICON CasesSing-I
    +Nom: # ;
    +Acc: # ;
    +Gen:{-V}o  # ;
    +Ins:nen # ;
    +All:nna # ;
    +Dat:n # ;
    +Loc:sse # ;
    +Loc+Short:s # ;
    +Abl:llo # ;
    +Poss:{w}a # ;  ! TODO: connect to adjectival endings?

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
    +Poss:t{w}a # ;  ! TODO: connect to adjectival endings?
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
    +Poss:{-V}i{w}a # ;  ! TODO: connect to adjectival endings?

LEXICON CasesPlurPar-I
    +Nom:{L}i # ;
    +Acc:{L}i # ;
    +Gen:{L}ion  # ;
    +Ins:{L}ínen # ;
    +All:{L}inna # ;  ! r is optional for allative
    +All:{L}innar # ;
    +Dat:{L}in # ;
    +Loc:{L}isse # ;  ! n is optional for locative
    +Loc:{L}issen # ;
    +Loc+Short:{L}is # ;
    +Abl:{L}illo # ;  ! n is optional for ablative
    +Abl:{L}illon # ;
    +Poss:{L}í{w}a # ;  ! TODO: connect to adjectival endings?


! dual endings that use -u (not -t)

LEXICON CasesDual-U
    +Nom:{-V}u # ;
    +Acc:{-V}u # ;
    +Gen:{-V}uo  # ;
    +Ins:{-V}unen # ;
    +All:{-V}unna # ;
    +Dat:{-V}un # ;
    +Dat:{-V}uen # ;  ! poorly attested
    +Loc:{-V}usse # ;
    +Loc+Short:{-V}us # ;
    +Abl:{-V}ullo # ;
    +Poss:{-V}u{w}a # ;  ! TODO: connect to adjectival endings?

! vim: set ft=xfst-lexc:
