///@desc send data
for (var g = 0; g < ds_list_size(currGameDataIds); g++) {
	var currGameDataId = ds_list_find_value(currGameDataIds, g);
	
	for (var c = 0; c < array_length_1d(currGameDataId.clientIds); c++) {
		var clientId = currGameDataId.clientIds[c];
		var clientDataId = ds_map_find_value(clientDataIds, clientId);
		var clientIp = clientDataId.ip;
		var clientPortNum = clientDataId.udpPortNum;
		
		if (clientPortNum != -1) {
			for (var p = 0; p < array_length_1d(currGameDataId.playerServerNums); p++) {
				var playerServerNum = currGameDataId.playerServerNums[p];
				var playerDataId = ds_map_find_value(playerDataIds, playerServerNum);
				var playerClientId = playerDataId.clientId;
			
				if (clientId != playerClientId) {
					//basic state
					buffer_seek(bufferToSend, buffer_seek_start, 0);
					buffer_write(bufferToSend, buffer_u8, BASIC_STATE);
					buffer_write(bufferToSend, buffer_u8, p);
					buffer_write(bufferToSend, buffer_u16, playerDataId.xPos);
					buffer_write(bufferToSend, buffer_u16, playerDataId.yPos);
					buffer_write(bufferToSend, buffer_s16, playerDataId.spriteIndex);
					buffer_write(bufferToSend, buffer_s8, playerDataId.imageXScale);
					buffer_write(bufferToSend, buffer_u8, playerDataId.hp);
					network_send_udp(udp, clientIp, clientPortNum, bufferToSend, buffer_tell(bufferToSend));
					
					//ability
					if (playerDataId.justReceivedAbility) {
						buffer_seek(bufferToSend, buffer_seek_start, 0);
						buffer_write(bufferToSend, buffer_u8, ABILITY);
						buffer_write(bufferToSend, buffer_u8, p);
						buffer_write(bufferToSend, buffer_u16, playerDataId.abilitySentNum)
						buffer_write(bufferToSend, buffer_f32, playerDataId.abilityPreciseX)
						buffer_write(bufferToSend, buffer_f32, playerDataId.abilityPreciseY)
						buffer_write(bufferToSend, buffer_bool, playerDataId.abilityXScaleBool)
						buffer_write(bufferToSend, buffer_string, playerDataId.aState);
						buffer_write(bufferToSend, buffer_f32, playerDataId.timeToActivate);
						network_send_udp(udp, clientIp, clientPortNum, bufferToSend, buffer_tell(bufferToSend))
						playerDataId.justReceivedAbility = false
					}
					
					//caster
					if (playerDataId.justReceivedLob) {
						buffer_seek(bufferToSend, buffer_seek_start, 0)
						buffer_write(bufferToSend, buffer_u8, LOB)
						buffer_write(bufferToSend, buffer_u8, p)
						buffer_write(bufferToSend, buffer_f32, playerDataId.lobDetonateTime)
						network_send_udp(udp, clientIp, clientPortNum, bufferToSend, buffer_tell(bufferToSend))
						playerDataId.justReceivedLob = false
					}
						
					if (playerDataId.justReceivedBall) {
						buffer_seek(bufferToSend, buffer_seek_start, 0)
						buffer_write(bufferToSend, buffer_u8, BALL)
						buffer_write(bufferToSend, buffer_u8, p)
						buffer_write(bufferToSend, buffer_f32, playerDataId.ballDetonateTime)
						network_send_udp(udp, clientIp, clientPortNum, bufferToSend, buffer_tell(bufferToSend))
						playerDataId.justReceivedBall = false
					}
					
					if (playerDataId.sendLockedIn) {
						//locked in
						buffer_seek(bufferToSend, buffer_seek_start, 0);
						buffer_write(bufferToSend, buffer_u8, LOCKED_IN);
						buffer_write(bufferToSend, buffer_u8, p);
						buffer_write(bufferToSend, buffer_bool, playerDataId.lockedIn);
						buffer_write(bufferToSend, buffer_string, playerDataId.selectedHero);
						network_send_udp(udp, clientIp, clientPortNum, bufferToSend, buffer_tell(bufferToSend));
					}
				}
			}
		}
	}
	
	for (var p = 0; p < array_length_1d(currGameDataId.playerServerNums); p++) {
		var playerServerNum = currGameDataId.playerServerNums[p];
		var playerDataId = ds_map_find_value(playerDataIds, playerServerNum);
		playerDataId.sendLockedIn = false;
	}
}