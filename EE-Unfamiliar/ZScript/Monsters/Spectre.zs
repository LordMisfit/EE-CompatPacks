class UnfamiliarFuzzyBlood : Blood
{
	Default
	{
		Alpha 0.50;
		RenderStyle "OptFuzzy";
		-ALLOWPARTICLES
	}
}

class UnfamiliarSpectre : Spectre REPLACES Spectre
{
	Default
	{
		Health 100;
		BloodType "UnfamiliarFuzzyBlood";
		BloodColor "40 40 40";
		Speed 15;
	}
}