class CandelabraBlue : Actor
{
	Default
	{
		Radius 16;
		Height 60;
		ProjectilePassHeight -16;
		+SOLID
	}
	
	States
	{
		Spawn:
			CBRB A -1 Bright;
			Stop;
	}
}

class CandelabraGrey : CandelabraBlue
{
	States
	{
		Spawn:
			CBRC A -1 Bright;
			Stop;
	}
}

class FloorLantern : Actor
{
	Default
	{
		Radius 16;
		Height 20;
	}
	
	States
	{
		Spawn:
			FRLT A -1 Bright;
			Stop;
	}
}

class FloorLantern_Animated : FloorLantern
{
	States
	{
		Spawn:
			FRLT A 5 Bright;
			FRLF A 10;
			Loop;
	}
}

class FloorLanternTall : FloorLantern
{
	States
	{
		Spawn:
			FRLT B -1 Bright;
			Stop;
	}
}

class FloorLanternTall_Animated : FloorLantern
{
	States
	{
		Spawn:
			FRLT B 5 Bright;
			FRLF B 10;
			Loop;
	}
}

class CeilingLantern : FloorLantern
{
	Default
	{
		+SPAWNCEILING
		+NOGRAVITY
	}
	
	States
	{
		Spawn:
			FRLT C -1 Bright;
			Stop;
	}
}

class CeilingLantern_Animated : CeilingLantern
{
	States
	{
		Spawn:
			FRLT C 5 Bright;
			FRLF C 10;
			Loop;
	}
}

class CeilingLanternTall : CeilingLantern
{
	States
	{
		Spawn:
			FRLT D -1 Bright;
			Stop;
	}
}

class CeilingLanternTall_Animated : CeilingLantern
{
	States
	{
		Spawn:
			FRLT D 5 Bright;
			FRLF D 10;
			Loop;
	}
}

class WhiteCandlestick : Actor
{
	Default
	{
		Radius 20;
		Height 14;
		ProjectilePassHeight -16;
	}
	
	States
	{
		Spawn:
			CDSW A -1 Bright;
			Stop;
	}
}

class BlueCandlestick : WhiteCandlestick
{
	States
	{
		Spawn:
			CDSB A -1 Bright;
			Stop;
	}
}