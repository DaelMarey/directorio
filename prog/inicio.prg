*_screen.Visible = .F.
set date to dmy
set century TO 19 ROLLOVER 20
set exclusive off
set deleted on
set bell off
set escape off
set confirm on
set sysmenu off
SET SAFETY OFF
SET RESOURCE OFF
clear screen
CLOSE TABLES 

gdirectorio=SYS(5) + SYS(2003)
*gdirectorio= S:\directorio

DO FORM gdirectorio + "\formas\login.scx"

READ events

CLEAR EVENTS
