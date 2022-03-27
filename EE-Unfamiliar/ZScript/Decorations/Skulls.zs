class FloatingSkullGrey : Actor
{
	Default
	{
		Radius 16;
		Height 26;
		ProjectilePassHeight -16;

		+SOLID
		+BRIGHT
	}
  
	States
	{
		Spawn:
			GSKU ABC 6 Bright;
			Loop;
	}
}

class FloatingSkullPurple : FloatingSkullGrey
{
	States
	{
		Spawn:
			PSKU ABC 6 Bright;
			Loop;
	}
}

class EvilEyePink : FloatingSkullGrey
{
  	Default
	{	
		Height 54;
	}
  
	States
	{
		Spawn:
			PEYE ABCB 6 Bright;
			Loop;
	}
}