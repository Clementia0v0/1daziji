
dlc2_Ammunition =
{
	-- beacon ammo
    {
		Sprite = "hud-context-ammo-olsweep",
		--AmmoSprites = { { Node = "Head", Sprite = "orbital_laser_head_Sweep", }, },
		Devices = { { Name = "ammo_orbital_sweep", Consume = true, }, },
		Projectile = "ol_marker_sweep",
        FireEffect = "mods/dlc2/effects/fire_ol_laser_sweep.lua",
       
	},
	{
		Sprite = "hud-context-ammo-olfocus",
		--AmmoSprites = { { Node = "Head", Sprite = "orbital_laser_head_Sweep", }, },
		Devices = { { Name = "ammo_orbital_focus", Consume = true, }, },
		Projectile = "ol_marker_focus",
        FireEffect = "mods/dlc2/effects/fire_ol_laser_sweep.lua",
       
	},
	{
		Sprite = "hud-context-ammo-plazmabomb",
		--AmmoSprites = { { Node = "Head", Sprite = path .. "/devices/ammo_plazmabomb/ammo_sprite.png", }, },
		Devices = { { Name = "ammo_plazmabomb", Consume = true, }, },
		Projectile = "plazmabomb",
	
		FireEffect = "mods/dlc2/effects/fire_ol_laser_sweep.lua",
		Tag = "plazmabomb",

		
       
		
	},
}

