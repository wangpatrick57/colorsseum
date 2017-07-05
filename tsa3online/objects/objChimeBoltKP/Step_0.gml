/// @description move
if (instance_exists(tpId)) {
    if (movingStraight) {
        dx = spd * dcos(dir);
        dy = spd * dsin(dir);
        x += dx;
        y -= dy;
    } else {
        var diffX = tpId.x - x;
        var diffY = y - tpId.y;
        targetDir = darctan2(diffY, diffX);
        
        while (targetDir < 0) {
            targetDir += 360;
        }
        
        while (targetDir >= 360) {
            targetDir -= 360;
        }
        
        if (abs(dir - targetDir) < ddir) {
            dir = targetDir;
        } else {
            if (dir < targetDir) {
                if (abs(dir - targetDir) < 180) {
                    dir += ddir;
                } else {
                    dir -= ddir;
                }
            } else {
                if (abs(dir - targetDir) < 180) {
                    dir -= ddir;
                } else {
                    dir += ddir;
                }
            }
        }
        
        dx = spd * dcos(dir);
        dy = spd * dsin(dir);
        x += dx;
        y -= dy;
    }
    
    while (dir < 0) {
        dir += 360;
    }
    
    while (dir >= 360) {
        dir -= 360;
    }
} else {
    instance_destroy();
}

///sprite and image
var shadow = instance_create(x, y, objChimeCarrierShadow);
shadow.sprite_index = sprChimeCarrierShadowTapped;
image_angle = dir + 180;

///destroy
if (place_meeting(x, y, tpId)) {
    instance_destroy();
    instance_create(x, y, objAttackDuckHurtboxKP);
}

