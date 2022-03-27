class UnfamiliarArachnotron : Arachnotron REPLACES Arachnotron
{
	Default
	{
		Health 550;
		Speed 15;
		PainChance 75;
		DropItem "Cell";
	}

	States
	{
		Missile:
			BSPI A 10 Bright A_FaceTarget;
			BSPI G 2 Bright A_BspiAttack;
			BSPI H 2 Bright;
			BSPI H 1 Bright A_SpidRefire;
			Goto Missile+1;
	}
}