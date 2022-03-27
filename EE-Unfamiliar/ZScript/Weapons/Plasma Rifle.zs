class UnfamiliarPlasmaRifle : Weapon REPLACES PlasmaRifle
{
	Default
	{
		Weapon.SelectionOrder 100;
		Weapon.AmmoUse 2;
		Weapon.AmmoGive 40;
		Weapon.AmmoType "Cell";
		Inventory.PickupMessage "You got a UAC Prototype Plasma Rifle.";
		//Inventory.PickupSound "Items/DSWPNUP.ogg";
		Tag "UAC Prototype Plasma Rifle";
	}

	States
	{
		Ready:
			PLSG A 1 A_WeaponReady;
			Loop;
		Deselect:
			PLSG A 1 A_Lower;
			Loop;
		Select:
			PLSG A 1 A_Raise;
			Loop;
		Fire:
			PLSG A 2 A_FirePlasma;
			PLSG B 20 A_ReFire;
			Goto Ready;
		Flash:
			PLSF A 2 Bright A_Light1;
			Goto LightDone;
			PLSF B 2 Bright A_Light1;
			Goto LightDone;
		Spawn:
			PLAS A -1;
			Stop;
	}
}