// Intentional error to show actions available
// Comment line 7 to get print out with UID

SET clampList TO SHIP:PARTSNAMED("IRPistonScaleable").
FOR clamp IN clampList {
	PRINT clampList.
	clamp:GETMODULE("MuMechToggle"):DOACTION(" ", TRUE).
	PRINT "Release the Hounds!!! Sorry Clamps!".
}.
PRINT " ".
