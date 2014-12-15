// Finding any Infernal Robotics parts & print listed
// REFER http://ksp-kos.github.io/KOS_DOC/command/shipquery/index.html
CLEARSCREEN.
PRINT "Finding Infernal Robotics parts".
PRINT " ".

// Using dubbed,  Names from craft file with one of everything

SET minusState TO TRUE.
SET positiveState TO FALSE.

SET RailList TO SHIP:PARTSDUBBED("AdjustableRailScaleable").
SET WasherList TO SHIP:PARTSDUBBED("dockingwasher.stdScaleable").
SET WasherFreeList TO SHIP:PARTSDUBBED("dockingwasher.freeScaleable").
SET GantryList TO SHIP:PARTSDUBBED("GantryLargeScaleable").
SET GantryVariableList TO SHIP:PARTSDUBBED("GantryLargeScaleableVariant").
SET HingeClosedList TO SHIP:PARTSDUBBED("HingeClosedScaleable2").
SET HingeOpenList TO SHIP:PARTSDUBBED("IRHingeOpenScaleable").
SET HingeTallList TO SHIP:PARTSDUBBED("IRHingeTallScaleable").
SET HingeTallNDList TO SHIP:PARTSDUBBED("IRHingeTallNDScaleable").
SET PistonList TO SHIP:PARTSDUBBED("IRPistonScaleable").
SET RotatronList TO SHIP:PARTSDUBBED("IR.RotatronScaleable").
SET RotatronMK2List TO SHIP:PARTSDUBBED("IR.Rotatronmk2Scaleable").
SET RotatronVTOLList TO SHIP:PARTSDUBBED("IR.RotatronVTOLScaleable").
SET TPSList TO SHIP:PARTSDUBBED("TelescopeFullAScaleable").

SET Count TO 3.
SET Disp TO count-1.
PRINT "Cycling IR Equipment found on vessel " + Disp + " times.".
UNTIL count = 0 {

WHEN count > 0 THEN{
	TOGGLE minusState.
	TOGGLE positiveState.
	PRESERVE.
	}.

WHEN count = 0 THEN {
PRINT "Done".
	SET minusState TO FALSE.
	SET positiveState TO FALSE.
	SET count TO -1.
	}.

FOR Rail IN RailList {
	Rail:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	Rail:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR Washer IN WasherList {
	Washer:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	Washer:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR WasherFree IN WasherFreeList {
	WasherFree:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	WasherFree:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR Gantry IN GantryList {
	Gantry:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	Gantry:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR GantryVariable IN GantryVariableList {
	GantryVariable:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	GantryVariable:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR HingeClosed IN HingeClosedList {
	HingeClosed:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	HingeClosed:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR HingeOpen IN HingeOpenList {
	HingeOpen:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	HingeOpen:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR HingeTall IN HingeTallList {
	HingeTall:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	HingeTall:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR HingeTallND IN HingeTallNDList {
	HingeTallND:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	HingeTallND:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR Piston IN PistonList {
	Piston:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	Piston:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR Rotatron IN RotatronList {
	Rotatron:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	Rotatron:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR RotatronMK2 IN RotatronMK2List {
	RotatronMK2:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	RotatronMK2:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR RotatronVTOL IN RotatronVTOLList {
	RotatronVTOL:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	RotatronVTOL:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.
FOR TPS IN TPSList {
	TPS:GETMODULE("MuMechToggle"):DOACTION("Move -", minusState).
	TPS:GETMODULE("MuMechToggle"):DOACTION("Move +", positiveState).
	}.

PRINT " - " + minusState.
PRINT " + " + positiveState.

SET count TO count - 1.

WAIT 10.
PRINT "Time".
}.

wait count = -1.


	