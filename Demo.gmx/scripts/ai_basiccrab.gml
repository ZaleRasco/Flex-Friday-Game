distarget=point_distance(x,y,target.x,target.y)
if (distarget <= detectionradias) {
    targetdetected=true
}
if targetdetected==true {
pointdir = point_direction(x,y,target.x,target.y)

}

inst = instance_place(x,y,obj_basiccrab)
if (inst != noone)
{
    pointdir = point_direction(inst.x,inst.y,x,y)
}
motion_set(pointdir,crabspeed)
