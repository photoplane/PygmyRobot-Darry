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


![RobotDarry](https://github.com/user-attachments/assets/067e371e-7fee-4b6d-89d8-6e2c59ceb620)


https://github.com/user-attachments/assets/f5a8718e-6eb8-45b6-b338-4ca5d237657d

![Capteur central avec LTR4206](https://github.com/user-attachments/assets/d9f466b8-8d01-4bae-a982-cf1716307684)

![Capteurs latéraux](https://github.com/user-attachments/assets/b76b6060-a1b2-485c-9288-07101d506ab3)
