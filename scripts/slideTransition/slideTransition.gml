/// @desc slideTransition(mode, targetRoom)
///@arg Mode sets tranistion mode between next, restart, and goto
///@arg Target sets target room when using the goto mode

with(obj_transition)
{
	mode = argument[0];
	if(argument_count > 1)
	{
		target = argument[1];
	}
}