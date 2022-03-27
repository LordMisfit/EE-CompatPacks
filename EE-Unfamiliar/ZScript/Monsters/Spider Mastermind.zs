class UnfamiliarSpiderMastermind : SpiderMastermind REPLACES SpiderMastermind
{
	Default
	{
		Health 7500;
		Speed 25;
		PainChance 25;
	}

	States
	{
		Missile:
			SPID A 10 Bright A_FaceTarget;
			SPID G 2 Bright A_SPosAttackUseAtkSound;
			SPID H 2 Bright A_SPosAttackUseAtkSound;
			SPID H 1 Bright A_SpidRefire;
			Goto Missile+1;
	}
}