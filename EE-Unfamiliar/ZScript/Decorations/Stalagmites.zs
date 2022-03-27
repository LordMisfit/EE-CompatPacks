class StalagmiteBlue : Actor
{
	Default
	{	
		Radius 16;
		Height 48;
		ProjectilePassHeight -16;

		+SOLID
	}

	States
	{
		Spawn:
			SMT2 B -1;
			Stop;
	}
}

class StalagmiteGrey : StalagmiteBlue
{
	States
	{
		Spawn:
			SMT2 C -1;
			Stop;
	}
}

class StalagmiteBlack : StalagmiteBlue
{
	States
	{
		Spawn:
			SMT2 D -1;
			Stop;
	}
}

class StalagmiteWhite : StalagmiteBlue
{
	States
	{
		Spawn:
			SMT2 E -1;
			Stop;
	}
}

class StalagmiteOrange : StalagmiteBlue
{
	States
	{
		Spawn:
			SMT2 F -1;
			Stop;
	}
}

class StalagmiteEP2 : StalagmiteBlue
{
	Default
	{
		Height 40;
	}

	States
	{
		Spawn:
			SMIT B -1;
			Stop;
	}
}