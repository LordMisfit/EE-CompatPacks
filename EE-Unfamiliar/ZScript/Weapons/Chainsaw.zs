class UnfamiliarChainsaw : Weapon REPLACES Chainsaw
{
	Default
	{
		Weapon.Kickback 0;
		Weapon.SelectionOrder 2200;
		Weapon.UpSound "weapons/sawup";
 		Weapon.ReadySound "weapons/sawidle";
		Inventory.PickupMessage "You got a UAC Engineer's Chainsaw.";
		//Inventory.PickupSound "Items/DSWPNUP.ogg";
		Tag "UAC Engineer's Chainsaw";
		+WEAPON.MELEEWEAPON
	}

	States
	{
		Ready:
			SAWG CD 4 A_WeaponReady;
			Loop;
		Deselect:
			SAWG C 1 A_Lower;
			Loop;
		Select:
			SAWG C 1 A_Raise;
			Loop;
		Fire:
			SAWG AB 2 A_Saw;
			SAWG B 0 A_ReFire;
			Goto Ready;
		Spawn:
			CSAW A -1;
			Stop;
	}
}