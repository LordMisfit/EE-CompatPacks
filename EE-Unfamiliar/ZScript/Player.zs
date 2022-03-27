class UnfamiliarPlayer : PlayerPawn REPLACES PlayerPawn
{
	Default
	{	
		Speed 1;
		Health 100;
		Radius 16;
		Height 56;
		Mass 100;
		PainChance 255;
		Player.DisplayName "Master of Doom";
		Player.CrouchSprite "PLYC";
		Player.StartItem "UnfamiliarPistol";
		Player.StartItem "UnfamiliarFist";
		Player.StartItem "Clip", 50;
		Player.ColorRange 112, 127;
		Player.WeaponSlot 1, "UnfamiliarFist", "UnfamiliarChainsaw";
		Player.WeaponSlot 2, "UnfamiliarPistol";
		Player.WeaponSlot 3, "UnfamiliarShotgun", "UnfamiliarSuperShotgun";
		Player.WeaponSlot 4, "UnfamiliarChaingun";
		Player.WeaponSlot 5, "UnfamiliarRocketLauncher";
		Player.WeaponSlot 6, "UnfamiliarPlasmaRifle";
		Player.WeaponSlot 7, "UnfamiliarBFG9000";
	}
  
	States
	{
		Pain:
			PLAY G 4 ;
			PLAY G 4 A_Pain;
			Goto Spawn;
		Death:
			PLAY H 0 A_PlayerSkinCheck("AltSkinDeath");
		Death1:
			PLAY H 10;
			PLAY I 10 A_PlayerScream;
			PLAY J 10 A_NoBlocking;
			PLAY KLM 10;
			PLAY N -1;
			Stop;
		XDeath:
			PLAY O 0 A_PlayerSkinCheck("AltSkinXDeath");
		XDeath1:
			PLAY O 5;
			PLAY P 5 A_XScream;
			PLAY Q 5 A_NoBlocking;
			PLAY RSTUV 5;
			PLAY W -1;
			Stop;
		AltSkinDeath:
			PLAY H 6;
			PLAY I 6 A_PlayerScream;
			PLAY JK 6;
			PLAY L 6 A_NoBlocking;
			PLAY MNO 6;
			PLAY P -1;
			Stop;
		AltSkinXDeath:
			PLAY Q 5 A_PlayerScream;
			PLAY R 0 A_NoBlocking;
			PLAY R 5 A_SkullPop;
			PLAY STUVWX 5;
			PLAY Y -1;
			Stop;
	}
}

class UnfamiliarBerserk : Berserk REPLACES Berserk
{
	States
	{
		Pickup:
			TNT1 A 0 Bright
			{
				A_GiveInventory("PowerStrength");
				HealThing(100, 0);
				A_SelectWeapon("UnfamiliarFist");
			}
			Stop;
	}
}