# PygmyRobot-Darry
Right angle path with four sensors, on a painted wall in a street
Code Forth

: TOPLF ( -- )
BEGIN 
INITLF1 INITLF2 + 0=  IF MOTORAV THEN ( ligne droite )
INITLF1 1 =  IF TURND  MOTORAV THEN   ( correction à droite )
INITLF2 1 =  IF TURNG  MOTORAV THEN (correction à gauche )
INITLF3 0=  IF TOP> TURND90 MOTORAV THEN ( tourne 90 degrés à droite )
INITLF4 0=  IF TOP> TURNG90 MOTORAV THEN ( tourne 90 degrés à gauche )
INITLF1 INITLF2 + 2 =  IF MOTORSTOP  THEN ( s'arrête )
AGAIN 
;
