class FleshPillarPink : Actor
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
			MELF A -1;
			Stop;
	}
}

class FleshPillarTan : FleshPillarPink
{
	States
	{
		Spawn:
			MELF C -1;
			Stop;
	}
}

class FleshDanglingPink : Actor
{
	Default
	{	
		Radius 16;
		Height 32;

		+SOLID
		+NOGRAVITY
		+SPAWNCEILING
	}

	States
	{
		Spawn:
			MELF B -1;
			Stop;
	}
}

class FleshDanglingTan : FleshDanglingPink
{
	States
	{
		Spawn:
			MELF D -1;
			Stop;
	}
}