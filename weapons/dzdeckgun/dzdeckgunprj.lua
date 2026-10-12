--主炮组系列弹药开始
local pntmultiplier = 0.8
table.insert(Projectiles,--76（130）
{
		SaveName = "76",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/76.png",
		DrawBlurredProjectile = false,
		
		ProjectileMass = 9,
		ProjectileDrag = 1.3,
		ProjectileIncendiary = false,
		--IncendiaryRadius = 160,
		--IncendiaryRadiusHeated = 140,
		IgnitesBackgroundMaterials = false,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 80,
		Impact = 30000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 70.0,
		WeaponDamageBonus = -20.0,
		ProjectileSplashDamage = 40.0,
		ProjectileSplashDamageMaxRadius = 50.0,
		AntiAirDamage = 12,
		AntiAirHitpoints = 5,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = "effects/sniper_trail.lua",

		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 16000, Penetrate = 30000 },
			["door"] = { Reflect = 16000, Penetrate = 30000 },
			["shield"] = { Reflect = 99999999, Penetrate = 99999999 },
		},
		DamageMultiplier =
		{
			{ SaveName = "bracing", Direct = 1.25, Splash = 1.25 },
			{ SaveName = "sandbags", Direct = 0.2, Splash = 0.2 },
			{ SaveName = "armor", Direct = 0.1, Splash = 0.0 },
		},
})
table.insert(Projectiles,--1高
{
	SaveName = "g130HE",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/130a.png",
		DrawBlurredProjectile = false,
		Gravity = 360,
		ProjectileMass = 12,
		ProjectileDrag = 1.0,
		ProjectileIncendiary = true,
		IncendiaryRadius = 60,
		IncendiaryRadiusHeated = 20,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 60.0,
		--WeaponDamageBonus = 0.0,
		PenetrationDamage = 60,
		ProjectileSplashDamage = 60.0,
		ProjectileSplashDamageMaxRadius = 90.0,
		ProjectileSplashMaxForce = 80000,
		AntiAirDamage = 3,
		AntiAirHitpoints = 10,
		SpeedIndicatorFactor =0.001,
		TrailEffect = path.."/effects/he152.lua",
		AntiAirMaxClaims =
		{
			{ Time = 2, Claims = 1 },
			{ Time = 0, Claims = 2 },
		},
		Effects =
		{
			Impact =
			{
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.6 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
})
SAPexplode = { Effect =  "effects/impact_heavy.lua", Projectile =nil, Splash = true, Terminate = true, }
sap130 = { Effect = nil, Projectile = { Count = 1, Type = "g130SAP",  StdDev = 0 }, Offset = -10, Terminate = true, }
table.insert(Projectiles,--1穿
{
		SaveName = "g130SAPb",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/130sap.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 14.0,
		ProjectileDrag = 0.8,
		Gravity = 300,
		CanBeShotDown = true,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 40,
		AntiAirHitpoints = 12,
		SpeedIndicatorFactor = 0.1,
		AntiAirMaxClaims =
		{
			{ Time = 2, Claims = 1 },
			{ Time = 0, Claims = 2 },
		},
		TrailEffect = path.."/effects/sap152.lua",
		Effects =
		{
			Impact =
			{
				["default"] = sap130,
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
	},
})
table.insert(Projectiles,--1半穿
{
		SaveName = "g130SAP",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/130sap.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 12.0,
		ProjectileDrag = 1.0,
		Gravity = 400,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		--IncendiaryRadius = 20,
		--IncendiaryRadiusHeated = 60,
		CanBeShotDown = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,-----------------
		ProjectileSplashDamage = 100.0,
		ProjectileSplashDamageMaxRadius = 120.0,
		PenetrationDamage = 850,
		PenetrationSpeedMultiplier = 0.75,
		DeviceSplashDamage = 300,
		DeviceSplashDamageMaxRadius = 100,
		AntiAirDamage = 600,
		AntiAirHitpoints = 1,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 0.2,
		TrailEffect = path.."/effects/sap152.lua",
		AntiAirMaxClaims =
		{
			{ Time = 2, Claims = 1 },
			{ Time = 0, Claims = 2 },
		},
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
				t300 = SAPexplode,
			},
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 16000, Penetrate = 54001 },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 16000, Penetrate = 52001},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			--["shield"] = { Reflect = 0, Penetrate = 100},
			["armour"] = { Reflect = 8000, Penetrate = 24001 },
			["door"] = { Reflect = 8000, Penetrate = 24001 },
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 0.0 },
		{ SaveName = "armor", Direct = 1, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 1000, Splash = 1 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})
b130aa = { Effect = path.."/effects/130b.lua", Projectile = { Count = 16, Type = "g130b",Splash = true,StdDev = 0.7,Speed = 4000}, Offset = -160, Terminate = true, }
b152aa = { Effect = path.."/effects/152b.lua", Projectile = { Count = 36, Type = "g130b",Splash = true,StdDev = 1.0,Speed = 4000}, Offset = -160, Terminate = true, }
table.insert(Projectiles,--130
{
		SaveName = "g130",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/130.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 8,
		ProjectileDrag = 0.0,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = true,
		ProjectileThickness = 20.0,
		ProjectileShootDownRadius = 280,
		CollisionLookaheadDist = 180,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,
		WeaponDamageBonus = 10.0,
		MaxAge = 4.2,
		AntiAirDamage = 0,
		SpeedIndicatorFactor =5.0,
		Gravity = 0,
		CanBeShotDown = false,
		TrailEffect = path.."/effects/130.lua",

		Effects =
		{
			Impact =
			{
				
				["default"] = b130aa,
			},	
			Age = 
			{

				t5000 = b130aa,
			}
			
		},
})
table.insert(Projectiles,--破片
{
	
	SaveName = "g130b",
	ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.2,
	ProjectileDrag = 0.021,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 6,
	ProjectileShootDownRadius = 80,
	Impact = 10000,
	ImpactMomentumLimit = 2000,
	ProjectileDamage = 6.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	MinAge = 0.3,
	MaxAge = 0.3,
	AntiAirDamage = 14,
	DrawFromAge = 2/FrameRate,

		TrailEffect = "weapons/media/bullet",	
		Effects =
		{
			ImpactDevice =
			{
				["sandbags"] = "effects/bullet_sandbag_hit.lua",
			},
			Impact =
			{
				["device"] = "effects/impact_light.lua",
				["foundations"] = "effects/ground_hit.lua",
				["rocks01"] = "effects/ground_hit.lua",
				["bracing"] = "effects/bullet_bracing_hit.lua",
				["backbracing"] = "effects/bullet_bracing_hit.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["shield"] = "effects/impact_light.lua",
				["default"] = "effects/impact_light.lua",
			},
			Deflect =
			{
				["bracing"] = "effects/bullet_bracing_hit.lua",
				["backbracing"] = "effects/bullet_bracing_hit.lua",
				["armour"] = "effects/bullet_armor_ricochet.lua",
				["door"] = "effects/bullet_armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["default"] = "effects/bullet_bracing_hit.lua",
			},
			DamageMultiplier =
			{
				{ SaveName = "terminalwarhead", Direct = 0.2, Splash = 0.0 },
			},
		},
	
})
table.insert(Projectiles,--130
{
		SaveName = "dzdeckgunAA",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AA152.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 10,
		ProjectileDrag = 0,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = true,
		ProjectileThickness = 30.0,
		ProjectileShootDownRadius = 240,
		CollisionLookaheadDist = 180,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 10.0,
		WeaponDamageBonus = 10.0,
		MaxAge = 4.0,
		AntiAirDamage = 0,
		SpeedIndicatorFactor =5.0,
		Gravity = 300,
		
		TrailEffect = path.."/effects/152aa.lua",

		Effects =
		{
			Impact =
			{
				
				["default"] = b152aa,
			},	
			Age = 
			{

				t4000 = b152aa,
			}
			
		},
})
table.insert(Projectiles,--3高
{
		SaveName = "leoHE",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/leoHE.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 80.0,
		ProjectileDrag = 0,
		Gravity = 100,
		ProjectileIncendiary = true,
		IncendiaryRadius = 320,
		IncendiaryRadiusHeated = 80,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 30.0,
		ProjectileShootDownRadius = 90,
		Impact = 100000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 410.0,
		WeaponDamageBonus = 0.0,
		--PenetrationDamage = 600,
		ProjectileSplashDamage = 280.0,
		ProjectileSplashDamageMaxRadius = 340.0,
		ProjectileSplashMaxForce = 600000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 400,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/leoHE.lua",
		Effects =
		{
			Impact =
			{
				["default"] = "effects/missile_structure_hit.lua",
				
			},
		},
		
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
		
})
table.insert(Projectiles,--城防炮
{
		SaveName = "defgun",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/defgun.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 80.0,
		ProjectileDrag = 0,
		Gravity = 190,
		ProjectileIncendiary = true,
		IncendiaryRadius = 200,
		IncendiaryRadiusHeated = 10,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 30.0,
		ProjectileShootDownRadius = 90,
		Impact = 100000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 200.0,
		WeaponDamageBonus = 110.0,
		--PenetrationDamage = 600,
		ProjectileSplashDamage = 200.0,
		ProjectileSplashDamageMaxRadius = 220.0,
		ProjectileSplashMaxForce = 700000,
		AntiAirDamage = 200,
		AntiAirHitpoints = 160,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/leoHE.lua",
		Effects =
		{
			Impact =
			{
				["default"] = path.."/effects/defgun_hit.lua",
				
			},
		},
		
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
		{ SaveName = "hss", Direct = 1, Splash = 2 },
		{ SaveName = "bghss", Direct = 1, Splash = 2 },
	},
		
})
table.insert(Projectiles,--3高
{
		SaveName = "dzdeckgunHE5",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE508.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 73.0,
		ProjectileDrag = 4.7,
		Gravity = 320,
		ProjectileIncendiary = true,
		IncendiaryRadius = 280,
		IncendiaryRadiusHeated = 160,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 90,
		Impact = 100000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 410.0,
		WeaponDamageBonus = 100.0,
		--PenetrationDamage = 600,
		ProjectileSplashDamage = 220.0,
		ProjectileSplashDamageMaxRadius = 260.0,
		ProjectileSplashMaxForce = 540000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 120,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/he.lua",
		Effects =
		{
			Impact =
			{
				["default"] = "effects/missile_structure_hit.lua",
				
			},
		},
		
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
		
})
table.insert(Projectiles,--3高
{
		SaveName = "dzdeckgunHE4",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE457.png",
		DrawBlurredProjectile = false,
		Gravity = 320,
		ProjectileMass = 68,
		ProjectileDrag = 3.8,
		ProjectileIncendiary = true,
		IncendiaryRadius = 280,
		IncendiaryRadiusHeated = 160,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 70,
		Impact = 100000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 410.0,
		WeaponDamageBonus = 100.0,
		--PenetrationDamage = 500,
		ProjectileSplashDamage = 190.0,
		ProjectileSplashDamageMaxRadius = 230.0,
		ProjectileSplashMaxForce = 360000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 96,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/he.lua",
		Effects =
		{
			Impact =
			{
				["default"] = "effects/missile_structure_hit.lua",
				
			},
		},
		
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
		
})

table.insert(Projectiles,--3高
{
		SaveName = "dzdeckgunHE3",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE406.png",
		DrawBlurredProjectile = false,
		Gravity = 420,
		ProjectileMass = 40,
		ProjectileDrag = 2.6,
		ProjectileIncendiary = true,
		IncendiaryRadius = 240,
		IncendiaryRadiusHeated = 100,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 410.0,
		WeaponDamageBonus = 100.0,
		--PenetrationDamage = 500,
		ProjectileSplashDamage = 190.0,
		ProjectileSplashDamageMaxRadius = 230.0,
		ProjectileSplashMaxForce = 360000,
		AntiAirDamage = 360,
		AntiAirHitpoints = 80,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/he.lua",
		
		
		Effects =
		{
			Impact =
			{
				["default"] = "effects/missile_structure_hit.lua",
				
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
		
})
table.insert(Projectiles,--3高
{
		SaveName = "dzdeckgunHE38",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE380.png",
		DrawBlurredProjectile = false,
		Gravity = 400,
		ProjectileMass = 34,
		ProjectileDrag = 2.2,
		ProjectileIncendiary = true,
		IncendiaryRadius = 210,
		IncendiaryRadiusHeated = 80,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 48,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 350.0,
		--WeaponDamageBonus = 100.0,
		--PenetrationDamage = 410,
		ProjectileSplashDamage = 160.0,
		ProjectileSplashDamageMaxRadius = 190.0,
		ProjectileSplashMaxForce = 300000,
		AntiAirDamage = 360,
		AntiAirHitpoints = 60,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/he.lua",
		
		
		Effects =
		{
			Impact =
			{
				["default"] = "effects/missile_structure_hit.lua",
				
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
		
})
table.insert(Projectiles,--21高
{
		SaveName = "dzdeckgunHE21",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE203.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 1.9,
		Gravity = 420,
		ProjectileIncendiary = true,
		IncendiaryRadius = 150,
		IncendiaryRadiusHeated = 80,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 36,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 140.0,
		WeaponDamageBonus = 100.0,
		--PenetrationDamage = 320,
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 180.0,
		ProjectileSplashMaxForce = 280000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 60,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/ap220.lua",

		
		Effects =
		{
			Impact =
			{
				
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
})
table.insert(Projectiles,--2高
{
		SaveName = "dzdeckgunHE2",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE203.png",
		DrawBlurredProjectile = false,
		Gravity = 420,
		ProjectileMass = 22,
		ProjectileDrag = 1.6,
		ProjectileIncendiary = true,
		IncendiaryRadius = 180,
		IncendiaryRadiusHeated = 80,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 30,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 240.0,
		WeaponDamageBonus = 100.0,
		--PenetrationDamage = 320,
		ProjectileSplashDamage = 140.0,
		ProjectileSplashDamageMaxRadius = 190.0,
		ProjectileSplashMaxForce = 280000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 60,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/he.lua",

		
		Effects =
		{
			Impact =
			{
				
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.3 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.4 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },
	},
})
local he2 = FindProjectile("dzdeckgunHE2")
local he2m = DeepCopy(he2)
he2m.SaveName = "kuangdunHE"
he2m.ProjectileDrag = 0
table.insert(Projectiles,he2m)

table.insert(Projectiles,--1高改
{
		SaveName = "dzdeckgunHEm",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE152.png",
		DrawBlurredProjectile = false,
		Gravity = 420,
		ProjectileMass = 16,
		ProjectileDrag = 2,
		ProjectileIncendiary = true,
		IncendiaryRadius = 120,
		IncendiaryRadiusHeated = 60,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 30,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 40.0,
		WeaponDamageBonus = 0.0,
		--PenetrationDamage = 200,
		ProjectileSplashDamage = 80.0,
		ProjectileSplashDamageMaxRadius = 120.0,
		ProjectileSplashMaxForce = 160000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 16,
		SpeedIndicatorFactor =0.001,
		MaxAge = 8,
		TrailEffect = path.."/effects/he152.lua",
		Effects =
		{
			Impact =
			{
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},
			Age =
			{
				t7999 = "mods/dlc2/effects/impact_turret.lua",
			}
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.2 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.25 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },

	},
})

table.insert(Projectiles,--1高
{
		SaveName = "dzdeckgunHE",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/HE152.png",
		DrawBlurredProjectile = false,
		Gravity = 420,
		ProjectileMass = 16,
		ProjectileDrag = 1.4,
		ProjectileIncendiary = true,
		IncendiaryRadius = 120,
		IncendiaryRadiusHeated = 60,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 140.0,
		WeaponDamageBonus = 0.0,
		--PenetrationDamage = 200,
		ProjectileSplashDamage = 100.0,
		ProjectileSplashDamageMaxRadius = 120.0,
		ProjectileSplashMaxForce = 160000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 40,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/he152.lua",
		Effects =
		{
			Impact =
			{
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.5, Splash = 0.2 },
		{ SaveName = "dzar_door", Direct = 0.6, Splash = 0.25 },
		{ SaveName = "armor", Direct = 1.0, Splash = 0.2 },
		{ SaveName = "armour", Direct = 0.5, Splash = 0.5 },
		{ SaveName = "door", Direct = 0.6, Splash = 0.6 },

	},
})
table.insert(Projectiles,--1 电磁脉冲
{
		SaveName = "dzdeckgunEMP3",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/EMP406.png",
		DrawBlurredProjectile = false,
		EnemyCanTeleport = false,
		Gravity = 420,
		ProjectileMass = 40,
		ProjectileDrag = 2.6,
		ProjectileIncendiary = true,
		IgnitesBackgroundMaterials = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 250.0,
		WeaponDamageBonus = 100.0,
		ProjectileSplashDamage = 60.0,
		ProjectileSplashDamageMaxRadius = 80.0,
		EMPRadius = 400,
		EMPOffset = 50,
		EMPDuration = 20,
		EMPSensitivity = 0,
		AntiAirDamage = 400,
		AntiAirHitpoints = 96,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/emp_trail.lua",

		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
			},
			
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
})
table.insert(Projectiles,--1 电磁脉冲
{
		SaveName = "dzdeckgunEMP2",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/EMP203.png",
		DrawBlurredProjectile = false,
		EnemyCanTeleport = false,
		Gravity = 420,
		ProjectileMass = 22,
		ProjectileDrag = 1.6,
		ProjectileIncendiary = true,
		IgnitesBackgroundMaterials = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 30,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 250.0,
		WeaponDamageBonus = 100.0,
		ProjectileSplashDamage = 60.0,
		ProjectileSplashDamageMaxRadius = 80.0,
		EMPRadius = 300,
		EMPOffset = 50,
		EMPDuration = 8,
		EMPSensitivity = 0,
		AntiAirDamage = 200,
		AntiAirHitpoints = 72,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/emp_trail.lua",

		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
			},
			
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
})
table.insert(Projectiles,--1 电磁脉冲
{
		SaveName = "dzdeckgunEMP1",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/EMP152.png",
		DrawBlurredProjectile = false,
		EnemyCanTeleport = false,
		Gravity = 420,
		ProjectileMass = 16,
		ProjectileDrag = 1.4,
		ProjectileIncendiary = true,
		IgnitesBackgroundMaterials = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 250.0,
		WeaponDamageBonus = 100.0,
		ProjectileSplashDamage = 60.0,
		ProjectileSplashDamageMaxRadius = 80.0,
		EMPRadius = 200,
		EMPOffset = 50,
		EMPDuration = 2,
		EMPSensitivity = 0,
		AntiAirDamage = 100,
		AntiAirHitpoints = 60,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/emp_trail.lua",

		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
			},
			
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
})
APexplode = { Effect =  "effects/impact_heavy.lua", Projectile =nil, Splash = true, Terminate = true, }
b2b1 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAP",  StdDev = 0 }, Offset = -120, Terminate = true, }
b2b2 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAP2", StdDev = 0 }, Offset = -120, Terminate = true, }
b2b21 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAP21",  StdDev = 0 }, Offset = -120, Terminate = true, }
b2b3 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAP3",  StdDev = 0 }, Offset = -120, Terminate = true, }
b2b3HEV = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAPHEV3",  StdDev = 0 }, Offset = -120, Terminate = true, }
b2b38 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAP38",  StdDev = 0 }, Offset = -120, Terminate = true, }
b2b4 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAP4",  StdDev = 0 }, Offset = -120, Terminate = true, }
b2b5 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunAP5",  StdDev = 0 }, Offset = -120, Terminate = true, }

	
table.insert(Projectiles,--5穿 
{
		SaveName = "dzdeckgunAP5",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP508.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 73.0,
		ProjectileDrag = 4.7,
		Gravity = 320,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 500.0,-----------------
		ProjectileSplashDamage = 200.0,
		ProjectileSplashDamageMaxRadius = 110.0,
		PenetrationDamage = 3800,
		PenetrationSpeedMultiplier = 0.98,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 4,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
				
				
			},
			Age = 
			{
				
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 74000*pntmultiplier, Penetrate = 94001*pntmultiplier },
			["default"] = { Reflect = 0*pntmultiplier, Penetrate = 2000*pntmultiplier },
			["dzar_door"] = { Reflect = 72000*pntmultiplier, Penetrate = 92001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["armour"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
			["door"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 1.0 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 1.0 },
		{ SaveName = "reactor", Direct = 0.2, Splash = 0.0 },
		{ SaveName = "armor", Direct = 0.7, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "hss", Direct = 0.1, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})	
table.insert(Projectiles,--4穿 ----------todo
{
		SaveName = "dzdeckgunAP4",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP457.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 64.0,
		ProjectileDrag = 3.8,
		Gravity = 320,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 400.0,-----------------
		ProjectileSplashDamage = 180.0,
		ProjectileSplashDamageMaxRadius = 90.0,
		PenetrationDamage = 3500,
		PenetrationSpeedMultiplier = 0.97,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 4,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 74000*pntmultiplier, Penetrate = 94001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 72000*pntmultiplier, Penetrate = 92001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["armour"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
			["door"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 1.0 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 1.0 },
		{ SaveName = "reactor", Direct = 0.2, Splash = 0.0 },
		{ SaveName = "armor", Direct = 0.7, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "hss", Direct = 0.1, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})	
table.insert(Projectiles,--3重穿
{
		SaveName = "dzdeckgunAPHEV3",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/APHEV406.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 60.0,
		ProjectileDrag = 4.0,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 800.0,-----------------
		ProjectileSplashDamage = 160.0,
		ProjectileSplashDamageMaxRadius = 80.0,
		PenetrationDamage = 2800,
		PenetrationSpeedMultiplier = 0.96,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 3,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
				
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 34000*pntmultiplier, Penetrate = 64001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 32000*pntmultiplier, Penetrate = 62001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["armour"] = { Reflect = 17000*pntmultiplier, Penetrate = 27001*pntmultiplier },
			["door"] = { Reflect = 17000*pntmultiplier, Penetrate = 27001*pntmultiplier },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 0.5 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 0.5 },
		{ SaveName = "reactor", Direct = 0.2, Splash = 0.0 },
		{ SaveName = "armor", Direct = 0.7, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "hss", Direct = 0.1, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "dzdeckgun3", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun32", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun43", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun52", Direct = 0.4, Splash = 0.6 },
	},
})	
table.insert(Projectiles,--3穿
{
		SaveName = "dzdeckgunAP3",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP406.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 40.0,
		ProjectileDrag = 2.6,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 380.0,-----------------
		ProjectileSplashDamage = 160.0,
		ProjectileSplashDamageMaxRadius = 80.0,
		PenetrationDamage = 2600,
		PenetrationSpeedMultiplier = 0.96,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 3,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
				
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 64000*pntmultiplier, Penetrate = 84001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 62000*pntmultiplier, Penetrate = 82001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["armour"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
			["door"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 0.5 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 0.5 },
		{ SaveName = "reactor", Direct = 0.2, Splash = 0.0 },
		{ SaveName = "armor", Direct = 0.7, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "hss", Direct = 0.1, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "dzdeckgun3", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun32", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun43", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun52", Direct = 0.4, Splash = 0.6 },
	},
})	
table.insert(Projectiles,--3穿
{
		SaveName = "dzdeckgunAP38",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP380.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 34.0,
		ProjectileDrag = 2.1,
		Gravity = 400,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 350.0,-----------------
		ProjectileSplashDamage = 140.0,
		ProjectileSplashDamageMaxRadius = 80.0,
		PenetrationDamage = 2000,
		PenetrationSpeedMultiplier = 0.95,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 3,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
				
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 80000*pntmultiplier, Penetrate = 100001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 76000*pntmultiplier, Penetrate = 96001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["armour"] = { Reflect = 45000*pntmultiplier, Penetrate = 45001*pntmultiplier },
			["door"] = { Reflect = 45000*pntmultiplier, Penetrate = 45001*pntmultiplier },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 0.5 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 0.5 },
		{ SaveName = "reactor", Direct = 0.2, Splash = 0.0 },
		{ SaveName = "armor", Direct = 0.7, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "hss", Direct = 0.1, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "dzdeckgun3", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun32", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun43", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun52", Direct = 0.4, Splash = 0.6 },
	},
})	
table.insert(Projectiles,--2穿
{
		SaveName = "dzdeckgunAP2",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP203.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 22.0,
		ProjectileDrag = 1.6,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,-----------------
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		PenetrationDamage = 1600,
		PenetrationSpeedMultiplier = 0.88,
		WeaponDamageBonus = -100,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 2,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
				
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 38000*pntmultiplier, Penetrate = 48001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 1000 },
			["dzar_door"] = { Reflect = 36000*pntmultiplier, Penetrate = 46001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["shield"] = { Reflect = 0, Penetrate = 1},
			["armour"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
			["door"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 0.5 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 0.5 },
		{ SaveName = "reactor", Direct = 0.2, Splash = 0.0 },
		{ SaveName = "armor", Direct = 0.9, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.1, Splash = 1 },
		{ SaveName = "hss", Direct = 0.15, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "dzdeckgun3", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun32", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun43", Direct = 0.4, Splash = 0.6 },
		{ SaveName = "dzdeckgun52", Direct = 0.4, Splash = 0.6 },
	},
	
})		
table.insert(Projectiles,--21穿
{
		SaveName = "dzdeckgunAP21",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP1.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 1.9,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 1000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,-----------------
		WeaponDamageBonus = 400.0,
		ProjectileSplashDamage = 190.0,
		ProjectileSplashDamageMaxRadius = 80.0,
		PenetrationDamage = 3200,
		PenetrationSpeedMultiplier = 0.96,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 2.8,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap220.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] ="effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
				
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 38000*pntmultiplier, Penetrate = 50001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 1000 },
			["dzar_door"] = { Reflect = 46000*pntmultiplier, Penetrate = 56001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["shield"] = { Reflect = 0, Penetrate = 1},
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 0.5 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 0.5 },
		{ SaveName = "reactor", Direct = 0.2, Splash = 0.0 },
		{ SaveName = "armor", Direct = 0.8, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "hss", Direct = 0.1, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})		
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAP",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP152.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 16.0,
		ProjectileDrag = 1.4,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 160.0,-----------------
		ProjectileSplashDamage = 80.0,
		ProjectileSplashDamageMaxRadius = 40.0,
		PenetrationDamage = 1200,
		PenetrationSpeedMultiplier = 0.8,
		WeaponDamageBonus = -100,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 1.4,
		dzTag = 
		{
			"AP",	
		},
		TrailEffect = path.."/effects/ap152.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
				["hss"] = "effects/armor_destroy.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
			Age = 
			{
				
			}
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 38000*pntmultiplier, Penetrate = 48001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 46000*pntmultiplier, Penetrate = 56001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["shield"] = { Reflect = 0, Penetrate = 1},
			["armour"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
			["door"] = { Reflect = 30000*pntmultiplier, Penetrate = 40001*pntmultiplier },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dznc", Direct = 1, Splash = 0.5 },
		{ SaveName = "dznc_door", Direct = 1, Splash = 0.5 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 0.0 },
		{ SaveName = "armor", Direct = 1, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "hss", Direct = 0.1, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "dzdeckgun3", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzdeckgun32", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzdeckgun43", Direct = 0.3, Splash = 0.6 },
		{ SaveName = "dzdeckgun52", Direct = 0.3, Splash = 0.6 },
	},
})
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAP5b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP508.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 73.0,
		ProjectileDrag = 4.7,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 40.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b5,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 124000, Penetrate = 124001 },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 118000, Penetrate = 118001},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAP4b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP457.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 68.0,
		ProjectileDrag = 4.2,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 40.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b4,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 124000*pntmultiplier, Penetrate = 124001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 118000*pntmultiplier, Penetrate = 118001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAPHEV3b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/APHEV406.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 60.0,
		ProjectileDrag = 8.0,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,-----------------
		ProjectileSplashDamage = 40.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b3HEV,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 124000*pntmultiplier, Penetrate = 124001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 118000*pntmultiplier, Penetrate = 118001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAP3b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP406.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 40.0,
		ProjectileDrag = 2.6,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 30.0,-----------------
		ProjectileSplashDamage = 15.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b3,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 34000*pntmultiplier, Penetrate = 64001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 32000*pntmultiplier, Penetrate = 62001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	

table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAP38b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP380.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 34.0,
		ProjectileDrag = 2.1,
		Gravity = 400,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 28.0,-----------------
		ProjectileSplashDamage = 15.0,
		ProjectileSplashDamageMaxRadius = 50.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b38,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 124000*pntmultiplier, Penetrate = 124001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 118000*pntmultiplier, Penetrate = 118001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAP2b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP203.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 22.0,
		ProjectileDrag = 1.6,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,-----------------
		ProjectileSplashDamage = 15.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b2,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 90000*pntmultiplier, Penetrate = 90001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 88000*pntmultiplier, Penetrate = 88001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAP21b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP1.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 24.0,
		ProjectileDrag = 3.2,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap220.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b21,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 78000*pntmultiplier, Penetrate = 78001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 76000*pntmultiplier, Penetrate = 76001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunAPb",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/AP152.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 16.0,
		ProjectileDrag = 1.4,
		Gravity = 420,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 15.0,-----------------
		ProjectileSplashDamage = 15.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 240,
		SpeedIndicatorFactor = 0.1,
		dzTag = 
		{
			"APcap",	
		},
		TrailEffect = path.."/effects/ap152.lua",
		Effects =
		{
			Impact =
			{
				["default"] = b2b1,
				["dznc"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
				["dznc_door"] = {Effect = "effects/armor_destroy.lua" , Terminate = true,Splash = true},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			MomentumThreshold =
		{
			["dzar"] = { Reflect = 78000*pntmultiplier, Penetrate = 78001*pntmultiplier },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 76000*pntmultiplier, Penetrate = 76001*pntmultiplier},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = { Reflect = 0, Penetrate = 999999999},
		},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
		{ SaveName = "dznc", Direct = 20, Splash = 20 },
		{ SaveName = "dznc_door", Direct = 20, Splash = 20 },
	},
})	
sap1 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunSAP",  StdDev = 0 }, Offset = -10, Terminate = true, }
sap2 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunSAP2",  StdDev = 0 }, Offset = -10, Terminate = true, }
sap38 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunSAP38",  StdDev = 0 }, Offset = -10, Terminate = true, }
sap3 = { Effect = nil, Projectile = { Count = 1, Type = "dzdeckgunSAP3",  StdDev = 0 }, Offset = -10, Terminate = true, }
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunSAP3b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP406.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 40,
		ProjectileDrag = 2.6,
		Gravity = 420,
		CanBeShotDown = true,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 220,
		SpeedIndicatorFactor = 0.1,
		
		TrailEffect = path.."/effects/sap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = sap3,
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
	},
})
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunSAP38b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP406.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 40,
		ProjectileDrag = 2.6,
		Gravity = 400,
		CanBeShotDown = true,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 18.0,-----------------
		ProjectileSplashDamage = 18.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 200,
		SpeedIndicatorFactor = 0.1,
		
		TrailEffect = path.."/effects/sap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = sap38,
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
	},
})
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunSAP2b",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP203.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 22,
		ProjectileDrag = 1.6,
		Gravity = 420,
		CanBeShotDown = true,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 180,
		SpeedIndicatorFactor = 0.1,
		
		TrailEffect = path.."/effects/sap.lua",
		Effects =
		{
			Impact =
			{
				["default"] = sap2,
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
	},
})
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunSAPb",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP152.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 16.0,
		ProjectileDrag = 1.4,
		Gravity = 420,
		CanBeShotDown = true,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 140,
		SpeedIndicatorFactor = 0.1,
		
		TrailEffect = path.."/effects/sap152.lua",
		Effects =
		{
			Impact =
			{
				["default"] = sap1,
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
	},
})
table.insert(Projectiles,--1穿
{
		SaveName = "dzdeckgunSAPcanb",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP152.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 16.0,
		ProjectileDrag = 0,
		CanBeShotDown = true,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,-----------------
		ProjectileSplashDamage = 20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		AntiAirDamage = 600,
		AntiAirHitpoints = 140,
		SpeedIndicatorFactor = 0.1,
		
		TrailEffect = path.."/effects/sap152.lua",
		Effects =
		{
			Impact =
			{
				["default"] = sap2,
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
		},
		DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 3, Splash = 3 },
	},
})
table.insert(Projectiles,--3半穿
{
		SaveName = "dzdeckgunSAP3",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP406.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 40,
		ProjectileDrag = 2.6,
		Gravity = 500,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		--IncendiaryRadius = 20,
		--IncendiaryRadiusHeated = 60,
		CanBeShotDown = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 500.0,-----------------
		ProjectileSplashDamage = 200.0,
		ProjectileSplashDamageMaxRadius = 210.0,
		PenetrationDamage = 1650,
		PenetrationSpeedMultiplier = 0.85,
		DeviceSplashDamage = 300,
		DeviceSplashDamageMaxRadius = 100,
		AntiAirDamage = 600,
		AntiAirHitpoints = 1,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 0.3,
		TrailEffect = path.."/effects/sap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Age = 
			{
				t80 = SAPexplode,
			},
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 20000, Penetrate = 90001 },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 19000, Penetrate = 88001},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["armour"] = { Reflect = 18000, Penetrate = 46001 },
			["door"] = { Reflect = 18000, Penetrate = 46001 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 0.0 },
		{ SaveName = "armor", Direct = 1, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 1000, Splash = 1 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})
table.insert(Projectiles,--3半穿
{
		SaveName = "dzdeckgunSAP38",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP380.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 34.0,
		ProjectileDrag = 2.1,
		Gravity = 480,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		--IncendiaryRadius = 20,
		--IncendiaryRadiusHeated = 60,
		CanBeShotDown = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 500.0,-----------------
		ProjectileSplashDamage = 200.0,
		ProjectileSplashDamageMaxRadius = 210.0,
		PenetrationDamage = 1450,
		PenetrationSpeedMultiplier = 0.85,
		DeviceSplashDamage = 300,
		DeviceSplashDamageMaxRadius = 100,
		AntiAirDamage = 600,
		AntiAirHitpoints = 1,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 0.3,
		TrailEffect = path.."/effects/sap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Age = 
			{
				t80 = SAPexplode,
			},
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 20000, Penetrate = 80001 },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 14000, Penetrate = 78001},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["armour"] = { Reflect = 14000, Penetrate = 40001 },
			["door"] = { Reflect = 14000, Penetrate = 40001 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 0.0 },
		{ SaveName = "armor", Direct = 1, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 1000, Splash = 1 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})
table.insert(Projectiles,--2半穿
{
		SaveName = "dzdeckgunSAP2",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP203.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 22,
		ProjectileDrag = 1.6,
		Gravity = 500,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		--IncendiaryRadius = 20,
		--IncendiaryRadiusHeated = 60,
		CanBeShotDown = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 400.0,-----------------
		ProjectileSplashDamage = 160.0,
		ProjectileSplashDamageMaxRadius = 170.0,
		PenetrationDamage = 1250,
		PenetrationSpeedMultiplier = 0.8,
		DeviceSplashDamage = 300,
		DeviceSplashDamageMaxRadius = 100,
		AntiAirDamage = 600,
		AntiAirHitpoints = 1,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 0.3,
		TrailEffect = path.."/effects/sap.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Age = 
			{
				t80 = SAPexplode,
			},
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 10000, Penetrate = 50001 },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 14000, Penetrate = 58001},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["shield"] = { Reflect = 0, Penetrate = 1},
			["armour"] = { Reflect = 16000, Penetrate = 42001 },
			["door"] = { Reflect = 16000, Penetrate = 42001 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 0.0 },
		{ SaveName = "armor", Direct = 1, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 1000, Splash = 1 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})
table.insert(Projectiles,--1半穿
{
		SaveName = "dzdeckgunSAP",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/SAP152.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 16.0,
		ProjectileDrag = 1.4,
		Gravity = 500,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		--IncendiaryRadius = 20,
		--IncendiaryRadiusHeated = 60,
		CanBeShotDown = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,-----------------
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 140.0,
		PenetrationDamage = 850,
		PenetrationSpeedMultiplier = 0.75,
		DeviceSplashDamage = 300,
		DeviceSplashDamageMaxRadius = 100,
		AntiAirDamage = 600,
		AntiAirHitpoints = 1,
		SpeedIndicatorFactor = 0.1,
		MaxAge = 0.3,
		TrailEffect = path.."/effects/sap152.lua",
		Effects =
		{
			Impact =
			{
				["device"] = "effects/impact_heavy.lua",
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/impact_heavy.lua",
				["default"] = "effects/impact_heavy.lua",
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Age = 
			{
				t80 = SAPexplode,
			},
		},
		MomentumThreshold =
		{
			["dzar"] = { Reflect = 10000, Penetrate = 50001 },
			["default"] = { Reflect = 0, Penetrate = 2000 },
			["dzar_door"] = { Reflect = 14000, Penetrate = 58001},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
			["shield"] = { Reflect = 0, Penetrate = 1},
			["armour"] = { Reflect = 16000, Penetrate = 42001 },
			["door"] = { Reflect = 16000, Penetrate = 42001 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 0.0 },
		{ SaveName = "armor", Direct = 1, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.07, Splash = 1 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "shield", Direct = 1000, Splash = 1 },
		{ SaveName = "Airtightarmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "Airtightdoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "Fliter", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "regenerativedoor", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracing", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativebracingbg", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativearmour", Direct = 0.12, Splash = 1 },
		{ SaveName = "REGregenerativedoor", Direct = 0.12, Splash = 1 },
	},
})



local flakexp = "effects/bullet_armor_hit.lua"
--"mods/weapon_pack/effects/flak_explode.lua"
table.insert(Projectiles,--ap破片
{
		SaveName = "apshrapnel",
		ProjectileType = "mortar",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		ProjectileMass = 10,
		ProjectileDrag = 0,
		Gravity = 500,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = false,
		--IncendiaryRadius = 20,
		--IncendiaryRadiusHeated = 60,
		CanBeShotDown = false,
		DestroyShields = false,
		DeflectedByShields = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		AlwaysPassDevices = true,
		ProjectileDamage = 10.0,-----------------
		ProjectileSplashDamage = 1,
		ProjectileSplashDamageMaxRadius = 60,
		PenetrationDamage = 560,
		PenetrationSpeedMultiplier = 0.75,
		AntiAirDamage = 10,
		AntiAirHitpoints = 1,
		SpeedIndicatorFactor = 0.1,
		TrailEffect = "effects/sniper_trail.lua",
		Effects =
		{
			Impact =
			{
				["device"] = {Effect = flakexp , Terminate = false,Splash = true},
				
				
				["default"] = {Effect = flakexp , Terminate = false,Splash = true},
				["dzar"] = {Effect = flakexp , Terminate = true,Splash = false},
				["dzar_door"] = {Effect = flakexp , Terminate = true,Splash = false},
				["dznc"] = {Effect = flakexp , Terminate = true,Splash = false},
				["dznc_door"] =  {Effect = flakexp , Terminate = true,Splash = false},
			},	
			Deflect =
			{
				["armour"] = "effects/armor_destroy.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Penetrate =
			{
				["bracing"] =  "effects/bracing_destroy.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["dzar"] = "effects/armor_destroy.lua",
				["dzar_door"] = "effects/armor_destroy.lua",
			},
			Age = 
			{
				t140 = {Effect = flakexp , Terminate = true,Splash = true},
			},
		},
		DamageMultiplier =
	{
		{ SaveName = "dzar", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "dzar_door", Direct = 0.1, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 0.0 },
		{ SaveName = "armor", Direct = 1, Splash = 0.1 },
		{ SaveName = "bracing", Direct = 0.1, Splash = 0 },
		{ SaveName = "hss", Direct = 0.1, Splash = 0 },
		{ SaveName = "armour", Direct = 0.12, Splash = 1 },
		{ SaveName = "ammo_pmagazine_large", Direct = 4, Splash = 1 },
		{ SaveName = "ammo_pmagazine_small", Direct = 4, Splash = 1 },
		{ SaveName = "resourcegen", Direct = 3, Splash = 30 },
	},
})




--主炮组系列弹药结束
local HEVWPs = {"hjcf","dztp3","dzelc","dzelch","dzhardpoint","plm2","plm1","leo"}
local weakDevice = {"ammo_pmagazine_large","ammo_pmagazine_small","resourcegen"}
local smallDevice = {"dzmg","flakold","flak","shotgun","machinegun","minigun","sniper","sniper2","hdzmg","tieqiong","dzmgcom","g130","g130a"}
local APs = {
	["dzdeckgunAP"] = 0,
	["dzdeckgunAP2"] = 0,
	["dzdeckgunAP3"] = 4, --4
	["dzdeckgunAP38"] = 3,--3
	["dzdeckgunAP4"] = 6,--6
	["dzdeckgunAP5"] = 8,--8
	["dzdeckgunAP21"] = 0,
	["dzdeckgunAPHEV3"] = 6,
}

local HEs = {"dzdeckgunHE","dzdeckgunHE21","dzdeckgunHE2","dzdeckgunHE38","dzdeckgunHE3","dzdeckgunHE4","dzdeckgunHE5"}

local laser = FindProjectile("laser")

for k,o in pairs(APs) do
	local v = FindProjectile(k)
	v.Effects.Impact["device"] = {Effect = "effects/impact_heavy.lua" , Terminate = false,Splash = true}
	v.Effects.Impact["dznc"] = {Effect = "effects/impact_heavy.lua" , Terminate = true,Splash = true}
	v.Effects.Impact["dznc_door"] = {Effect = "effects/impact_heavy.lua" , Terminate = true,Splash = true}
	v.AlwaysPassDevices = true
	v.ProjectileSplashDamage = v.ProjectileSplashDamage*1.3
	v.DeviceDamageBonus = -(v.ProjectileDamage)*0.8
	v.WeaponDamageBonus = -(v.ProjectileDamage)*0.8
	
	for i,j in pairs(weakDevice) do
		table.insert(v.DamageMultiplier,
		{
			SaveName = j , Direct = 2,Splash = 2
		})	
	end
	if o > 0 then
		v.Effects.Impact["device"] = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Terminate = false,Splash = false}
		v.Effects.Impact["hss"] = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Splash = false}
		v.Effects.Impact["dzar"] = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40,Splash = false}
		v.Effects.Impact["dzar_door"] = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Splash = false}
		v.Effects.Impact["default"] = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Splash = false}
		v.Effects.Impact["bracing"] = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Splash = false}
		v.Effects.Impact["armour"] = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Splash = false}
		v.Effects.Age = {t400 = {Effect = "effects/impact_heavy.lua" ,Projectile = { Count = o, Type = "apshrapnel", Speed = 3000, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Terminate = true,Splash = true}}
	end
	for i,j in pairs(HEVWPs) do
		table.insert(v.DamageMultiplier,
		{
			SaveName = j , Direct = 1.4,Splash = 1
		})
		v.Effects.Impact[j] = {Effect = "effects/impact_heavy.lua" , Terminate = false,Splash = false}
		v.Effects.Penetrate[j] = {Effect = "effects/impact_heavy.lua" , Terminate = false,Splash = false}
	end
	
	v.Effects.Impact["armor"] = {Effect = "effects/impact_heavy.lua" , Terminate = true,Splash = true}
	table.insert(laser.DamageMultiplier,{ SaveName = k.."b", Direct = 0, Splash = 0, AntiAir = 0 })
	local vb = FindProjectile(k.."b")
	for m,n in pairs(smallDevice) do
		table.insert(v.DamageMultiplier,
		{
			SaveName = n , Direct = 0,Splash = 0
		})
		v.Effects.Impact[n] = {Effect = "effects/impact_heavy.lua" , Terminate = false,Splash = false}
		v.Effects.Penetrate[n] = {Effect = "effects/impact_heavy.lua" , Terminate = false,Splash = false}
		
		table.insert(vb.DamageMultiplier,
		{
			SaveName = n , Direct = 0,Splash = 0
		})
		
	end
end

for k,v in pairs(HEs) do
	local he = FindProjectile(v)
	he.MaxAgeUnderwater = 1.2
	if he.DamageMultiplier == nil then
		he.DamageMultiplier = {}
	end
	table.insert(he.DamageMultiplier,
	{ SaveName = "hss", Direct = 0.8, Splash = 0.7 }
	)
	table.insert(he.DamageMultiplier,
	{ SaveName = "bghss", Direct = 0.7, Splash = 0.7 }
	)
	table.insert(he.DamageMultiplier,
	{ SaveName = "dznc", Direct = 0.7, Splash = 0.7 }
	)
	
	local hep = DeepCopy(he)
	hep.SaveName = he.SaveName.."_p"
	hep.PenetrationDamage = 700+100*k
	table.insert(hep,PenetrationDamage)
	hep.ExplodeOnTouch = false
	hep.AntiAirHitpoints = he.AntiAirHitpoints *1.4
	hep.ProjectileSplashDamage = he.ProjectileSplashDamage*1.4
	hep.ProjectileSplashDamageMaxRadius = he.ProjectileSplashDamageMaxRadius*1.4
	hep.TrailEffect = path.."/effects/he_p.lua"
	hep.MomentumThreshold =
		{
			["default"] = { Reflect = 0, Penetrate = 2000000 },
		},
	--Log(hep.SaveName)
	table.insert(Projectiles,hep)
end

local EMPs = {"dzdeckgunEMP1","dzdeckgunEMP2","dzdeckgunEMP3",}
for k,v in pairs(EMPs) do
	local emp = FindProjectile(v)
	emp.ExplodeOnTouch = false
	if not emp.DamageMultiplier then
		emp.DamageMultiplier = {}
	end
	table.insert(emp.DamageMultiplier,
	{ SaveName = "dzshield", Direct = 22.0, Splash = 0.0 , AntiAir = 22, }
	)
end
