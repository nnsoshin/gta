Config = {}

-- Turn this to false if you want everyone to use this.
Config.OnlyPolicemen = true

-- This is how much ammo you should get per weapon you take out.
Config.ReceiveAmmo = 230

-- You don't need to edit these if you don't want to.
Config.Armory = { ["x"] = 479.07, ["y"] = -996.7, ["z"] = 30.69, ["h"] = 270.0 }
Config.ArmoryPed = { ["x"] = 480.62, ["y"] = -996.69, ["z"] = 30.69, ["h"] = 90.0, ["hash"] = "s_m_y_cop_01" }

-- This is the available weapons you can pick out.
Config.ArmoryWeapons = {	
	{ ["hash"] = "WEAPON_VINTAGEPISTOL", ["type"] = "pistol" },
	{ ["hash"] = "weapon_stungun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_nightstick", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flashlight", ["type"] = "pistol" },
	{ ["hash"] = "weapon_combatpistol", ["type"] = "pistol" },
	{ ["hash"] = "weapon_combatpdw", ["type"] = "rifle" },
	{ ["hash"] = "weapon_carbinerifle", ["type"] = "rifle" },
	{ ["hash"] = "weapon_specialcarbine", ["type"] = "rifle" },
	{ ["hash"] = "weapon_pumpshotgun", ["type"] = "rifle" }
}
