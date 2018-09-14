/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52936405
/// @DnDArgument : "code" "///@desc settings$(13_10)globalvar hpBarWidth, hpPerLine, hpBarOffset, hpBarHeight, $(13_10)		cooldownOffset, rightControlMode, numPlayers, $(13_10)		selectedHero, lockedIn, heroId, hpBar, playerHandlerObj, $(13_10)		cooldownBar, startGameDelay, characterSelect, selectBoxes,$(13_10)		mapSelect, mapSelectBoxes, auto, numberWithSprite2,$(13_10)		mapLockedIn;$(13_10)$(13_10)rightControlMode = "keyboard";$(13_10)room_speed = 60;$(13_10)jumpGrace = 0.1 * room_speed;$(13_10)hpBarWidth = 150;$(13_10)hpPerLine = 12;$(13_10)hpBarOffset = 50;$(13_10)hpBarHeight = 55;$(13_10)cooldownOffset = 20;$(13_10)numPlayers = 2;$(13_10)startGameDelay = 0.75 * room_speed;$(13_10)characterSelect[0, 0] = "mage"$(13_10)characterSelect[0, 1] = "caster"$(13_10)characterSelect[1, 0] = "rogue"$(13_10)characterSelect[1, 1] = "monk"$(13_10)selectBoxes[0, 0] = objMageSelection$(13_10)selectBoxes[0, 1] = objCasterSelection$(13_10)selectBoxes[1, 0] = objRogueSelection$(13_10)selectBoxes[1, 1] = objMonkSelection$(13_10)mapSelect[0, 0] = rmDesert$(13_10)mapSelect[0, 1] = rmTundra$(13_10)mapSelect[1, 0] = rmMountain$(13_10)mapSelect[1, 1] = rmForest$(13_10)mapSelectBoxes[0, 0] = objDesertSelection$(13_10)mapSelectBoxes[0, 1] = objTundraSelection$(13_10)mapSelectBoxes[1, 0] = objMountainSelection$(13_10)mapSelectBoxes[1, 1] = objForestSelection$(13_10)mapLockedIn = false$(13_10)debug = false$(13_10)auto = false$(13_10)bkMusics[0] = sndLoveDream$(13_10)bkMusics[1] = sndGymno1$(13_10)bkMusics[2] = sndClairDeLune$(13_10)$(13_10)///depths$(13_10)globalvar uiDepth;$(13_10)uiDepth = 1;"
///@desc settings
globalvar hpBarWidth, hpPerLine, hpBarOffset, hpBarHeight, 
		cooldownOffset, rightControlMode, numPlayers, 
		selectedHero, lockedIn, heroId, hpBar, playerHandlerObj, 
		cooldownBar, startGameDelay, characterSelect, selectBoxes,
		mapSelect, mapSelectBoxes, auto, numberWithSprite2,
		mapLockedIn;

rightControlMode = "keyboard";
room_speed = 60;
jumpGrace = 0.1 * room_speed;
hpBarWidth = 150;
hpPerLine = 12;
hpBarOffset = 50;
hpBarHeight = 55;
cooldownOffset = 20;
numPlayers = 2;
startGameDelay = 0.75 * room_speed;
characterSelect[0, 0] = "mage"
characterSelect[0, 1] = "caster"
characterSelect[1, 0] = "rogue"
characterSelect[1, 1] = "monk"
selectBoxes[0, 0] = objMageSelection
selectBoxes[0, 1] = objCasterSelection
selectBoxes[1, 0] = objRogueSelection
selectBoxes[1, 1] = objMonkSelection
mapSelect[0, 0] = rmDesert
mapSelect[0, 1] = rmTundra
mapSelect[1, 0] = rmMountain
mapSelect[1, 1] = rmForest
mapSelectBoxes[0, 0] = objDesertSelection
mapSelectBoxes[0, 1] = objTundraSelection
mapSelectBoxes[1, 0] = objMountainSelection
mapSelectBoxes[1, 1] = objForestSelection
mapLockedIn = false
debug = false
auto = false
bkMusics[0] = sndLoveDream
bkMusics[1] = sndGymno1
bkMusics[2] = sndClairDeLune

///depths
globalvar uiDepth;
uiDepth = 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B11FB31
/// @DnDArgument : "code" "///@desc necessary vars$(13_10)currRoom = "start";$(13_10)targetRoom = "start";$(13_10)startOffline = false;$(13_10)startOnline = false;$(13_10)createGameStuff = false;$(13_10)createSelectStuff = false;$(13_10)globalvar thisInControl;$(13_10)$(13_10)for (var i = 0; i < numPlayers; i++) {$(13_10)	thisInControl[i] = false;$(13_10)}"
///@desc necessary vars
currRoom = "start";
targetRoom = "start";
startOffline = false;
startOnline = false;
createGameStuff = false;
createSelectStuff = false;
globalvar thisInControl;

for (var i = 0; i < numPlayers; i++) {
	thisInControl[i] = false;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 411EA560
/// @DnDArgument : "code" "///@desc creation stuff$(13_10)randomize();$(13_10)$(13_10)if (!debug) {$(13_10)	window_set_fullscreen(true);$(13_10)}$(13_10)$(13_10)texture_set_interpolation(false);$(13_10)instance_create(0, 0, objSound);"
///@desc creation stuff
randomize();

if (!debug) {
	window_set_fullscreen(true);
}

texture_set_interpolation(false);
instance_create(0, 0, objSound);