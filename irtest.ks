PRINT "Finding IR Piston".
PRINT " ".

SET clampList TO SHIP:PARTSNAMED("IRPistonScaleable").
FOR clamp IN clampList {
	PRINT clampList.
	clamp:GETMODULE("MuMechToggle"):DOACTION(" ", TRUE).
	PRINT "Release the Hounds!!! Sorry Clamps!".
}.
PRINT " ".