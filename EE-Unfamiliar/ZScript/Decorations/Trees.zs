class HellTree : Actor
{
	Default
	{
		Radius 19;
		Height 61;
		Mass 5000;
		Scale 0.8;

		+SOLID
	}

	States
	{
		Spawn:
			HETR A -1;
			Wait;
	}
}

class HellTreeScorch1 : HellTree
{ 
	States
	{
		Spawn:
			HETR B -1;
			Stop;
	}
}

class HellTreeScorch2 : HellTree
{ 
	States
	{
		Spawn:
			HETR C -1;
			Stop;
	}
}

class HellTreeBurn1 : HellTree
{ 
	States
	{
		Spawn:
			HETR D -1;
			Stop;
	}
}

class HellTreeBurn2 : HellTree
{ 
	States
	{
		Spawn:
			HETR E -1;
			Stop;
	}
}

class HellTreeScorch3 : HellTree
{ 
	States
	{
		Spawn:
			HETR F -1;
			Stop;
	}
}

class HellTreeBurn3 : HellTree
{
	Default
	{	
		Radius 15;
		Height 46;
	}

	States
	{
		Spawn:
			HETR G -1;
			Stop;
	}
}

class FleshTree1 : HellTree
{
	Default
	{
		Radius 32;
		Height 89;
		Scale 1;
	}

	States
	{
		Spawn:
			HETR H -1;
			Stop;
	}
}

class FleshTree2 : FleshTree1
{
	States
	{
		Spawn:
			HETR I -1;
			Stop;
	}
}

class FleshTree3 : FleshTree1
{
	States
	{
		Spawn:
			HETR J -1;
			Stop;
	}
}

class SmallTree1 : Actor
{
	Default
	{
		Radius 19;
		Height 61;
		Mass 5000;
		Scale 0.8;

		+SOLID
	}

	States
	{
		Spawn:
			TREN A -1;
			Wait;
	}
}

class SmallTree2 : Actor
{
	Default
	{
		Radius 19;
		Height 61;
		Mass 5000;
		Scale 0.8;

		+SOLID
	}

	States
	{
		Spawn:
			TREN B -1;
			Wait;
	}
}

class SmallBush1 : Actor
{
	Default
	{
		Radius 19;
		Height 61;
		Mass 5000;
		Scale 0.8;

		+SOLID
	}

	States
	{
		Spawn:
			BUSN A -1;
			Wait;
	}
}

class SmallBush2 : Actor
{
	Default
	{
		Radius 19;
		Height 61;
		Mass 5000;
		Scale 0.8;

		+SOLID
	}

	States
	{
		Spawn:
			BUSN B -1;
			Wait;
	}
}