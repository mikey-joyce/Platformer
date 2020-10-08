/// @description move to next room

with(obj_player)
{
	if(room == room2)
	{
		slideTransition(TRANS_MODE.GOTO, rMenu);
	}
	else
	{
		if(hascontrol)
		{
			hascontrol = false;
			slideTransition(TRANS_MODE.NEXT);
		}
	}
}
