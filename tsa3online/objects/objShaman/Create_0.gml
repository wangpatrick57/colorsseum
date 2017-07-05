/// @description stats
ddy = 1.5 * overallSpd;
jumpDy = 18 * overallSpd;
floatDy = 3 * overallSpd;
floatDx = 3 * overallSpd;
moveSpd = 5.5 * overallSpd;
attackPreTime = 4 / overallSpd;
attackPostTime = 16 / overallSpd;
attackSpd = 1 * overallSpd;
jumpDx = moveSpd;
jumpPreTime = 1 / overallSpd;
jumpPostTime = 1 / overallSpd;
maxAirJumps = 0;
maxHp = 3;
totemCooldown = 1.4 * room_speed / overallSpd;
lightningCooldown = 2.1 * room_speed / overallSpd;
windCooldown = 2.4 * room_speed / overallSpd;
fireCooldown = 3.8 * room_speed / overallSpd;
windDdy = 6;
maxWindDy = 18;
windTime = 1 * room_speed / overallSpd;

///necessary vars
state = NONE;
attackState = NONE;
jumpState = NONE;
abilityState = NONE;
direct = RIGHT;
ducking = false;
spd = moveSpd;
dx = 0;
dy = 0;
preciseX = x;
preciseY = y;
currAirJumps = 0;
immune = false;
immuneTime = IMMUNE_TIME;
isSelectHero = false;
hp = maxHp;
allExplode = false;
totemReady = false;
lightningReady = false;
windReady = false;
fireReady = false;
threeState = NONE;
fourState = NONE;
TOTEM = 1;
LIGHTNING = 2;

