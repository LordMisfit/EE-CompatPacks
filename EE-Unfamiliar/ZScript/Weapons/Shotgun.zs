class UnfamiliarShotgun : Weapon REPLACES Shotgun
{
	Default
	{
		Weapon.SelectionOrder 1300;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "Shell";
		Inventory.PickupMessage "You got a UAC Sargeant's Shotgun.";
		Tag "UAC Sargeant's Shotgun";
	}

	States
	{
		Ready:
			SHTG A 1 A_WeaponReady;
			Loop;
		Deselect:
			SHTG A 1 A_Lower;
			Loop;
		Select:
			SHTG A 1 A_Raise;
			Loop;
		Fire:
			SHTG A 3;
			SHTG A 7 A_FireShotgun;
			SHTG BC 5;
			SHTG D 4;
			SHTG CB 5;
			SHTG A 3;
			SHTG A 7 A_ReFire;
			Goto Ready;
		Flash:
			SHTF A 4 Bright A_Light1;
			SHTF B 3 Bright A_Light2;
			Goto LightDone;
		Spawn:
			SHOT A -1;
			Stop;
	}
}