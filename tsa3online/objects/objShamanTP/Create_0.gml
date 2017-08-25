/// @description stats
ddy = 1.5 * overallSpd;
jumpDy = 20 * overallSpd;
flyDy = 3 * overallSpd;
flyDx = 3 * overallSpd;
moveSpd = 4.8 * overallSpd;
attackPreTime = 4 / overallSpd;
attackPostTime = 16 / overallSpd;
attackSpd = 1 * overallSpd;
jumpDx = moveSpd;
jumpPreTime = 1 / overallSpd;
jumpPostTime = 1 / overallSpd;
maxAirJumps = 0;
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
moveDx = 0;
naturalDx = 0;
moveDy = 0;
naturalDy = 0;
dx = 0;
dy = 0;
preciseX = x;
preciseY = y;
currAirJumps = 0;
immune = false;
immuneTime = IMMUNE_TIME;
isSelectHero = false;
maxHp = shamanHp;
hp = maxHp;
totemReady = false;
lightningReady = false;
windReady = false;
fireReady = false;
threeState = NONE;
fourState = NONE;
TOTEM = 1;
LIGHTNING = 2;
onePressed = false;
twoPressed = false;
threePressed = false;
fourPressed = false;
ducking = false;
upPressed = false;
upHeld = false;
immuneTo = ds_list_create();
stunTime = 0;
controlScheme = shamanControlScheme;
scrHeroId();

///creation stuff
alarm[1] = 1;