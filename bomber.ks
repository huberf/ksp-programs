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

LOCK STEERING TO HEADING(90,10).

UNTIL SHIP:MAXTHRUST > 0 {
      WAIT 0.5. // pause half a second between stage attempts.
          PRINT "Stage activated.".
              STAGE. // same as hitting the spacebar.
}

WHEN SHIP:ALTITUDE >= 80 THEN {
  LOCK STEERING TO HEADING(90,25).
  SET GEAR TO FALSE.
}

WAIT UNTIL SHIP:ALTITUDE > 100.

PRINT "ROLLING".

R(0, 0, 85).

WAIT 20.

PRINT "TURNING RIGHT".

R(45, 0, 45).

WAIT 50.

PRINT "LEVELING OUT.".

R(0, 0, 0).

STAGE.

WAIT UNTIL SHIP:ALTITUDE > 3000.
