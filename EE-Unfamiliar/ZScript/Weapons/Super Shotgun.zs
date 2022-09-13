class UnfamiliarSuperShotgun : Weapon REPLACES SuperShotgun
{
	Default
	{
		Weapon.SelectionOrder 400;
		Weapon.AmmoUse 2;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "Shell";
		Inventory.PickupMessage "You got a UAC Captain's Super Shotgun.";
		Tag "UAC Captain's Super Shotgun";
	}

	States
	{
		Ready:
			SHT2 A 1 A_WeaponReady;
			Loop;
		Deselect:
			SHT2 A 1 A_Lower;
			Loop;
		Select:
			SHT2 A 1 A_Raise;
			Loop;
		Fire:
			SHT2 A 3 A_FireShotgun2;
			SHT2 A 5;
			SHT2 A 2;
			SHT2 B 5;
			SHT2 K 5;
			SHT2 C 6 A_CheckReload;
			SHT2 D 5 A_OpenShotgun2;
			SHT2 E 4;
			SHT2 L 4;
			SHT2 F 6 A_LoadShotgun2;
			SHT2 G 4;
			SHT2 H 5;
			SHT2 M 4;
			SHT2 H 3;
			SHT2 N 3 A_CloseShotgun2;
			SHT2 A 3 A_ReFire;
			Goto Ready;
			SHT2 A 6;
			Goto Deselect;
		Flash:
			SHT2 I 3 Bright A_Light1;
			SHT2 J 5 Bright A_Light2;
			SHT2 I 2 Bright A_Light1;
			Goto LightDone;
		Spawn:
			SGN2 A -1;
			Stop;
	}
}