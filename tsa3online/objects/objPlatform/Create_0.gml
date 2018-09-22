///@desc sprite
if (room == rmMainMenu) {
	var color = objMainMenuStuff.colors[0]
	
	if (color == 3) {
		sprite_index = sprForestPlatform
	} else if (color == 2) {
		sprite_index = sprMountainPlatform
	} else if (color == 1) {
		sprite_index = sprTundraPlatform
	} else if (color == 0) {
		sprite_index = sprDesertPlatform
	}

	image_speed = 0
	image_index = irandom(image_number - 1)
} else {
	if (room == rmForest) {
		sprite_index = sprForestPlatform
	} else if (room == rmMountain) {
		sprite_index = sprMountainPlatform
	} else if (room == rmTundra) {
		sprite_index = sprTundraPlatform
	} else if (room == rmDesert) {
		sprite_index = sprDesertPlatform
	}

	image_speed = 0
	image_index = irandom(image_number - 1)
}