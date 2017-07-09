/// @description stats
ddy = 2.0 * overallSpd;
jumpDy = 21 * overallSpd;
moveSpd = 6.5 * overallSpd;
attackPreTime = 1 / overallSpd;
attackDuringTime = 2 / overallSpd;
attackPostTime = 3 / overallSpd;
attackSpd = 0;
attackDisplace = 15 * overallSpd;
blinkDisplace = 60 * overallSpd;
kickBlinkDisplace = 60 * overallSpd;
jumpDx = 1 * overallSpd;
jumpPreTime = 1 / overallSpd;
jumpPostTime = 3 / overallSpd;
maxAirJumps = 1;
maxHp = 3;
blinkCooldownTime = 6 / overallSpd;
kickBlinkTime = 4;
shieldTime = 0.2 * room_speed;
shieldCooldownTime = 0.5 * room_speed;
maxEnergy = 50;
blinkEnergyCost = 12;
kickBlinkEnergyCost = 18;
shieldEnergyCost = 20;
jumpEnergyCost = 0;
energyRegen = 30 / 20;
energyBurst = 9;
attackHurtboxXOffset = 6;
attackHurtboxYOffset = 2;

///necessary vars
state = NONE;
attackState = NONE;
jumpState = NONE;
abilityState = NONE;
blinkState = NONE;
BLINK = 1;
direct = RIGHT;
ducking = false;
spd = moveSpd;
dx = 0;
dy = 0;
preciseX = x;
preciseY = y;
currAirJumps = 0;
climbing = false;
immune = false;
immuneTime = IMMUNE_TIME;
isSelectHero = false;
hp = maxHp;
blinkOnCooldown = false;
BLINK = 4;
kickBlinkPrepped = false
KICK_BLINK = 5;
shieldState = false;
SHIELD = 6;
SHIELD_COOLDOWN = 8;
canShield = true;
currEnergy = maxEnergy;