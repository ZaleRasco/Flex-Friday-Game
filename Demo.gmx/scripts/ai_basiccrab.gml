distarget=point_distance(x,y,target.x,target.y)
if (distarget <= detectionradias) {
    targetdetected=true
}
if targetdetected==true {
pointdir = point_direction(x,y,target.x,target.y)
move_contact_solid(pointdir,crabspeed)
}

