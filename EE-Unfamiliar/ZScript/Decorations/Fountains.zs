class FountainWaterNoisy : Actor
{
	Default
	{
		Radius 2;
		Height 2;
		Scale 0.75;

		RenderStyle "Translucent";
		Alpha 0.75;

		+NOBLOCKMAP
		+MOVEWITHSECTOR
	}

	States
	{
		Spawn:
			WFOU ABCD 3 A_StartSound("Fountain/Loop", flags: CHANF_LOOPING, attenuation: ATTN_IDLE);
			Loop;
	}
}

class FountainNukageNoisy : FountainWaterNoisy
{
 
	Default
	{
		Scale 0.5;
		Alpha 1.0;
		
		+BRIGHT
	}

	States
	{
		Spawn:
			NFOU ABCD 3 A_StartSound("Fountain/Loop", flags: CHANF_LOOPING, attenuation: ATTN_IDLE);
			Loop;
	}
}

class FountainBloodNoisy : FountainWaterNoisy
{
	States
	{
		Spawn:
			BFOU ABCD 3 A_StartSound("Fountain/Loop", flags: CHANF_LOOPING, attenuation: ATTN_IDLE);
			Loop;
	}
}