/// @description creation stuff
projId = depth;
depth = 0;
thisNumber = projId.thisNumber;
myHeroId = heroId[thisNumber];
dmg = myHeroId.smallLobDmg;
dDmg = 0;
duration = 1;
forever = false;
slowTo = myHeroId.smallLobSlowTo;
dSlowTo = 0;
slowDuration = myHeroId.smallLobSlowDuration;
slowForever = false;
time = myHeroId.lobHitboxDuration;
currTime = 0;
image_xscale = projId.image_xscale
image_angle = projId.image_angle
instance_create_depth(x, y, id, objSmallIceLobVisual)
hitSound = sndIceShot