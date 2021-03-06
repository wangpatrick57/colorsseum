///@desc networking stuff
var portNum = async_load[? "port"];

if (portNum != udpPortNum && portNum != tcpPortNum) {
	var receivedBuffer = async_load[? "buffer"];
	buffer_seek(receivedBuffer, buffer_seek_start, 0);
	var bufferType = buffer_read(receivedBuffer, buffer_u8);

	if (bufferType == UDP_CONNECTION) {
		var playerNum = buffer_read(receivedBuffer, buffer_u16);
		var playerDataId = ds_map_find_value(playerDataIds, playerNum);
		var clientDataId = ds_map_find_value(clientDataIds, playerDataId.clientId);
		clientDataId.udpPortNum = portNum;
		buffer_seek(bufferToSend, buffer_seek_start, 0);
		buffer_write(bufferToSend, buffer_u8, UDP_CONNECTION);
		network_send_udp(udp, clientDataId.ip, clientDataId.udpPortNum, bufferToSend, buffer_tell(bufferToSend));
	} else if (bufferType == BASIC_STATE) {
		var playerNum = buffer_read(receivedBuffer, buffer_u16);
		var playerDataId = ds_map_find_value(playerDataIds, playerNum);
		playerDataId.xPos = buffer_read(receivedBuffer, buffer_u16);
		playerDataId.yPos = buffer_read(receivedBuffer, buffer_u16);
		playerDataId.spriteIndex = buffer_read(receivedBuffer, buffer_s16);
		playerDataId.imageXScale = buffer_read(receivedBuffer, buffer_s8);
		playerDataId.hp = buffer_read(receivedBuffer, buffer_u8);
	} else if (bufferType == LOCKED_IN) {
		var playerNum = buffer_read(receivedBuffer, buffer_u16);
		var playerDataId = ds_map_find_value(playerDataIds, playerNum);
		playerDataId.lockedIn = buffer_read(receivedBuffer, buffer_bool);
		playerDataId.selectedHero = buffer_read(receivedBuffer, buffer_string);
		playerDataId.sendLockedIn = true;
	} else if (bufferType == ABILITY) {
		var playerNum = buffer_read(receivedBuffer, buffer_u16);
		var playerDataId = ds_map_find_value(playerDataIds, playerNum);
		playerDataId.aState = buffer_read(receivedBuffer, buffer_string);
		playerDataId.timeToActivate = buffer_read(receivedBuffer, buffer_f32);
	}
}