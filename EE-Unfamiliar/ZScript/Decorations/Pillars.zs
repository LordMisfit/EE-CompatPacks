class TempleHellPillarBlue : Actor
{
	Default
	{
		Radius 16;
		Height 128;

		+SOLID
	}

	States
	{
		Spawn:
			COL7 A -1;
			Stop;
	}
}

class AncientHellPillarBlue : TempleHellPillarBlue
{
	States
	{
		Spawn:
			COL8 A -1;
			Stop;
	}
}

class TempleHellPillarRed : TempleHellPillarBlue
{
	States
	{
		Spawn:
			COL7 B -1;
			Stop;
	}
}

class AncientHellPillarRed : TempleHellPillarBlue
{
	States
	{
		Spawn:
			COL8 B -1;
			Stop;
	}
}

class TempleHellPillarGreen : TempleHellPillarBlue
{
	States
	{
		Spawn:
			COL7 C -1;
			Stop;
	}
}

class AncientHellPillarGreen : TempleHellPillarBlue
{
	States
	{
		Spawn:
			COL8 C -1;
			Stop;
	}
}

class SilverPillarBare : TempleHellPillarBlue
{
	States
	{
		Spawn:
			CO10 D -1;
			Stop;
	}
}

class SilverPillarDeco : TempleHellPillarBlue
{
	States
	{
		Spawn:
			CO10 E -1;
			Stop;
	}
}

class GoldPillarBare : TempleHellPillarBlue
{
	States
	{
		Spawn:
			CO11 C -1;
			Stop;
	}
}

class GoldPillarDeco : TempleHellPillarBlue
{
	States
	{
		Spawn:
			CO11 D -1;
			Stop;
	}
}