class UnfamiliarCyberdemon : Cyberdemon REPLACES Cyberdemon
{
	Default
	{
		Health 5000;
		Speed 20;
		PainChance 10;
	}

	States
	{
		Missile:
			CYBR E 4 A_FaceTarget;
			CYBR F 8 A_CyberAttack;
			CYBR E 8 A_FaceTarget;
			CYBR F 8 A_CyberAttack;
			CYBR E 8 A_FaceTarget;
			CYBR F 8 A_CyberAttack;
			Goto See;
	}
}