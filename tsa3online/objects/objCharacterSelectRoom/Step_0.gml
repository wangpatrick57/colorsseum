/// @description check to start
if (!alarmStarted && (tpId.lockedIn && testingMode || tpId.lockedIn && otherLockedIn)) {
    alarm[0] = 1 * room_speed;
    alarmStarted = true;
}