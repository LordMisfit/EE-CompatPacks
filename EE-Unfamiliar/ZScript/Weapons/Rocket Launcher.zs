class UnfamiliarRocketLauncher : Weapon REPLACES RocketLauncher
{
	Default
	{	
		Weapon.SelectionOrder 2500;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 2;
		Weapon.AmmoType "RocketAmmo";
		Inventory.PickupMessage "You got a UAC Mining Rocket Launcher.";
		Tag "UAC Mining Rocket Launcher";
		+WEAPON.NOAUTOFIRE
	}

	States
	{
		Ready:
			MISG A 1 A_WeaponReady;
			Loop;
		Deselect:
			MISG A 1 A_Lower;
			Loop;
		Select:
			MISG A 1 A_Raise;
			Loop;
		Fire:
			MISG B 8 A_GunFlash;
			MISG B 12 A_FireMissile;
			MISG B 0 A_ReFire;
			Goto Ready;
		Flash:
			MISF A 3 Bright A_Light1;
			MISF B 4 Bright;
			MISF CD 4 Bright A_Light2;
			Goto LightDone;
		Spawn:
			LAUN A -1;
			Stop;
	}
}