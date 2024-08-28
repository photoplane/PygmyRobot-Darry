( RobotDarry )
: Darry Perier Street Art painter. Many thanks! ;

: robot CR ."           _  " CR ."        __|_|__   " CR ."       |  o o  |  " CR
."      [|   !   |]  " CR    ."     __|  <=>  |__  " CR  ."    |  ^^^^^^^^   | " CR  ."    |  | robot |  |  " CR
."    |  |_______|  |    " CR ."    |__|       |__|    " CR
; 
 
robot CR
HI  CR

( my own return stack - ma propre pile de retour R )
VARIABLE R   
: >R  R ! ;
: R> R @ ;

( timer env. 1 sec )
: MS ( n -- n sec ) 34333 * FOR I DROP NEXT ;
: X 100 FOR DROP NEXT ;


CODE PAGE
    print('\033c')
END-CODE

( modules )
" MotorAV.fth" LOAD   ( moteur avance-engine fortward )
" initlf1.fth" LOAD   ( capteur central gauche-left central sensor)
" initlf2.fth" LOAD   ( capteur central droite-right central sensor )
" initlf3.fth" LOAD   ( capteur droite-right sensor )
" initlf4.fth" LOAD   ( capteur gauche-left sensor )
" MotorStop.fth" LOAD ( arret moteur-engine stop )
" TurnD.fth"  LOAD    ( tourne à droite-turn right )
" TurnG.fth" LOAD     ( tourne à gauche-turn left )
" TurnG90.fth" LOAD   ( tourne 90 degrés à gauche-turn 90 degrees left )
" TurnD90.fth" LOAD   ( tourne 90 degrés à droite-turn 90 degrees right )


( pygmy.sh RobotDarry.fth )
( DARRY PERIER TOPLF )

: TOP> 18  FOR MOTORAV NEXT ; (avance avant de tourner-move forward before turning )
: TOPLF BEGIN INITLF1 INITLF2 + 0=  IF MOTORAV THEN INITLF1 1 =  IF TURND  MOTORAV THEN INITLF2  1 =  IF TURNG  MOTORAV THEN INITLF3  0=  IF TOP> TURND90 MOTORAV THEN INITLF4   0=  IF TOP> TURNG90 MOTORAV THEN INITLF1 INITLF2 + 2 =  IF MOTORSTOP  THEN AGAIN ;
( controle )
: t INITLF1 INITLF2 INITLF3 INITLF4 . . . . ;
: T TOPLF ;
WORDS CR
