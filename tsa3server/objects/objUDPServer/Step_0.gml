///@desc send data
for (var g = 0; g < ds_list_size(currGameDataIds); g++) {
	var currGameDataId = ds_list_find_value(currGameDataIds, g);
	
	for (var c = 0; c < array_length_1d(currGameDataId.clientIds); c++) {
		var clientId = currGameDataId.clientIds[c];
		var clientDataId = ds_map_find_value(clientDataIds, clientId);
		var clientIp = clientDataId.ip;
		var clientPortNum = clientDataId.udpPortNum;
		
		if (clientPortNum != -1) {
			for (var p = 0; p < array_length_1d(currGameDataId.playerNums); p++) {
				var playerNum = currGameDataId.playerNums[p];
				var playerDataId = ds_map_find_value(playerDataIds, playerNum);
				var playerClientId = playerDataId.clientId;
			
				if (clientId != playerClientId) {
					buffer_seek(bufferToSend, buffer_seek_start, 0);
					buffer_write(bufferToSend, buffer_string, "basicState");
					buffer_write(bufferToSend, buffer_u8, p);
					buffer_write(bufferToSend, buffer_u16, playerDataId.xPos);
					buffer_write(bufferToSend, buffer_u16, playerDataId.yPos);
					buffer_write(bufferToSend, buffer_u16, playerDataId.sprite_index);
					buffer_write(bufferToSend, buffer_s8, playerDataId.image_index);
					buffer_write(bufferToSend, buffer_s16, playerDataId.image_angle);
					buffer_write(bufferToSend, buffer_s8, playerDataId.image_xscale);
					network_send_udp(udp, clientIp, clientPortNum, bufferToSend, buffer_tell(bufferToSend));
					
					if (playerDataId.sendLockedIn) {
						buffer_seek(bufferToSend, buffer_seek_start, 0);
						buffer_write(bufferToSend, buffer_string, "basicState");
						buffer_write(bufferToSend, buffer_u8, p);
						buffer_write(bufferToSend, buffer_bool, playerDataId.lockedIn);
						network_send_udp(udp, clientIp, clientPortNum, bufferToSend, buffer_tell(bufferToSend));
					}
				}
			}
		}
	}
	
	for (var p = 0; p < array_length_1d(currGameDataId.playerNums); p++) {
		var playerNum = currGameDataId.playerNums[p];
		var playerDataId = ds_map_find_value(playerDataIds, playerNum);
		playerDataId.sendLockedIn = false;
	}
}