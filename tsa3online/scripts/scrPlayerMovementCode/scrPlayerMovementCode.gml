///@desc movement
//left right
if (durationHeld[RIGHT] > 0) {
	var moveMod = instance_create(0, 0, objMoveMod);
	moveMod.dx = moveSpd;
	ds_list_add(moveModList, moveMod);
}

if (durationHeld[LEFT] > 0) {
	var moveMod = instance_create(0, 0, objMoveMod);
	moveMod.dx = -moveSpd;
	ds_list_add(moveModList, moveMod);
}

//gravity
grounded = !place_meeting(preciseX, preciseY, objBlockAndPlatform) && place_meeting(preciseX, preciseY + 1, objBlockAndPlatform);
ceilinged = !place_meeting(preciseX, preciseY, objBlock) && place_meeting(preciseX, preciseY - 1, objBlock);

if (grounded) {
	if (instance_exists(gravMoveMod)) {
		gravMoveMod.duration = 0;
	}
	
	currAirJumps = 0;
} else {
	if (!instance_exists(gravMoveMod)) {
		gravMoveMod = instance_create(0, 0, objMoveMod);
		gravMoveMod.ddy = -grav;
		gravMoveMod.forever = true;
		ds_list_add(moveModList, gravMoveMod);
	}
}

if (ceilinged) {
	if (instance_exists(gravMoveMod) && dy > 0) {
		gravMoveMod.dy = -dy * bounciness;
	}
}

//jumping
if (grounded) {
	if (instance_exists(jumpMoveMod)) {
		jumpMoveMod.duration = 0;
	} else if (durationHeld[UP] > 0 && !heldBefore[UP]/*(!heldBefore[UP] || heldBefore[UP] && durationHeld[UP] <= jumpGrace)*/) {
		jumpMoveMod = instance_create(0, 0, objMoveMod);
		jumpMoveMod.dy = jumpPower;
		jumpMoveMod.forever = true;
		ds_list_add(moveModList, jumpMoveMod);
		preciseY += 1;
	}
}

if (!grounded && currAirJumps < airJumps) {
	if (durationHeld[UP] > 0 && !heldBefore[UP]/*(!heldBefore[UP] || heldBefore[UP] && durationHeld[UP] <= jumpGrace)*/) {
		if (instance_exists(jumpMoveMod)) {
			jumpMoveMod.dy = jumpPower;
		} else {
			jumpMoveMod = instance_create(0, 0, objMoveMod);
			jumpMoveMod.dy = jumpPower;
			jumpMoveMod.forever = true;
			ds_list_add(moveModList, jumpMoveMod);
		}
		
		if (instance_exists(gravMoveMod)) {
			gravMoveMod.dy = 0;
		}
		
		currAirJumps++;
	}
}

if (ceilinged) {
	if (instance_exists(jumpMoveMod)) {
		jumpMoveMod.duration = 0;
	}
}

//slow from abilities
for (var i = 0; i < numAbilities; i++) {
	if (aState == abilityKey[i]) {
		var slowMod = instance_create(0, 0, objSlowMod);
		
		if (aPhase == "u") {
			slowMod.slowTo = slowWindUp[i];
		} else if (aPhase == "d") {
			slowMod.slowTo = slowDuring[i];
		} else if (aPhase == "w") {
			slowMod.slowTo = slowWindDown[i];
		}
		
		ds_list_add(slowModList, slowMod);
	}
}

//main movement logic
dx = 0;
dy = 0;

//moveMod
for (var i = 0; i < ds_list_size(moveModList); i++) {
	var moveMod = ds_list_find_value(moveModList, i);
	
	if (moveMod.duration <= 0) {
		ds_list_delete(moveModList, i);
		i--;
		
		with (moveMod) {
			instance_destroy();
		}
	} else {
		dx += moveMod.dx;
		dy += moveMod.dy;
	}
}

//slowMod
for (var i = 0; i < ds_list_size(slowModList); i++) {
	var slowMod = ds_list_find_value(slowModList, i);
	
	if (slowMod.slowDuration <= 0) {
		ds_list_delete(slowModList, i);
		i--;
		
		with (slowMod) {
			instance_destroy();
		}
	} else {
		dx *= slowMod.slowTo;
		dy *= slowMod.slowTo;
	}
}

//envMoveMod
for (var i = 0; i < ds_list_size(envMoveModList); i++) {
	var moveMod = ds_list_find_value(envMoveModList, i);
	
	if (moveMod.duration <= 0) {
		ds_list_delete(envMoveModList, i);
		i--;
		
		with (moveMod) {
			instance_destroy();
		}
	} else {
		dx += moveMod.dx;
		dy += moveMod.dy;
	}
}

scrMove();
scrGetOutOfBlock();

///needed for sprite and image
if (durationHeld[LEFT] || durationHeld[RIGHT]) {
	moveState = "move";
}