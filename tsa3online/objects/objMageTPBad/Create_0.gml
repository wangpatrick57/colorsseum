/// @description creation stuff
//stats
ddy = 1.2 * overallSpd;
jumpDy = 18 * overallSpd;
flyDx = 4.5 * overallSpd;
flyDy = flyDx;
boostedDx = 11 * overallSpd;
boostedDy = boostedDx;
boostedWalkingSpd = 8.1;
moveSpd = 5 * overallSpd;
attackPreTime = 11 / overallSpd;
attackPostTime = 4 / overallSpd;
fireShotCDTime = 0.8 * room_speed / overallSpd;
fireballPreTime = 3 / overallSpd;
fireballPostTime = 12 / overallSpd;
attackSpd = 1 * overallSpd;
jumpDx = 1 * overallSpd;
jumpPreTime = 1 / overallSpd;
jumpPostTime = 3 / overallSpd;
maxAirJumps = 0;
maxHp = mageHp;
fireblastRecoil = 6;
boostDuration = 2.5 * room_speed;
boostCDTime = 5 * room_speed;

//necessary vars
state = NONE;
attackState = NONE;
mageAttackState = NONE;
jumpState = NONE;
abilityState = NONE;
direct = RIGHT;
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
hp = maxHp;
allExplode = false;
MAGE = 1;
DRAGON = -1;
firingMode = MAGE;
changeReady = true;
FLY_CD = 5;
BOOST_DURATION = 6;
BOOST_CD = 7;
FIREBALL_PRE = 8;
FIREBALL_POST = 9;
FIRE_SHOT_CD = 10;
flyCDTime = 10;
boosted = false;
flyReady = true;
boostReady = true;
fireballState = NONE;
immuneTo = ds_list_create();
onePressed = false;
twoPressed = false;
threePressed = false;
fourPressed = false;
ducking = false;
upPressed = false;
upHeld = false;
controlScheme = mageControlScheme;
stunTime = 0;
fireShotReady = true;