/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5820CA38
/// @DnDArgument : "code" "///@desc stats$(13_10)if (depth < 0) {$(13_10)	ai = true$(13_10)	depth += 2$(13_10)} else {$(13_10)	ai = false$(13_10)}$(13_10)$(13_10)thisNumber = depth;$(13_10)depth = 0;$(13_10)maxHp = 85;$(13_10)$(13_10)if (thisNumber == 1) {$(13_10)	maxHp *= 1;$(13_10)}$(13_10)$(13_10)moveSpd = 140 / room_speed;$(13_10)jumpPower = 380 / room_speed;$(13_10)grav = 1000 / (room_speed * room_speed);$(13_10)airJumps = 0;$(13_10)currAirJumps = 0;$(13_10)bounciness = 0.2;$(13_10)$(13_10)//fan of knives$(13_10)windUp[0] = 0.1 * room_speed;$(13_10)duration[0] = 0.05 * room_speed;$(13_10)windDown[0] = 0.02 * room_speed;$(13_10)slowWindUp[0] = 0.3;$(13_10)slowDuring[0] = 1;$(13_10)slowWindDown[0] = 0.3;$(13_10)cooldown[0] = 0.9 * room_speed;$(13_10)$(13_10)fanBaseDmg = 0.8;$(13_10)fanDmgIncrease = 3 / room_speed;$(13_10)$(13_10)fanNumKnives = 10;$(13_10)fanAngle = 20;$(13_10)fanCurrAngle = -1;$(13_10)fanSpd = 800 / room_speed;$(13_10)playedFanSound = false$(13_10)$(13_10)//dash$(13_10)windUp[1] = 0.05 * room_speed;$(13_10)duration[1] = 0.1 * room_speed;$(13_10)windDown[1] = 0 * room_speed;$(13_10)slowWindUp[1] = 0;$(13_10)slowDuring[1] = 0;$(13_10)slowWindDown[1] = 0;$(13_10)cooldown[1] = 3.8 * room_speed;$(13_10)$(13_10)pierceDmg = 10;$(13_10)$(13_10)pierceKnifeSpd = 2400 / room_speed;$(13_10)pierceDashSpd = 1100 / room_speed;$(13_10)pierceDashDSpd = 0 / room_speed;$(13_10)$(13_10)//air jump$(13_10)windUp[2] = 0 * room_speed;$(13_10)duration[2] = 0.1 * room_speed;$(13_10)windDown[2] = 0 * room_speed;$(13_10)slowWindUp[2] = 1;$(13_10)slowDuring[2] = 1;$(13_10)slowWindDown[2] = 1;$(13_10)cooldown[2] = 3.1 * room_speed$(13_10)$(13_10)jumpKnifeAngle = 120;$(13_10)jumpNumKnives = 24;$(13_10)$(13_10)//rend$(13_10)windUp[3] = 0.15 * room_speed;$(13_10)duration[3] = 0.1 * room_speed;$(13_10)windDown[3] = 0.02 * room_speed;$(13_10)slowWindUp[3] = 0.5;$(13_10)slowDuring[3] = 0.5;$(13_10)slowWindDown[3] = 0.5;$(13_10)cooldown[3] = 4.6 * room_speed;$(13_10)$(13_10)bladeBaseDmg = 1.6;$(13_10)bladeDmgIncrease = 0.7 / room_speed;$(13_10)$(13_10)blinkSpd = 0 / room_speed; //900$(13_10)blinkDSpd = 50 / room_speed;$(13_10)bladeSpd = 900 / room_speed;$(13_10)blinkCurrAngle = -1;$(13_10)blinkBladeAngle = 35;$(13_10)blinkNumBlades = 12;$(13_10)rakeOutDuration = 0.2 * room_speed;$(13_10)$(13_10)if (room == rmRogueHelp) {$(13_10)	for (var i = 0; i < 4; i++) {$(13_10)		cooldown[i] = 1$(13_10)	}$(13_10)} else {$(13_10)	if (urf) {$(13_10)		for (var i = 0; i < 4; i++) {$(13_10)			cooldown[i] = 1$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if (ai && aiHalfCooldown) {$(13_10)	for (var i = 0; i < 4; i++) {$(13_10)		cooldown[i] *= 1 / 2$(13_10)	}$(13_10)}"
///@desc stats
if (depth < 0) {
	ai = true
	depth += 2
} else {
	ai = false
}

thisNumber = depth;
depth = 0;
maxHp = 85;

if (thisNumber == 1) {
	maxHp *= 1;
}

moveSpd = 140 / room_speed;
jumpPower = 380 / room_speed;
grav = 1000 / (room_speed * room_speed);
airJumps = 0;
currAirJumps = 0;
bounciness = 0.2;

//fan of knives
windUp[0] = 0.1 * room_speed;
duration[0] = 0.05 * room_speed;
windDown[0] = 0.02 * room_speed;
slowWindUp[0] = 0.3;
slowDuring[0] = 1;
slowWindDown[0] = 0.3;
cooldown[0] = 0.9 * room_speed;

fanBaseDmg = 0.8;
fanDmgIncrease = 3 / room_speed;

fanNumKnives = 10;
fanAngle = 20;
fanCurrAngle = -1;
fanSpd = 800 / room_speed;
playedFanSound = false

//dash
windUp[1] = 0.05 * room_speed;
duration[1] = 0.1 * room_speed;
windDown[1] = 0 * room_speed;
slowWindUp[1] = 0;
slowDuring[1] = 0;
slowWindDown[1] = 0;
cooldown[1] = 3.8 * room_speed;

pierceDmg = 10;

pierceKnifeSpd = 2400 / room_speed;
pierceDashSpd = 1100 / room_speed;
pierceDashDSpd = 0 / room_speed;

//air jump
windUp[2] = 0 * room_speed;
duration[2] = 0.1 * room_speed;
windDown[2] = 0 * room_speed;
slowWindUp[2] = 1;
slowDuring[2] = 1;
slowWindDown[2] = 1;
cooldown[2] = 3.1 * room_speed

jumpKnifeAngle = 120;
jumpNumKnives = 24;

//rend
windUp[3] = 0.15 * room_speed;
duration[3] = 0.1 * room_speed;
windDown[3] = 0.02 * room_speed;
slowWindUp[3] = 0.5;
slowDuring[3] = 0.5;
slowWindDown[3] = 0.5;
cooldown[3] = 4.6 * room_speed;

bladeBaseDmg = 1.6;
bladeDmgIncrease = 0.7 / room_speed;

blinkSpd = 0 / room_speed; //900
blinkDSpd = 50 / room_speed;
bladeSpd = 900 / room_speed;
blinkCurrAngle = -1;
blinkBladeAngle = 35;
blinkNumBlades = 12;
rakeOutDuration = 0.2 * room_speed;

if (room == rmRogueHelp) {
	for (var i = 0; i < 4; i++) {
		cooldown[i] = 1
	}
} else {
	if (urf) {
		for (var i = 0; i < 4; i++) {
			cooldown[i] = 1
		}
	}
}

if (ai && aiHalfCooldown) {
	for (var i = 0; i < 4; i++) {
		cooldown[i] *= 1 / 2
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 496EA0FF
/// @DnDArgument : "code" "///@desc necessary vars$(13_10)///general$(13_10)hp = maxHp;$(13_10)hpLost = 0;$(13_10)preciseX = x;$(13_10)preciseY = y;$(13_10)dx = 0;$(13_10)dy = 0;$(13_10)gravMoveMod = noone;$(13_10)jumpMoveMod = noone;$(13_10)moveModList = ds_list_create(); //affected by cc$(13_10)envMoveModList = ds_list_create(); //not affected by cc$(13_10)slowModList = ds_list_create();$(13_10)dmgModList = ds_list_create();$(13_10)grounded = false;$(13_10)ceilinged = false;$(13_10)timeSinceGrounded = 0$(13_10)abilityImageXScale = image_xscale;$(13_10)targetX = preciseX$(13_10)$(13_10)///ability$(13_10)aState = "n";$(13_10)aPhase = "n";$(13_10)timeInAPhase = 0;$(13_10)//order: 1 2 3 4$(13_10)for (var i = 0; i < 4; i++) {$(13_10)	cooldownTimer[i] = 0;$(13_10)	firstTime[i] = true;$(13_10)}$(13_10)$(13_10)abilityKey[0] = "1";$(13_10)abilityKey[1] = "2";$(13_10)abilityKey[2] = "3";$(13_10)abilityKey[3] = "4";$(13_10)numAbilities = 4;$(13_10)abilityImageXScale = image_xscale;$(13_10)aiTime = 0$(13_10)$(13_10)///key$(13_10)//order: w a s d 1 2 3 4$(13_10)UP = 0;$(13_10)LEFT = 1;$(13_10)DOWN = 2;$(13_10)RIGHT = 3;$(13_10)ONE = 4;$(13_10)TWO = 5;$(13_10)THREE = 6;$(13_10)FOUR = 7;$(13_10)$(13_10)for (var i = 0; i < numKeys; i++) {$(13_10)	durationHeld[i] = 0;$(13_10)	heldBefore[i] = false;$(13_10)}$(13_10)$(13_10)maxMouseX = mouse_x;$(13_10)$(13_10)///stuff needed for sprite and image$(13_10)moveState = "none"$(13_10)$(13_10)if (room != rmRogueHelp) {$(13_10)	if (selectedHero[thisNumber] == selectedHero[1 - thisNumber] && numberWithSprite2 == thisNumber) {$(13_10)		sprite2 = true$(13_10)	} else {$(13_10)		sprite2 = false$(13_10)	}$(13_10)} else {$(13_10)	sprite2 = false$(13_10)}"
///@desc necessary vars
///general
hp = maxHp;
hpLost = 0;
preciseX = x;
preciseY = y;
dx = 0;
dy = 0;
gravMoveMod = noone;
jumpMoveMod = noone;
moveModList = ds_list_create(); //affected by cc
envMoveModList = ds_list_create(); //not affected by cc
slowModList = ds_list_create();
dmgModList = ds_list_create();
grounded = false;
ceilinged = false;
timeSinceGrounded = 0
abilityImageXScale = image_xscale;
targetX = preciseX

///ability
aState = "n";
aPhase = "n";
timeInAPhase = 0;
//order: 1 2 3 4
for (var i = 0; i < 4; i++) {
	cooldownTimer[i] = 0;
	firstTime[i] = true;
}

abilityKey[0] = "1";
abilityKey[1] = "2";
abilityKey[2] = "3";
abilityKey[3] = "4";
numAbilities = 4;
abilityImageXScale = image_xscale;
aiTime = 0

///key
//order: w a s d 1 2 3 4
UP = 0;
LEFT = 1;
DOWN = 2;
RIGHT = 3;
ONE = 4;
TWO = 5;
THREE = 6;
FOUR = 7;

for (var i = 0; i < numKeys; i++) {
	durationHeld[i] = 0;
	heldBefore[i] = false;
}

maxMouseX = mouse_x;

///stuff needed for sprite and image
moveState = "none"

if (room != rmRogueHelp) {
	if (selectedHero[thisNumber] == selectedHero[1 - thisNumber] && numberWithSprite2 == thisNumber) {
		sprite2 = true
	} else {
		sprite2 = false
	}
} else {
	sprite2 = false
}