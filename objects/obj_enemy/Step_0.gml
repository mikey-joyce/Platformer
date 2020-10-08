vsp = vsp + grv;

//Stops enemies from walking off edge
if(grounded) && (heights) && (!place_meeting(x+hsp, y+1, obj_wall))
{
	hsp = -hsp;
}

//Horizontal wall collision
if (place_meeting(x+hsp, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical wall collision
if (place_meeting(x, y+vsp, obj_wall))
{
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x, y+1, obj_wall))
{
	grounded = false;
	sprite_index = spr_enemy;
	image_speed = 0;
	if (sign(vsp) > 0)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_enemy;	
	}
	else
	{
		sprite_index = spr_enemyRun;
	}
}

//Hit Flash
if (flash > 0)
{
	flash--;
	sprite_index = spr_enemyWhite;
}

if(hsp != 0)
{
	image_xscale = sign(hsp)*size;
}
image_yscale = size;