//hellolaunch

//First, we'll clear the terminal screen to make it look nice
CLEARSCREEN.

LOCK THROTTLE TO 1.0.

//This is our countdown loop, which cycles from 10 to 0
PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "..." + countdown.
    WAIT 0.1.
}

WHEN SHIP:VELOCITY:SURFACE:MAG >= 80 THEN {
  PRINT "SLOWING DOWN".
  LOCK THROTTLE TO 0.5.
}

LOCK STEERING TO HEADING(90,25).

UNTIL SHIP:MAXTHRUST > 0 {
      WAIT 0.5. // pause half a second between stage attempts.
          PRINT "Stage activated.".
              STAGE. // same as hitting the spacebar.
}

WHEN SHIP:ALTITUDE >= 200 THEN {
  SET GEAR TO FALSE.
}

WAIT UNTIL SHIP:ALTITUDE > 2000.

PRINT "LEVELING OUT".

LOCK STEERING TO HEADING(90,2).

WAIT UNTIL SHIP:ALTITUDE > 3000.
