class UnfamiliarPistol : Weapon REPLACES Pistol
{
	Default
	{	
		Weapon.SelectionOrder 1900;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 20;
		Weapon.AmmoType "Clip";
		Inventory.Pickupmessage "You got a UAC Security Guard's Pistol.";
		//Inventory.PickupSound "Items/DSWPNUP.ogg";
		Tag "UAC Security Guard's Pistol";
		+WEAPON.WIMPY_WEAPON
	}

	States
	{
		Ready:
			PISG A 1 A_WeaponReady;
			Loop;
		Deselect:
			PISG A 1 A_Lower;
			Loop;
		Select:
			PISG A 1 A_Raise;
			Loop;
		Fire:
			PISG A 3;
			PISG B 5 A_FirePistol;
			PISG C 3;
			PISG B 4 A_ReFire;
			Goto Ready;
		Flash:
			PISF A 5 Bright A_Light1;
			Goto LightDone;
			PISF A 5 Bright A_Light1;
			Goto LightDone;
		Spawn:
			PIST A -1;
			Stop;
	}
}