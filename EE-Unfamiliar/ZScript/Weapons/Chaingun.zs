class UnfamiliarChaingun : Weapon REPLACES Chaingun
{
	Default
	{	
		Weapon.SelectionOrder 700;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 20;
		Weapon.AmmoType "Clip";
		Inventory.PickupMessage "You got a UAC Commando's Chaingun.";
		Tag "UAC Commando's Chaingun";
	}

	States
	{
		Ready:
			CHGG A 1 A_WeaponReady;
			Loop;
		Deselect:
			CHGG A 1 A_Lower;
			Loop;
		Select:
			CHGG A 1 A_Raise;
			Loop;
		Fire:
			CHGG AB 3 A_FireCGun;
			CHGG B 0 A_ReFire;
			Goto Ready;
		Flash:
			CHGF A 3 Bright A_Light1;
			Goto LightDone;
			CHGF B 3 Bright A_Light1;
			Goto LightDone;
		Spawn:
			MGUN A -1;
			Stop;
	}
}