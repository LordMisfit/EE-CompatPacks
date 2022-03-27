//Blue

class BlueTallColumn : Actor
{
	Default
	{
		Radius 16;
		Height 52;
		ProjectilePassHeight -16;
		
		+SOLID
	}

	States
	{
		Spawn:
			COL9 A -1;
			Stop;
	}
}

class BlueShortColumn : BlueTallColumn
{
	Default
	{
		Height 40;
	}

	States
	{
		Spawn:
			COL9 B -1;
			Stop;
	}
}

class BlueHeartColumn : BlueShortColumn
{
	States
	{
		Spawn:
			COL9 CD 14;
			Loop;
	}
}

//silver marble

class SilverTallColumn : BlueTallColumn
{
	States
	{
		Spawn:
			CO10 A -1;
			Stop;
	}
}

class SilverShortColumn : BlueShortColumn
{
	States
	{
		Spawn:
			CO10 B -1;
			Stop;
	}
}

class SilverSkullColumn : BlueShortColumn
{
	States
	{
		Spawn:
			CO10 C -1;
			Stop;
	}
}

//gold marble

class GoldTallColumn : BlueTallColumn
{
	States
	{
		Spawn:
			CO11 A -1;
			Stop;
	}
}

class GoldShortColumn : BlueShortColumn
{
	States
	{
		Spawn:
			CO11 B -1;
			Stop;
	}
}