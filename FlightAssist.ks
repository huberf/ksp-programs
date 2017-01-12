// This simulates the autopilot in airliners and takes care of basic flight
// functions primarily for aircraft.

CLEARSCREEN.

// Autodeploy gear
WHEN SHIP:ALTITUDE >= 200 THEN {
  SET GEAR TO FALSE.
}

WHEN SHIP:ALTITUDE < 200 THEN {
  SET GEAR TO FALSE.
}
