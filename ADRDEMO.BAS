DIM desc2$(200)
adr:
xxx = 13

drive$ = "E:\PORT\ADR\"
desc2$(1) = "T2.adr"
desc2$(2) = "pbase30.adr"
desc2$(3) = "nutips.adr"
desc2$(4) = "ez-ref.adr"
desc2$(5) = "escape.adr"
desc2$(6) = "dos.adr"
desc2$(7) = "dip-s.adr"
desc2$(8) = "dip-n.adr"
desc2$(9) = "dip-h.adr"
desc2$(10) = "8088.adr"
desc2$(11) = "README.ADR"
desc2$(12) = "RECIPE3.ADR"
desc2$(13) = "RECIPE2.ADR"

nextline:
CLS
PRINT USING "Files on Sub Menu ## "; submenu

FOR i = 1 TO xxx STEP 2

    IF i < 10 THEN submenu = 1: nextpage = 1: lastpage = 10
    IF i > 10 THEN submenu = 2: nextpage = 11: lastpage = 20
    CLS
    PRINT USING "## \         \ ## \         \"; nextpage; desc2$(nextpage); nextpage + 1; desc2$(nextpage + 1)
    PRINT USING "## \         \ ## \         \"; nextpage + 2; desc2$(nextpage + 2); nextpage + 3; desc2$(nextpage + 3)
    PRINT USING "## \         \ ## \         \"; nextpage + 4; desc2$(nextpage + 4); nextpage + 5; desc2$(nextpage + 5)
    PRINT USING "## \         \ ## \         \"; nextpage + 6; desc2$(nextpage + 6); nextpage + 7; desc2$(nextpage + 7)
    PRINT USING "## \         \ ## \         \"; nextpage + 8; desc2$(nextpage + 8); nextpage + 9; desc2$(nextpage + 9)
    PRINT "Enter Program Choice"
    INPUT "[N for next screen] ", menuchoice$
    menuchoice = VAL(menuchoice$)
    IF menuchoice > lastpage THEN GOTO nextline
    IF menuchoice$ = "X" THEN
        GOTO finish
    ELSEIF menuchoice$ = "N" OR menuchoice$ = "n" THEN
        GOTO endsloop
    ELSEIF menuchoice$ = "P" OR menuchoice$ = "p" THEN
        GOTO prevloop
    ELSEIF menuchoice$ = "X" OR menuchoice$ = "x" THEN
        GOTO finish
    END IF
    IF menuchoice$ = "N" OR menuchoice$ = "n" OR menuchoice$ = "P" OR menuchoice$ = "P" THEN GOTO fini
    fini:
    IF menuchoice > 0 OR menuchoice < 21 THEN
        GOTO title3
    ELSE
        GOTO nextline
    END IF
    fini2:
NEXT i
GOTO nextline
title3:
CLS
menuchoice = VAL(menuchoice$)

patha$ = "app/a "+" L "+drive$ +desc2$(menuchoice)
CLS
PRINT
PRINT "Running file "; patha$
rem execute patha$
PRINT "Press any key to continue........."
DO WHILE INKEY$ = ""
LOOP
GOTO nextline
prevloop:
nextpage = nextpage - 10
i = i - 10
IF i < 1 THEN GOTO errorpage
GOTO fini2
endsloop:
nextpage = nextpage + 10
i = i + 10
IF i > xxx + 10 THEN GOTO errorpage
GOTO fini2
errorpage:
PRINT
PRINT "You have either gone before page 1"
PRINT "or gone past the last page"
PRINT "Please try again."
PRINT
DO WHILE INKEY$ = ""
LOOP
GOTO nextline
finish:
EXECUTE "pfshell.com"
END





























