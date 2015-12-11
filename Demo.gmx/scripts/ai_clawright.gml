object = argument[0]

with(object)
{
if (attackcd>0)
{
attackcd-=1
}
if (ready=true&&attackcd<=0)
{
attackx=obj_player.x
attacky=obj_player.y

pointdir = point_direction(x, y, attackx, attacky);
image_angle = pointdir+90;
attack=true
ready=false
}

if(attack=true)
{
    if(distance_to_point(attackx,attacky)<=1||(place_meeting(x,y,obj_wall)))
    {
        attack=false
    }
    else
    {
        move_towards_point(attackx,attacky,8)
    }
}

if(attack=false)
{
    if((distance_to_point(restx,resty)<=1)&&(ready=false))
    {
        ready=true
        attackcd=60
    }
    else if(distance_to_point(restx,resty)>1)
    {
        pointdir = point_direction(x, y, attackx, attacky);
        image_angle = pointdir+90;
        move_towards_point(restx,resty,8)
    }
}

///Damaging
if (place_meeting(x,y,obj_player)&&obj_player.iframe<=0)
{
obj_player.currenthp-=dmg
}

}
