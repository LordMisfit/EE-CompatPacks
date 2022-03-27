class UnfamiliarSuperShotgun : Weapon REPLACES SuperShotgun
{
	Default
	{
		Weapon.SelectionOrder 400;
		Weapon.AmmoUse 2;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "Shell";
		Inventory.PickupMessage "You got a UAC Captain's Super Shotgun.";
		//Inventory.PickupSound "Items/DSWPNUP.ogg";
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
			SHT2 A 5;
			SHT2 A 8 A_FireShotgun2;
			SHT2 B 8;
			SHT2 C 8 A_CheckReload;
			SHT2 D 8 A_OpenShotgun2;
			SHT2 E 8;
			SHT2 F 8 A_LoadShotgun2;
			SHT2 G 8;
			SHT2 H 7 A_CloseShotgun2;
			SHT2 A 7 A_ReFire;
			Goto Ready;
			SHT2 B 8;
			SHT2 A 5;
			Goto Deselect;
		Flash:
			SHT2 I 5 Bright A_Light1;
			SHT2 J 4 Bright A_Light2;
			Goto LightDone;
		Spawn:
			SGN2 A -1;
			Stop;
	}
}