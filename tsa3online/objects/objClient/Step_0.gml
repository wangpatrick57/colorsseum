///@desc send data
//basics
for (var i = 0; i < numPlayers; i++) {
	if (thisInControl[i]) {
		buffer_seek(bufferToSend, buffer_seek_start, 0);
		buffer_write(bufferToSend, buffer_string, "basicState");
		buffer_write(bufferToSend, buffer_u16, playerNums[i]);
		network_send_udp(udp, ipNum, udpPortNum, bufferToSend, buffer_tell(bufferToSend));
	}
}