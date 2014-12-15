// Obtain Modules with Event & Action referenced

CLEARSCREEN.

SET stuffList TO SHIP:PARTSNAMED("IRpistonscaleable").

FOR stuff IN stuffList {
	PRINT stuffList.
	SET module TO stuff:ALLMODULES.
	SET IRactions TO stuff:GETMODULE("MuMechToggle"):ALLACTIONS.
	SET IRevents TO stuff:GETMODULE("MuMechToggle"):ALLEVENTS.
	SET KOSactions TO stuff:GETMODULE("KOSNameTag"):ALLACTIONS.
	SET KOSevents TO stuff:GETMODULE("KOSNameTag"):ALLEVENTS.
	PRINT module.
	PRINT IRactions.
	PRINT IRevents.
	PRINT KOSactions.
	PRINT KOSevents.

}.
PRINT " ".