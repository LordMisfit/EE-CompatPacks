class UnfamiliarBFG9000 : Weapon REPLACES BFG9000
{
	Default
	{
		Height 20;
		Weapon.SelectionOrder 2800;
		Weapon.AmmoUse 50;
		Weapon.AmmoGive 50;
		Weapon.AmmoType "Cell";
		Inventory.PickupMessage "You got the BIG FUCKING GUN!";
		//Inventory.PickupSound "Items/DSWPNUP.ogg";
		Tag "The Big Fucking Gun";
		+WEAPON.NOAUTOFIRE
	}

	States
	{
		Ready:
			BFGG A 1 A_WeaponReady;
			Loop;
		Deselect:
			BFGG A 1 A_Lower;
			Loop;
		Select:
			BFGG A 1 A_Raise;
			Loop;
		Fire:
			BFGG A 20 A_BFGSound;
			BFGG B 10 A_GunFlash;
			BFGG B 10 A_FireBFG;
			BFGG B 20 A_ReFire;
			Goto Ready;
		Flash:
			BFGF A 11 Bright A_Light1;
			BFGF B 6 Bright A_Light2;
			Goto LightDone;
		Spawn:
			BFUG A -1;
			Stop;
		OldFire:
			BFGG A 10 A_BFGSound;
			BFGG BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB 1 A_FireOldBFG;
			BFGG B 0 A_Light0;
			BFGG B 20 A_ReFire;
			Goto Ready;
	}
}