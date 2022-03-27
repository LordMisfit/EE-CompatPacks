class AmbientLoop : Actor
{
	Default
	{
		Radius 1;
		Height 1;

		+NOBLOCKMAP
		+NOINTERACTION
		+NOTIMEFREEZE
		+NOGRAVITY
	}

	string user_sound;
	string soundtoplay;

	override void PostBeginPlay()
	{
		super.PostBeginPlay();

		if (user_sound == "")
			user_sound = "";

		soundtoplay = "ambient/"..user_sound;
	}

	states
	{
		Spawn:
			TNT1 A 1 NoDelay A_StartSound(SoundToPlay, flags: CHANF_LOOPING);
			Wait;
	}
}