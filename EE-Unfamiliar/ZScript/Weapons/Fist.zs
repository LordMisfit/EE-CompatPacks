class UnfamiliarFist : Weapon REPLACES Fist
{
	Default
	{	
		Weapon.SelectionOrder 3700;
		Weapon.Kickback 100;
		Tag "A Desire to Brawl";
		Inventory.PickupMessage "You got the desire to brawl.";
		//Inventory.PickupSound "Items/DSWPNUP.ogg";
		+WEAPON.WIMPY_WEAPON
		+WEAPON.MELEEWEAPON
	}

    States
    {
		Ready:
			PUNG A 1 A_WeaponReady;
			Loop;
		Deselect:
			PUNG A 1 A_Lower;
			Loop;
		Select:
			PUNG A 1 A_Raise;
			Loop;
		Fire:
			PUNG B 2;
			PUNG C 3 A_Punch;
			PUNG D 4;
			PUNG C 3;
			PUNG B 3 A_ReFire;
			Goto Ready;
    }
}