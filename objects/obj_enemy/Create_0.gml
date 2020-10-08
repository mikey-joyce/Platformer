if(hasweapon)
{
	mygun = instance_create_layer(x, y, "Gun", obj_enemyGun);
	with(mygun)
	{
		owner = other.id;
	}
}
else mygun=noone;