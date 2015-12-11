///Movement
object = argument[0]

with(object)
{
    if (attackcd > 0)
    {
        attackcd -= 1
    }
    if (ready = true && attackcd <= 0)
    {
        attackx = obj_player.x
        attacky = obj_player.y

        pointdir = point_direction(x, y, attackx, attacky);
        image_angle = pointdir + 90;
        moving = true
        ready = false
    }

    if (moving = true)
    {
        if (distance_to_point(attackx, attacky) <= 5 || (place_meeting(x, y, obj_wall)))
        {
            moving = false
        }
        else
        {
            move_towards_point(attackx, attacky, 8)
        }
    }

    if (moving = false)
    {
        if ((distance_to_point(restx, resty) <= 5) && (ready = false))
        {
            ready = true
            attackcd = 60
        }
        else if (distance_to_point(restx, resty) > 5)
        {
            pointdir = point_direction(x, y, attackx, attacky);
            image_angle = pointdir + 90;
            move_towards_point(restx, resty, 5)
        }
    }

    if (place_meeting(x, y, obj_player) && obj_player.iframe <= 0)
    {
        obj_player.currenthp -= dmg 
    }
}
