t2rocket = { Effect = nil, Projectile = { Count = 1, Type = "t2rocket", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
t3rocket = { Effect = path.."/effects/s1.lua", Projectile = { Count = 1, Type = "t3rocket", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
t4rocket = { Effect = path.."/effects/s1.lua", Projectile = { Count = 1, Type = "t4rocket", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
t5rocket = { Effect = nil, Projectile = { Count = 1, Type = "t5rocket", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
terminalwarhead = { Effect = path.."/effects/hypers_ex.lua", Projectile = { Count = 1, Type = "terminalwarhead", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
table.insert(Projectiles,--超音速
{
		SaveName = "hypersonic",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag =  12,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,
		ProjectileSplashDamage = 140.0,
		ProjectileSplashDamageMaxRadius = 350.0,
		ProjectileSplashMaxForce = 80000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.25,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 200,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/hjcf/hd0.png",
				Pivot = { 0, 0.35 },

				
			}
		},
	

		Missile =
		{
			ThrustAngleExtent = 0,
			ErraticAngleExtentStdDev = 0,
			ErraticAngleExtentMax = 0,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 150000,
			RocketThrust = 0,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/mushroom_cloud.lua",
				["antiair"] = "effects/mushroom_cloud.lua",
				["foundations"] = "effects/mushroom_cloud.lua",
				["rocks01"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
				["default"] = "effects/mushroom_cloud.lua",
			},
			Deflect =
			{
				["armour"] = "effects/mushroom_cloud.lua",
				["door"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
			},
			Age =
			{
				t700 = t2rocket,
			},
		},
})
table.insert(Projectiles,--超2
{
		SaveName = "t2rocket",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 64,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,
		ProjectileSplashDamage = 140.0,
		ProjectileSplashDamageMaxRadius = 350.0,
		ProjectileSplashMaxForce = 80000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.25,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 200,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/hjcf/hd0.png",
				Pivot = { 0, 0.35 },
				
				
			}
		},

	
	TrailEffect = path.."/effects/lantch_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 3.0,
			ErraticAngleExtentStdDev = 0,
			ErraticAngleExtentMax = 0,
			MaxSteerPerSecond = 120,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 105000,
			RocketThrust = 240000,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/mushroom_cloud.lua",
				["antiair"] = "effects/mushroom_cloud.lua",
				["foundations"] = "effects/mushroom_cloud.lua",
				["rocks01"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
				["default"] = "effects/mushroom_cloud.lua",
			},
			Deflect =
			{
				["armour"] = "effects/mushroom_cloud.lua",
				["door"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
			},
			Age =
			{
				t3200 = t5rocket,
			},
		
		},
			
		
})
table.insert(Projectiles,--超4
{
		SaveName = "t5rocket",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 32,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1200.0,
		ProjectileSplashDamage = 360.0,
		ProjectileSplashDamageMaxRadius = 400.0,
		ProjectileSplashMaxForce = 10000000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.25,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 200,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/hjcf/hd1.png",
				Pivot = { 0, 0.35 },
				
				
			}
		},

	
		TrailEffect = path.."/effects/lantch_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 15,
			ErraticAngleExtentStdDev = 0,
			ErraticAngleExtentMax = 0,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 50000,
			RocketThrust = 400000,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "effects/mushroom_cloud.lua",
				["antiair"] = "effects/mushroom_cloud.lua",
				["foundations"] = "effects/mushroom_cloud.lua",
				["rocks01"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
				["default"] = "effects/mushroom_cloud.lua",
			},
			Deflect =
			{
				["armour"] = "effects/mushroom_cloud.lua",
				["door"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
			},
			Age =
			{
				t700 = terminalwarhead,
			},
		
		},
			
		
})
table.insert(Projectiles,--超5
{
		SaveName = "terminalwarhead",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 40.0,
		ProjectileDrag =0,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,
		EnemyCanTeleport = false,
		ProjectileThickness = 10.0,
		ProjectileShootDownRadius = 10,
		ProjectileIncendiary = true,
		IncendiaryRadius = 500,
		IncendiaryRadiusHeated = 400,
		Impact = 12000000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 1200.0,
		ProjectileSplashDamage = 360.0,
		ProjectileSplashDamageMaxRadius = 400.0,
		ProjectileSplashMaxForce = 10000000,
		SpeedIndicatorFactor = 0.05,
		CanBeShotDown = true,
		MaxAge = 60,
		EMPSensitivity = 6,
		EMPMissileProbabilityOfCircling = 0.35,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 300,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/hjcf/hd.png",
				Pivot = { 0, 0.35 },
				
				
			}
		},
		TrailEffect = path.."/effects/dz_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 10,
			ErraticAngleExtentStdDev = 0,
			ErraticAngleExtentMax = 0,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 600000,
			RocketThrust = 700000,
			CruiseTargetDistance = 20000,
			CruiseTargetDuration = 10,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},
		Effects =
		{
			Impact =
			{
				["device"] = path.."/effects/hyper_mushroom_cloud.lua",
				["antiair"] =  path.."/effects/hyper_mushroom_cloud.lua",
				["foundations"] =  path.."/effects/hyper_mushroom_cloud.lua",
				["rocks01"] = path.."/effects/hyper_mushroom_cloud.lua",
				["shield"] =  path.."/effects/hyper_mushroom_cloud.lua",
				["default"] =  path.."/effects/hyper_mushroom_cloud.lua",
			},
			Deflect =
			{
				["armour"] = "effects/mushroom_cloud.lua",
				["door"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
			},
			
		},
})
normalturn = { Effect = nil, Projectile = { Count = 1, Type = "turn", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
nooff = { Effect = nil, Projectile = { Count = 1, Type = "nooff", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
table.insert(Projectiles,--垂发常规
{
		SaveName = "hjcfnormal",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag =  12,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,
		ProjectileSplashDamage = 150.0,
		ProjectileSplashDamageMaxRadius = 350.0,
		ProjectileSplashMaxForce = 80000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.25,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 140,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "objects/projectiles/missile/missile.tga",
				Pivot = { 0, 0.35 },

				
			}
		},
	

		Missile =
		{
			ThrustAngleExtent = 0,
			ErraticAngleExtentStdDev = 0,
			ErraticAngleExtentMax = 0,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 100000,
			RocketThrust = 0,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},

		Effects =
		{
			Impact =
			{
				["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Deflect =
			{
				["armour"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["door"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Age =
			{
				t700 = normalturn,
			},
		},
})
table.insert(Projectiles,--超3
{
		SaveName = "rlsnormal",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 0.5,
		DisableShields = true,
		EnemyCanTeleport = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0.0,
		ProjectileSplashDamage =20.0,
		ProjectileSplashDamageMaxRadius = 60.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 8,
		EMPMissileProbabilityOfCircling = 0.5,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 24,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "objects/projectiles/missile/missile.tga",
				Pivot = { 0, 0.35 },
				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.5 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
				},
				
			}
		},

	
	TrailEffect = path.."/effects/normal_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 7,
			ErraticAngleExtentStdDev = 0.1,
			ErraticAngleExtentMax = 0.1,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 40000,
			RocketThrust = 16000,
			CruiseTargetDistance = 8000,
			CruiseTargetDuration = 0.5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},
		Effects =
		{
			Impact =
			{
				["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Deflect =
			{
				["armour"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["door"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Age =
			{
				t700 = normalturn,
			},
		},
})


table.insert(Projectiles,--超3
{
		SaveName = "turn",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 56,
		DisableShields = true,
		EnemyCanTeleport = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 160.0,
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 220.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 8,
		EMPMissileProbabilityOfCircling = 0.5,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 64,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "objects/projectiles/missile/missile.tga",
				Pivot = { 0, 0.35 },
				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.5 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
				},
				
			}
		},

	
	TrailEffect = path.."/effects/normal_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 6,
			ErraticAngleExtentStdDev = 1,
			
			MaxSteerPerSecond = 20,
			MaxSteerPerSecondErratic = 1,
			ErraticAnglePeriodMean = 20,
			ErraticAnglePeriodStdDev = 0.1,
			LaunchThrust = 40000,
			RocketThrust = 200000,
			RocketThrustChange = 0,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = 0.5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 1,
		},
		Effects =
		{
			Impact =
			{
				["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Deflect =
			{
				["armour"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["door"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Age =
			{
				t12000 = nooff,
			},
		},
})
table.insert(Projectiles,--超3
{
		SaveName = "nooff",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 0,
		DisableShields = true,
		DeflectedByShields = false,
		EnemyCanTeleport = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 300.0,
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 220.0,
		ProjectileSplashMaxForce = 80000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.25,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 32,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = "objects/projectiles/missile/missile.tga",
				Pivot = { 0, 0.35 },
				
				
			}
		},

	
	
		Missile =
		{
			ThrustAngleExtent = 7,
			ErraticAngleExtentStdDev = 0.1,
			ErraticAngleExtentMax = 0.1,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 200000,
			RocketThrust = 0,
			CruiseTargetDistance = 8000,
			CruiseTargetDuration = 0.5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},
		Effects =
		{
			Impact =
			{
				["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Deflect =
			{
				["armour"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["door"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
		},
})
table.insert(Projectiles,--火箭
{
		SaveName = "spaceship",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 80,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Gravity= 0,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0.0,
		ProjectileSplashDamage = 0.0,
		ProjectileSplashDamageMaxRadius = 0.0,
		ProjectileSplashMaxForce = 80000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.25,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 80,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path .. "/weapons/media/spaceship.png",
				Pivot = { 0, 0.35 },
				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 2 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0.2, 2 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
					{
						Name = "Flame",
						Angle = 0,
						Offset = { -0.2, 2 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_tail",
					},
				},
				
			}
		},

	
	TrailEffect = path.."/effects/spaceship_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 0.2,
			ErraticAngleExtentStdDev = 0,
			ErraticAngleExtentMax = 0,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 105000,
			RocketThrust = 120000,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},

		Effects =
		{
			Impact =
			{
				["default"] = nil,
			},
			Deflect =
			{
				["armour"] = "effects/mushroom_cloud.lua",
				["door"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
			},
			
		
		},
			
		
})
---------------------------------------------------------------------------cruise missile
cm3 = { Effect = "effects/shield_destroy.lua", Projectile = { Count = 1, Type = "cm3", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 0, }

table.insert(Projectiles,
{
		SaveName = "cm2",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 40,
		DisableShields = true,
		EnemyCanTeleport = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 450.0,
		ProjectileSplashDamage = 180.0,
		ProjectileSplashDamageMaxRadius = 400.0,
		ProjectileSplashMaxForce = 80000,
		SpeedIndicatorFactor = 0.05,
		EMPSensitivity = 8,
		Gravity= 600,
		EMPMissileProbabilityOfCircling = 0.5,
		FlipSpriteFacingLeft = true,
		AntiAirHitpoints = 60,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path.."/weapons/hjcf/cm2",
				Pivot = { 0, 0.35 },
				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.5 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = path.."/weapons/hjcf/cmflame.png",
				
					},
				},
				
			}
		},

	
	TrailEffect = path.."/effects/cm1_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 7,
			ErraticAngleExtentStdDev = 0.1,
			ErraticAngleExtentMax = 0.1,
			MaxSteerPerSecond = 80,
			MaxSteerPerSecondErratic = 1,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 80000,
			RocketThrust = 100000,
			CruiseTargetDistance = 8000,
			CruiseTargetDuration = 0.5,
			TargetRearOffsetDistance = 160000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},
		Effects =
		{
			Impact =
			{
				["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["antiair"] = cm3,
				["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Age =
			{
				t60000 = cm3,
			},
		},
})
table.insert(Projectiles,
{
		SaveName = "cm3",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 5.0,
		ProjectileDrag = 56,
		DisableShields = true,
		EnemyCanTeleport = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 6,
		Impact = 120000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 450.0,
		ProjectileSplashDamage = 180.0,
		ProjectileSplashDamageMaxRadius = 400.0,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		EMPSensitivity = 8,
		EMPMissileProbabilityOfCircling = 0.5,
		FlipSpriteFacingLeft = true,
		AntiAirHitpoints = 60,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path.."/weapons/hjcf/cm3",
				Pivot = { 0, 0.35 },
				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.7 },
						Pivot = { 0, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = path.."/weapons/hjcf/cmflame.png",
					},
				},
				
			}
		},

	
	TrailEffect = path.."/effects/cm2_trail.lua",
		Missile =
		{
			ThrustAngleExtent = 20,
			ErraticAngleExtentStdDev = 0.1,
			ErraticAngleExtentMax = 0.1,
			MaxSteerPerSecond = 150,
			MaxSteerPerSecondErratic = 250,
			ErraticAnglePeriodMean = 0.5,
			ErraticAnglePeriodStdDev = 0.1,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 80000,
			RocketThrust = 200000,
			CruiseTargetDistance = 8000,
			CruiseTargetDuration = 0.5,
			TargetRearOffsetDistance = 100000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},
		Effects =
		{
			Impact =
			{
				["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			Deflect =
			{
				["armour"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["door"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
				["shield"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
		},
})