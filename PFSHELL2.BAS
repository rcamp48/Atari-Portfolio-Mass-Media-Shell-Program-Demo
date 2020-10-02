DIM desc1$(25)
CLS
PRINT "Atari Portfolio Shell Version 0.11"
PRINT "Written for the new digital world"
PRINT "That is coming up on the Portfolio"
PRINT "If any screen seems to pause, press"
PRINT "any key to continue. On menus press"
PRINT "N for Netx Page, P for Previous Page"
PRINT "and X to exit the program."
DO WHILE INKEY$ = ""
LOOP
CLS
PRINT "This is a program that will break"
PRINT "down all of the current AP library"
PRINT "and make it easily available with"
PRINT "no hassle to run programs on a ZIP"
PRINT "Drive , CF Flash Card, SDCARD or "
PRINT "any type of mass storage."
DO WHILE INKEY$ = ""
LOOP
CLS
PRINT "Demo Version written for the Atari"
PRINT "Portfolio and mass storage devices"
PRINT "Released on September 30 2020"
PRINT "Version 0.11a Beta Demo"
DO WHILE INKEY$ = ""
LOOP


start:
CLS
pagenumber = 0
PRINT "Russ's Portfolio Menu V 0.11a"
PRINT "Beta Demo Version thats simple."
PRINT "Written by Russ Campbell in Kitchener"
PRINT "There are two pages of Catagories of"
PRINT "Atari Portfolio Programs available."
PRINT "Enter Page Number [X] to finish.";
INPUT "> ", pagenumber$
pagenumber = VAL(pagenumber$)

IF pagenumer$ = "X" OR pagenumber$ = "x" THEN
    GOTO finish
END IF
IF pagenumber = 0 OR pagenumber > 20 THEN
    GOTO start
END IF
IF pagenumber = 1 THEN
    pagestart = 1
    pageend = 10
    GOTO desc
ELSEIF pagenumber = 2 THEN
    pagestart = 11
    pageend = 20
    GOTO desc
END IF
GOTO start
desc:
desc1$(1) = "ADR Files"
desc1$(2) = "Animate Files"
desc1$(3) = "App Files"
desc1$(4) = "Archive Files"
desc1$(5) = "Basic Source"
desc1$(6) = "Book Files"
desc1$(7) = "Comm Files"
desc1$(8) = "Driver Files"
desc1$(9) = "Game Files"
desc1$(10) = "HOO Files"
desc1$(11) = "Language"
desc1$(12) = "PF Demos"
desc1$(13) = "PF News"
desc1$(14) = "PCC Images"
desc1$(15) = "PGF Images"
desc1$(16) = "Program"
desc1$(17) = "Sound"
desc1$(18) = "Text"
desc1$(19) = "Utilities"
desc1$(20) = "Worksheet"
GOSUB title


title:
CLS
PRINT USING "Portfolio Menu Pagenumber # "; pagenumber

FOR i = pagestart TO pageend STEP 2
    PRINT USING "[##] \            \ [##] \           \"; i; desc1$(i); i + 1; desc1$(i + 1)
NEXT i
INPUT "Enter Your Choice:", menuchoice$
menuchoice = VAL(menuchoice$)
flag$ = "P"
IF menuchoice = 1 THEN
    CHAIN "adr"
ELSEIF menuchoice = 2 THEN
    CHAIN "animat"
ELSEIF menuchoice = 3 THEN
    CHAIN "applic"
ELSE
    GOTO start
END IF
IF menuchoice$ = "X" THEN
    GOTO finish
ELSEIF menuchoice$ = "N" OR menuchoice$ = "n" THEN
    GOSUB endsloop
    GOTO title
ELSEIF menuchoice$ = "P" OR menuchoice$ = "p" THEN
    GOSUB prevloop
    GOTO title
END IF

RETURN
finish:
END
prevloop:
IF flag$ = "S" THEN
    nextpage = nextpage - 10
    IF nextpage < 1 THEN GOTO errorpage
END IF
errorpage:
PRINT
PRINT "You have either gone before page 1"
PRINT "or gone past the last page"
PRINT "Please try again."
PRINT
DO WHILE INKEY$ = ""
LOOP
GOTO start

RETURN
endsloop:
nextpage = nextpage + 10
i = i + 10
IF i > xxx + 10 THEN GOTO errorpage2
errorpage2:
PRINT
PRINT "You have either gone before page 1"
PRINT "or gone past the last page"
PRINT "Please try again."
PRINT
DO WHILE INKEY$ = ""
LOOP
GOTO start

RETURN





























