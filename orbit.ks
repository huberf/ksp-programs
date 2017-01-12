//First, we'll clear the terminal screen to make it look nice
CLEARSCREEN.

LOCK THROTTLE TO 1.0.

//This is our countdown loop, which cycles from 10 to 0
PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "..." + countdown.
    WAIT 0.1.
}

LOCK STEERING TO UP.

SAS ON.

STAGE.

WAIT UNTIL SHIP:APOAPSIS > 80000.

LOCK THROTTLE TO 0.0.

WAIT UNTIL SHIP:ALTITUDE > 70000.

LOCK STEERING TO HEADING(90, 0).

LOCK THROTTLE TO 1.0.

WAIT UNTIL SHIP:PERIAPSIS > 79000.

PRINT "STATUS: ACHIEVED ORBIT".
