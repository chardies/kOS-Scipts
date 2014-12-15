// Obtain Modules with Event & Action referenced
// Change line 5 IRpistonscaleable to whatever part info needed on
CLEARSCREEN.

SET stuffList TO SHIP:PARTSNAMED("IRpistonscaleable").

FOR stuff IN stuffList {
	PRINT stuffList.
	SET module TO stuff:ALLMODULES.
	SET IRactions TO stuff:GETMODULE("MuMechToggle"):HASACTIONS.
	SET IRevents TO stuff:GETMODULE("MuMechToggle"):HASEVENTS.
	SET KOSactions TO stuff:GETMODULE("KOSNameTag"):HASACTIONS.
	SET KOSevents TO stuff:GETMODULE("KOSNameTag"):HASEVENTS.
	
	PRINT module.
	PRINT IRactions.
	PRINT IRevents.
	PRINT IRfield.
	PRINT KOSactions.
	PRINT KOSevents.
	PRINT KOSfield.
	stuff:GETMODULE("MuMechToggle"):DOACTION("", true).

}.
PRINT " ".