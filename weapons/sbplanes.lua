topl.Gravity = 981
table.insert(Sprites,
{
	
		Name = "tu95-ro",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path.."/weapons/sbplanes/tu95/r1.png" },
					{ texture = path.."/weapons/sbplanes/tu95/r2.png" },
					{ texture = path.."/weapons/sbplanes/tu95/r3.png" },
					{ texture = path.."/weapons/sbplanes/tu95/r4.png" },
					duration = 0.04,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	
	
})
table.insert(Sprites,
{
	Name = "tu95-base",
	States =
	{
		Normal = { Frames = { { texture = path.."/weapons/sbplanes/tu95/tu95.png" }, mipmap = true, }, },
	},
}


)




table.insert(Projectiles,--手动防空
{
	
		SaveName = "AAmg",
		
		ProjectileType = "mortar",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		ProjectileMass = 1,
		ProjectileDrag = 0,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 150,
		BeamTileRate = 0.02,
		Impact = 1000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 6,
		MaxAgeUnderwater = 4,
		AntiAirDamage = 16,
		WeaponDamageBonus = 4,
	
		SpeedIndicatorFactor = 0.25, --0.25

		TrailEffect = path.."/effects/AAmg_trail.lua",
		DamageMultiplier =
	{
		{ SaveName = "default", Direct = 1, },
	},
		Effects =
		{
			ImpactDevice =
			{
				["sandbags"] = "effects/bullet_sandbag_hit.lua",
			},
			Impact =
			{
			["firebeam"] = path.."/effects/flak_explode.lua",
			
			["default"] = "effects/impact_heavy.lua",
			},
			Deflect =
			{
				
				["default"] = "effects/impact_heavy.lua",
			},
			
		
		},
})

table.insert(Projectiles,--手动防空
{
	
		SaveName = "decoy1",
		
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/decoy1.png",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = false,
		ProjectileMass = 6,
		ProjectileDrag = 0,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 250,
		BeamTileRate = 0.02,
		Impact = 10000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20,
		MaxAgeUnderwater = 3,
		AntiAirDamage = 20,
		AntiAirHitpoints =60,
		WeaponDamageBonus = 0,
	
		SpeedIndicatorFactor = 0.25, --0.25

		TrailEffect = path.."/effects/sap152.lua",
		DamageMultiplier =
	{
		{ SaveName = "default", Direct = 1, },
	},
		Effects =
		{
			ImpactDevice =
			{
				["sandbags"] = "effects/bullet_sandbag_hit.lua",
			},
			Impact =
			{
			["firebeam"] = path.."/effects/flak_explode.lua",
			
			["default"] = "effects/impact_heavy.lua",
			},
			Deflect =
			{
				
				["default"] = "effects/impact_heavy.lua",
			},
			
		
		},
})


pltail = FindProjectile("sbpp_f16")
if pltail then
sbnthk4 = DeepCopy(dznthk)
sbnthk4.SaveName = "sbnthk4"	
sbnthk4.dlc2_Bombs = nil
sbnthk4.AntiAirHitpoints = dznthk.AntiAirHitpoints*2.2
sbnthk4.crewtype=2
sbnthk4.sb_planes =
{
	elevator = 42000, --strength of elevator
	thrust = 7000, --thrust strength
	throttle_min = 0.6, --minimum throttle multiplier
	throttle_max = 1.4, --maximum throttle multiplier
	lift_multiplier = 4.3, --lift strength multiplier
	lift_max_speed = 3000, --max speed for lift_multiplier
	advanced_physics = true, --keep it on true (if false, throttle and lift physics are disabled)
	trail_effect = pltail.sb_planes.trail_effect, --trail effect to use. This will use append '1.lua' for team 1 and 't2.lua' for team2. In this case: 'trail_jet1.lua', and 'trail_jet2.lua'.
	RCS = 5, --radar cross section m2. (currently unused. but here in-case i add radar.)
	weapon1 = 
	{
		projectile = "AAmg", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = 800, --distance from center of plane to spawn projectile
		speed = 10000, --speed of projectile relative to plane
		count = 16, --amount of shots (like RoundsEachBurst)
		perround = 4,
		period = 0.05, --period between shots (like RoundPeriod)
		timer = 2, --reload time of weapon
		stddev = 0.03, --like FireStdDev
		effect = "mods/weapon_pack/effects/fire_20mmcannon.lua", --like FireEffect
		name = "20mm AA-AutoCannon", --name to display on bottom right hud.
	},
	weapon2 = 
	{
		projectile = "dzhevbomb", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = -700, --distance from center of plane to spawn projectile
		speed = 1000, --speed of projectile relative to plane
		count = 4, --amount of shots (like RoundsEachBurst)
		period = 0.3, --period between shots (like RoundPeriod)
		timer = 80, --reload time of weapon
		stddev = 0.001, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "[Plasma]--Heavy APHE Bomb", --name to display on bottom right hud.
	},
	weapon3 = 
	{
		--same vars as above
	},
}

sbnthk4.Projectile= 
{
	Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite ="mods/dlc2/weapons/media/nighthawk_jet.dds",
			Pivot = {-0.05, 0.0},
			Scale = 2.4,
		}
}
table.insert(Projectiles, sbnthk4)

sbtopl = DeepCopy(topl)	
sbtopl.SaveName = "sbtopl"
sbtopl.dlc2_Bombs = nil
sbtopl.Gravity = 971
sbtopl.sb_planes =
{
	elevator = 40000, --strength of elevator
	thrust = 22000, --thrust strength
	throttle_min = 0.6, --minimum throttle multiplier
	throttle_max = 1.4, --maximum throttle multiplier
	lift_multiplier = 4.2, --lift strength multiplier
	lift_max_speed = 3200, --max speed for lift_multiplier
	advanced_physics = true, --keep it on true (if false, throttle and lift physics are disabled)
	trail_effect = pltail.sb_planes.trail_effect, --trail effect to use. This will use append '1.lua' for team 1 and 't2.lua' for team2. In this case: 'trail_jet1.lua', and 'trail_jet2.lua'.
	RCS = 5, --radar cross section m2. (currently unused. but here in-case i add radar.)
	weapon1 = 
	{
		projectile = "AAmg", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = 800, --distance from center of plane to spawn projectile
		speed = 10000, --speed of projectile relative to plane
		count = 16, --amount of shots (like RoundsEachBurst)
		perround = 2,
		period = 0.025, --period between shots (like RoundPeriod)
		timer = 2, --reload time of weapon
		stddev = 0.03, --like FireStdDev
		effect = "mods/weapon_pack/effects/fire_20mmcannon.lua", --like FireEffect
		name = "20mm AA-AutoCannon", --name to display on bottom right hud.
	},
	weapon2 = 
	{
		projectile = "dztopl", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = -700, --distance from center of plane to spawn projectile
		speed = 300, --speed of projectile relative to plane
		count = 1, --amount of shots (like RoundsEachBurst)
		period = 0.01, --period between shots (like RoundPeriod)
		timer = 20, --reload time of weapon
		stddev = 0.001, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "Torpedo", --name to display on bottom right hud.
	},
	weapon3 = 
	{
		projectile = "dzsmokeb", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = -700, --distance from center of plane to spawn projectile
		speed = 200, --speed of projectile relative to plane
		count = 12, --amount of shots (like RoundsEachBurst)
		period = 0.12, --period between shots (like RoundPeriod)
		timer = 30, --reload time of weapon
		stddev = 0.001, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "Smokebomb", --name to display on bottom right hud.
	},
}
table.insert(Projectiles, sbtopl)

sbtopl4 = DeepCopy(sbtopl)
sbtopl4.SaveName = "sbtopl4"
sbtopl4.ProjetileSprite = nil
sbtopl4.sb_planes.thrust = 18000 
sbtopl4.sb_planes.weapon3 = nil
sbtopl4.AntiAirHitpoints = sbtopl.AntiAirHitpoints*2.2
sbtopl4.thcrew = true
sbtopl4.sb_planes.weapon2 =
{
	projectile = "dztopl", --projectile savename to fire
	rotation = 0.0, --angle to fire the projectile in radians
	distance = -700, --distance from center of plane to spawn projectile
	speed = 300, --speed of projectile relative to plane
	count = 5, --amount of shots (like RoundsEachBurst)
	period = 0.3, --period between shots (like RoundPeriod)
	timer = 40, --reload time of weapon
	stddev = 0.001, --like FireStdDev
	effect = nil, --like FireEffect
	--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
	name = "Torpedo", --name to display on bottom right hud.

}
sbtopl4.Projectile= 
{
	Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite ="mods/dlc2/weapons/media/thunderbolt_jet.dds",
			PivotOffset = {0, 0},
			Scale = 2.4,
		}
}


table.insert(Projectiles, sbtopl4)
sbrcpl = DeepCopy(topl)	
sbrcpl.SaveName = "sbrcpl"
sbrcpl.dlc2_Bombs = nil
sbrcpl.Gravity = 971
sbrcpl.AntiAirHitpoints = topl.AntiAirHitpoints*1.4
sbrcpl.sb_planes =
{
	elevator = 60000, --strength of elevator
	thrust = 20000, --thrust strength
	throttle_min = 0.1, --minimum throttle multiplier
	throttle_max = 1.4, --maximum throttle multiplier
	lift_multiplier = 6.0, --lift strength multiplier
	lift_max_speed = 4000, --max speed for lift_multiplier
	advanced_physics = true, --keep it on true (if false, throttle and lift physics are disabled)
	trail_effect = pltail.sb_planes.trail_effect, --trail effect to use. This will use append '1.lua' for team 1 and 't2.lua' for team2. In this case: 'trail_jet1.lua', and 'trail_jet2.lua'.
	RCS = 5, --radar cross section m2. (currently unused. but here in-case i add radar.)
	weapon3 = 
	{
		projectile = "decoy1", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = -700, --distance from center of plane to spawn projectile
		speed = -2000, --speed of projectile relative to plane
		count = 4, --amount of shots (like RoundsEachBurst)
		period = 0.2, --period between shots (like RoundPeriod)
		perround = 4,
		timer = 20, --reload time of weapon
		stddev = 0.1, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "Decoybomb", --name to display on bottom right hud.
	},
    weapon1 = 
	{
		projectile = "cannon", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = 800, --distance from center of plane to spawn projectile
		speed = 10000, --speed of projectile relative to plane
		count = 1, --amount of shots (like RoundsEachBurst)
		period = 0.4, --period between shots (like RoundPeriod)
		timer = 16, --reload time of weapon
		stddev = 0.01, --like FireStdDev
		effect = "effects/fire_cannon.lua", --like FireEffect
		name = "120mm Semi-Auto Cannon", --name to display on bottom right hud.
	},
	weapon2 = 
	{
		projectile = "sbrc", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = 600, --distance from center of plane to spawn projectile
		speed = 2000, --speed of projectile relative to plane
		count = 12, --amount of shots (like RoundsEachBurst)
		period = 0.18, --period between shots (like RoundPeriod)
		timer = 30, --reload time of weapon
		stddev = 0.001, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "NP-H HeavyRocket Round", --name to display on bottom right hud.
	},
}
table.insert(Projectiles, sbrcpl)

sbaapl = DeepCopy(topl)	
sbaapl.SaveName = "sbaapl"
sbaapl.dlc2_Bombs = nil
sbaapl.AntiAirHitpoints = topl.AntiAirHitpoints*1.6
sbaapl.Gravity = 971



sbaapl.sb_planes =
{
	elevator = 60000, --strength of elevator
	thrust = 26000, --thrust strength
	throttle_min = 0.1, --minimum throttle multiplier
	throttle_max = 1.4, --maximum throttle multiplier
	lift_multiplier = 6.0, --lift strength multiplier
	lift_max_speed = 4000, --max speed for lift_multiplier
	advanced_physics = true, --keep it on true (if false, throttle and lift physics are disabled)
	trail_effect = pltail.sb_planes.trail_effect, --trail effect to use. This will use append '1.lua' for team 1 and 't2.lua' for team2. In this case: 'trail_jet1.lua', and 'trail_jet2.lua'.
	RCS = 5, --radar cross section m2. (currently unused. but here in-case i add radar.)
    weapon1 = 
	{
		projectile = "AAmg", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = 800, --distance from center of plane to spawn projectile
		speed = 10000, --speed of projectile relative to plane
		count = 16, --amount of shots (like RoundsEachBurst)
		perround = 3,
		period = 0.025, --period between shots (like RoundPeriod)
		timer = 2, --reload time of weapon
		stddev = 0.03, --like FireStdDev
		effect = "mods/weapon_pack/effects/fire_20mmcannon.lua", --like FireEffect
		name = "20mm AA-AutoCannon", --name to display on bottom right hud.
	},
	weapon3 = 
	{
		projectile = "decoy1", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = -1200, --distance from center of plane to spawn projectile
		speed = -3600, --speed of projectile relative to plane
		count = 4, --amount of shots (like RoundsEachBurst)
		period = 0.2, --period between shots (like RoundPeriod)
		perround = 4,
		timer = 20, --reload time of weapon
		stddev = 0.1, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "Decoybomb", --name to display on bottom right hud.
	},
	weapon2 = 
	{
		projectile = "dzsmoke", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = -2000, --distance from center of plane to spawn projectile
		speed = -100, --speed of projectile relative to plane
		count = 60, --amount of shots (like RoundsEachBurst)
		period = 0.06, --period between shots (like RoundPeriod)
		timer = 42, --reload time of weapon
		stddev = 0.001, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "Smoke", --name to display on bottom right hud.
	},
}
table.insert(Projectiles, sbaapl)
end
ac130 = FindProjectile("sbpp_ac130")

tu95 = DeepCopy(topl)	
tu95.SaveName = "tu95"
tu95.dlc2_Bombs = nil
tu95.Gravity =800
tu95.ProjectileSplashDamage =160
tu95.ProjectileSplashMaxForce = 100000
tu95.ProjectileSplashDamageMaxRadius = 300
tu95.AntiAirHitpoints=ac130.AntiAirHitpoints*1.8
tu95.ProjectileShootDownRadius = ac130.ProjectileShootDownRadius*1.5
tu95.Effects.Impact = ac130.Effects.Impact
tu95.Projectile= 
{
	Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite ="tu95-base",
			PivotOffset = {0, 0},
			Scale = 2.4,
			ChildrenInFront =
			{
				{
					Name = "ro1",
					Angle = -90,
					Pivot = { 0.01, -0.165 },
					PivotOffset = { 0, 0 },
					Sprite = "tu95-ro",
				},
				{
					Name = "ro2",
					Angle = -90,
					Pivot = { 0.02, -0.239 },
					PivotOffset = { 0, 0 },
					Sprite = "tu95-ro",
				},
			},
		}
}
tu95.sb_planes =
{
	elevator = 20000,
	thrust = 13000,
	throttle_min = 0.6,
	throttle_max = 1.8,
	lift_multiplier = 5.3,
	lift_max_speed = 2500,
	advanced_physics = true, --keep it on true (if false, throttle and lift physics are disabled)
	trail_effect = ac130.sb_planes.trail_effect, --trail effect to use. This will use append '1.lua' for team 1 and 't2.lua' for team2. In this case: 'trail_jet1.lua', and 'trail_jet2.lua'.
	RCS = 7, --radar cross section m2. (currently unused. but here in-case i add radar.)
	weapon1 = 
	{
		projectile = "AAmg", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = 800, --distance from center of plane to spawn projectile
		speed = 8000, --speed of projectile relative to plane
		count = 48, --amount of shots (like RoundsEachBurst)
		perround = 4,
		period = 0.1125, --period between shots (like RoundPeriod)
		timer = 20, --reload time of weapon
		stddev = 0.03, --like FireStdDev
		aimed = true,
		max_aim = 0,
		min_aim = 3.14,
		effect = "mods/weapon_pack/effects/fire_20mmcannon.lua", --like FireEffect
		name = "37mm AA-AutoCannon", --name to display on bottom right hud.
	},
	weapon2 = 
	{
		projectile = "fab9000", --projectile savename to fire
		rotation = 0.0, --angle to fire the projectile in radians
		distance = -700, --distance from center of plane to spawn projectile
		speed = 300, --speed of projectile relative to plane
		count = 1, --amount of shots (like RoundsEachBurst)
		period = 0.01, --period between shots (like RoundPeriod)
		timer = 70, --reload time of weapon
		stddev = 0.001, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "FAB-9000", --name to display on bottom right hud.
	},
	weapon3 = 
	{
		projectile = "bomb", --projectile savename to fire
		rotation = 3.1415926/4, --angle to fire the projectile in radians
		distance = 600, --distance from center of plane to spawn projectile
		speed = 200, --speed of projectile relative to plane
		count = 20, --amount of shots (like RoundsEachBurst)
		period = 0.12, --period between shots (like RoundPeriod)
		timer = 40, --reload time of weapon
		stddev = 0.001, --like FireStdDev
        effect = nil, --like FireEffect
		--effect = path .. "/effects/vulcan_fire.lua", --like FireEffect,todo
		name = "Bomblet 20x", --name to display on bottom right hud.
	},
}
table.insert(Projectiles, tu95)