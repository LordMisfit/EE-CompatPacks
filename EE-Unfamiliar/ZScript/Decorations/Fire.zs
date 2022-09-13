class LavaFireBlue : Actor
{
	Default
	{
		Radius 8;
		Height 4;

		+NOBLOCKMAP
		+NOCLIP
		//+BRIGHT
	}

	States
	{
		Spawn:
			BFIR A 0 NoDelay A_Jump(256, random(1, 10));

		Idle:
			BFIR ABCDEFGHIJ 5;
			Loop;
	}
}

class LavaFireOrange : LavaFireBlue
{
	States
	{
		Spawn:
			LFIR A 0 NoDelay A_Jump(256, random(1, 10));

		Idle:
			LFIR ABCDEFGHIJ 5;
			Loop;
	}
}

