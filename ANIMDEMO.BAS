DIM desc2$(20)
DIM desc3$(20)
DIM desc4$(20)
animat:
submenu = 2
xxx = 8

drive$ = "E:\PORT\ANIMAT\"
desc2$(1) = "domino.pgx"
desc2$(2) = "eyes.pgx"
desc2$(3) = "fbi.com"
desc2$(4) = "hp.com"
desc2$(5) = "ibm.com"
desc2$(6) = "live.com"
desc2$(7) = "t2.pgx"
desc2$(8) = "tree.pgx"
desc3$(1) = "dominos\"
desc3$(2) = "eyes\"
desc3$(3) = "fbi\"
desc3$(4) = "hp\"
desc3$(5) = "ibm\"
desc3$(6) = "live\"
desc3$(7) = "t2\"
desc3$(8) = "tree\"
desc4$(1) = "YES"
desc4$(2) = "YES"
desc4$(3) = "NO"
desc4$(4) = "NO"
desc4$(5) = "NO"
desc4$(6) = "NO"
desc4$(7) = "YES"
desc4$(8) = "YES"
nextline:
CLS
PRINT USING "Files on Sub Menu ## "; submenu

FOR i = 1 TO xxx STEP 2

    IF i < 10 THEN submenu = 1: nextpage = 1: lastpage = 8
    PRINT USING "## \         \ ## \         \"; nextpage; desc2$(nextpage); nextpage + 1; desc2$(nextpage + 1)
    PRINT USING "## \         \ ## \         \"; nextpage + 2; desc2$(nextpage + 2); nextpage + 3; desc2$(nextpage + 3)
    PRINT USING "## \         \ ## \         \"; nextpage + 4; desc2$(nextpage + 4); nextpage + 5; desc2$(nextpage + 5)
    PRINT USING "## \         \ ## \         \"; nextpage + 6; desc2$(nextpage + 6); nextpage + 7; desc2$(nextpage + 7)
    INPUT "Enter Program Choice > ", menuchoice$
    menuchoice = VAL(menuchoice$)
    IF menuchoice > lastpage THEN GOTO nextline
    IF menuchoice$ = "X" OR menuchoice$ = "x" THEN
        GOTO finish
    ELSE
        GOTO title3
    END IF
NEXT i
GOTO nextline
title3:
CLS
menuchoice = VAL(menuchoice$)
IF desc4$(menuchoice) = "NO" THEN
    patha$ = drive$ + desc3$ + desc2$(menuchoice)
ELSEIF desc4$(menuchoice) = "YES" THEN
    patha$ = drive$ + desc3$(menuchoice) + "pgflix" +"("+ desc2$(menuchoice)+")"
END IF
CLS
PRINT
PRINT "Running file "; patha$
EXECUTE patha$
PRINT "Press any key to continue........."
DO WHILE INKEY$ = ""
LOOP
GOTO nextline
finish:
EXECUTE "pfshell"
END





























