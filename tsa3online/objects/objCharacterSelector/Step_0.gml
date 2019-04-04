/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 74C028A6
/// @DnDArgument : "code" "///@desc get input$(13_10)scrPlayerGetInput();"
///@desc get input
scrPlayerGetInput();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 025603D8
/// @DnDArgument : "code" "///@desc selection$(13_10)if (!lockedIn[thisNumber] && thisInControl[thisNumber]) {$(13_10)	if (durationHeld[0] > 0 && !heldBefore[0]) {$(13_10)		currRow--;$(13_10)	}$(13_10)	$(13_10)	if (durationHeld[1] > 0 && !heldBefore[1]) {$(13_10)		currCol--;$(13_10)	}$(13_10)	$(13_10)	if (durationHeld[2] > 0 && !heldBefore[2]) {$(13_10)		currRow++;$(13_10)	}$(13_10)	$(13_10)	if (durationHeld[3] > 0 && !heldBefore[3]) {$(13_10)		currCol++;$(13_10)	}$(13_10)$(13_10)	if (currRow < 0) {$(13_10)		currRow = numRows - 1;$(13_10)	} else if (currRow >= numRows) {$(13_10)		currRow = 0;$(13_10)	}$(13_10)$(13_10)	if (currCol < 0) {$(13_10)		currCol = array_length_2d(selectArray, currRow) - 1;$(13_10)	} else if (currCol >= array_length_2d(selectArray, currRow)) {$(13_10)		currCol = 0;$(13_10)	}$(13_10)$(13_10)	selectedHero[thisNumber] = selectArray[currRow, currCol];$(13_10)	x = selectBoxes[currRow, currCol].x;$(13_10)	y = selectBoxes[currRow, currCol].y;$(13_10)	$(13_10)	for (var i = 4; i < 8; i++) {$(13_10)		if (durationHeld[i] > 0 && !heldBefore[i]) {$(13_10)			lockedIn[thisNumber] = true$(13_10)			image_index = 1$(13_10)			break$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)/////temp for auto$(13_10)if (auto) {$(13_10)	lockedIn[thisNumber] = true$(13_10)	var rando = irandom(3)$(13_10)	$(13_10)	if (rando == 0) {$(13_10)		selectedHero[thisNumber] = "mage"$(13_10)	} else if (rando == 1) {$(13_10)		selectedHero[thisNumber] = "caster"$(13_10)	} else if (rando == 2) {$(13_10)		selectedHero[thisNumber] = "rogue"$(13_10)	} else if (rando == 3) {$(13_10)		selectedHero[thisNumber] = "monk"$(13_10)	}$(13_10)}"
///@desc selection
if (!lockedIn[thisNumber] && thisInControl[thisNumber]) {
	if (durationHeld[0] > 0 && !heldBefore[0]) {
		currRow--;
	}
	
	if (durationHeld[1] > 0 && !heldBefore[1]) {
		currCol--;
	}
	
	if (durationHeld[2] > 0 && !heldBefore[2]) {
		currRow++;
	}
	
	if (durationHeld[3] > 0 && !heldBefore[3]) {
		currCol++;
	}

	if (currRow < 0) {
		currRow = numRows - 1;
	} else if (currRow >= numRows) {
		currRow = 0;
	}

	if (currCol < 0) {
		currCol = array_length_2d(selectArray, currRow) - 1;
	} else if (currCol >= array_length_2d(selectArray, currRow)) {
		currCol = 0;
	}

	selectedHero[thisNumber] = selectArray[currRow, currCol];
	x = selectBoxes[currRow, currCol].x;
	y = selectBoxes[currRow, currCol].y;
	
	for (var i = 4; i < 8; i++) {
		if (durationHeld[i] > 0 && !heldBefore[i]) {
			lockedIn[thisNumber] = true
			image_index = 1
			break
		}
	}
}

/////temp for auto
if (auto) {
	lockedIn[thisNumber] = true
	var rando = irandom(3)
	
	if (rando == 0) {
		selectedHero[thisNumber] = "mage"
	} else if (rando == 1) {
		selectedHero[thisNumber] = "caster"
	} else if (rando == 2) {
		selectedHero[thisNumber] = "rogue"
	} else if (rando == 3) {
		selectedHero[thisNumber] = "monk"
	}
}