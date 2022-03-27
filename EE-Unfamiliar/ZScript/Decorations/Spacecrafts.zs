class SpacecraftJetWhite1 : Actor
{
	Default
	{
		Radius 16;
		Height 1;
		Scale 1.0;
		
		RenderStyle "Add";
		Alpha 0.5;

		+SPAWNCEILING
		+NOGRAVITY
		+BRIGHT
	}
	
	States
	{
		Spawn:
			SC1W A -1 Bright;
			Stop;
	}
}

class SpacecraftJetWhite2 : SpacecraftJetWhite1
{
	Default
	{
		-SPAWNCEILING
	}
  
	States
	{
		Spawn:
			SC2W A -1 Bright;
			Stop;
	}
}

class SpacecraftJetBlue1 : SpacecraftJetWhite1
{
	States
	{
		Spawn:
			SC1B A -1 Bright;
			Stop;
	}
}

class SpacecraftJetBlue2 : SpacecraftJetWhite2
{
	States
	{
		Spawn:
			SC2B A -1 Bright;
			Stop;
	}
}

class SpacecraftJetRed1 : SpacecraftJetWhite1
{
	States
	{
		Spawn:
			SC1R A -1 Bright;
			Stop;
	}
}

class SpacecraftJetRed2 : SpacecraftJetWhite2
{
	States
	{
		Spawn:
			SC2R A -1 Bright;
			Stop;
	}
}

class SpacecraftJetYellow1 : SpacecraftJetWhite1
{
	States
	{
		Spawn:
			SC1Y A -1 Bright;
			Stop;
	}
}

class SpacecraftJetYellow2 : SpacecraftJetWhite2
{
	States
	{
		Spawn:
			SC2Y A -1 Bright;
			Stop;
	}
}

class SpacecraftJetGreen1 : SpacecraftJetWhite1
{
	States
	{
		Spawn:
			SC1G A -1 Bright;
			Stop;
	}
}

class SpacecraftJetGreen2 : SpacecraftJetWhite2
{
	States
	{
		Spawn:
			SC2G A -1 Bright;
			Stop;
	}
}