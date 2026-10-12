--local keepAge = true
--dztooff = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua", Projectile = { Count = 1, Type = "dzto", StdDev = 0},KeepHitpointLoss = true,Splash = false,Terminate = true,KeepLifespan = true, KeepAge = keepAge,Offset = 10, }
dztoplup = { Effect = nil ,Projectile = { Count = 1, Type = "dztoplup", StdDev = 0},KeepHitpointLoss = true,Splash = false,Terminate = true,KeepLifespan = true, KeepAge = keepAge,Offset = 10, }
pltoon = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua", Projectile = { Count = 1, Type = "dzto", StdDev = 0},KeepHitpointLoss = true,Splash = false,Terminate = true,KeepLifespan = true, KeepAge = keepAge,Offset = 10, }

uuvon = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua", Projectile = { Count = 1, Type = "uuv2", StdDev = 0},Splash = false,Terminate = true, offset = 0,KeepAge = false, }
table.insert(Projectiles,--航空鱼雷
{
	SaveName = "dztopl",
	CollidesWithFriendlyProjectiles = false,
	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 1,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	Impact = 100000,
	ProjectileThickness = 70.0,
	ProjectileShootDownRadius = 70,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 0.0,
	ProjectileSplashDamage = 0.0,
	ProjectileSplashDamageMaxRadius = 0.0,
	ProjectileSplashMaxForce = 0,
	SpeedIndicatorFactor = 0.05,
	CanBeShootDown = true,
	IgnitesBackgroundMaterials = false,
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 0,
	AntiAirHitpoints = 90,
	AntiAirDamage = 10,
	MaxAge = 30,
    MaxAgeUnderwater = 30,
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/dzto/dzto.png",
			Pivot = { 0, 0.35 },
			
		}
	},
	Water_Projectile =
    {
        WaterDrag =  --水中阻力
        {
            drag = 1,  --阻力系数(默认为0)
        },
        ExitWaterGravity = --出水后重力
        {
            multiplier = 10, --重力系数((默认为0))
        },
        Buoyancy =  --浮力
        {
            buoyancy = 1,  --基础浮力(默认为0)
            maxDepth = 300,  --达到最大浮力所需的深度(默认为200)
        },
    },

	TrailEffect = path .. "/effects/rocket_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 20,
		ErraticAngleExtentStdDev = 1,
		MaxSteerPerSecond = 10,
		MaxSteerPerSecondErratic = 15,
		ErraticAnglePeriodMean = 0.2,
		ErraticAnglePeriodStdDev = 0.1,
		LaunchThrust = 5500,
		RocketThrust = 5500,
		RocketThrustChange = 0,
		CruiseTargetDistance = 2000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},
	MomentumThreshold =
		{
			["dzar"] = { Reflect = 0, Penetrate = 99999999 },
			["default"] = { Reflect = 0, Penetrate = 99999999 },
			["dzar_door"] = { Reflect = 0, Penetrate = 99999999},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			--["shield"] = { Reflect = 0, Penetrate = 100},
			["armour"] = { Reflect = 0, Penetrate = 99999999 },
			["door"] = { Reflect = 0, Penetrate = 999999999 },
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
		},
	Effects =
	{
		Impact =
		{
			["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["whitecaps"] = dztoplup,
		},
		Deflect =
		{
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
	},
})

table.insert(Projectiles,--航空鱼雷
{
	SaveName = "dztoplup",
	CollidesWithFriendlyProjectiles = false,
	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 64,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	Impact = 100000,
	ProjectileThickness = 70.0,
	ProjectileShootDownRadius = 70,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 200.0,
	ProjectileSplashDamage = 100.0,
	ProjectileSplashDamageMaxRadius = 240.0,
	ProjectileSplashMaxForce = 850000,
	SpeedIndicatorFactor = 0.05,
	CanBeShootDown = true,
	IgnitesBackgroundMaterials = false,
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 0,
	AntiAirHitpoints = 90,
	AntiAirDamage = 10,
	MaxAge = 30,
    MaxAgeUnderwater = 30,
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/dzto/dzto.png",
			Pivot = { 0, 0.35 },
			
		}
	},
	Water_Projectile =
    {
        WaterDrag =  --水中阻力
        {
            drag = 1,  --阻力系数(默认为0)
        },
        ExitWaterGravity = --出水后重力
        {
            multiplier = 10, --重力系数((默认为0))
        },
        Buoyancy =  --浮力
        {
            buoyancy = 1,  --基础浮力(默认为0)
            maxDepth = 300,  --达到最大浮力所需的深度(默认为200)
        },
    },

	TrailEffect = path .. "/effects/rocket_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 10,
		ErraticAngleExtentStdDev = 1,
		MaxSteerPerSecond = 10,
		MaxSteerPerSecondErratic = 2,
		ErraticAnglePeriodMean = 0.2,
		ErraticAnglePeriodStdDev = 0.1,
		LaunchThrust = 30000,
		RocketThrust = 30000,
		RocketThrustChange = 0,
		CruiseTargetDistance = 2000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},
	MomentumThreshold =
		{
			["dzar"] = { Reflect = 0, Penetrate = 99999999 },
			["default"] = { Reflect = 0, Penetrate = 99999999 },
			["dzar_door"] = { Reflect = 0, Penetrate = 99999999},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			--["shield"] = { Reflect = 0, Penetrate = 100},
			["armour"] = { Reflect = 0, Penetrate = 99999999 },
			["door"] = { Reflect = 0, Penetrate = 999999999 },
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
		},
	Effects =
	{
		Impact =
		{
			["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			
		},
		Deflect =
		{
		},
		Age =
			{
				t3001 = pltoon,
				--t5000 = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
	},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
	},
})

table.insert(Projectiles,--水下鱼雷
{
	SaveName = "dzto",
	CollidesWithFriendlyProjectiles = false,
	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 3,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	Impact = 100000,
	ProjectileThickness = 70.0,
	ProjectileShootDownRadius = 70,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 200.0,
	ProjectileSplashDamage = 100.0,
	ProjectileSplashDamageMaxRadius = 240.0,
	ProjectileSplashMaxForce = 850000,
	SpeedIndicatorFactor = 0.05,
	CanBeShootDown = true,
	IgnitesBackgroundMaterials = false,
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 0,
	AntiAirHitpoints = 70,
	AntiAirDamage = 10,
	MaxAge = 20,
    MaxAgeUnderwater = 20,
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/dzto/dzto.png",
			Pivot = { 0, 0.35 },
			
		}
	},
	Water_Projectile =
    {
        WaterDrag =  --水中阻力
        {
            drag = 1,  --阻力系数(默认为0)
        },
        ExitWaterGravity = --出水后重力
        {
            multiplier = 10, --重力系数((默认为0))
        },
        Buoyancy =  --浮力
        {
            buoyancy = 100,  --基础浮力(默认为0)
            maxDepth = 100,  --达到最大浮力所需的深度(默认为200)
        },
    },

	TrailEffect = path .. "/effects/rocket_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 15,
		ErraticAngleExtentStdDev = 1,
		MaxSteerPerSecond = 60,
		MaxSteerPerSecondErratic = 15,
		ErraticAnglePeriodMean = 0.2,
		ErraticAnglePeriodStdDev = 0.1,
		LaunchThrust = 3000,
		RocketThrust = 3000,
		RocketThrustChange = 0,
		CruiseTargetDistance = 200000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},
	MomentumThreshold =
		{
			["dzar"] = { Reflect = 0, Penetrate = 99999999 },
			["default"] = { Reflect = 0, Penetrate = 99999999 },
			["dzar_door"] = { Reflect = 0, Penetrate = 99999999},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			--["shield"] = { Reflect = 0, Penetrate = 100},
			["armour"] = { Reflect = 0, Penetrate = 99999999 },
			["door"] = { Reflect = 0, Penetrate = 999999999 },
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
		},
	Effects =
	{
		Impact =
		{
			["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			
		},
		Deflect =
		{
		},
		Age =
			{
				t25001 = vanish,
				t25000 = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
	},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
	},
})
table.insert(Projectiles,--重型鱼雷
{
	SaveName = "dzto_3",

	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 60,
	DisableShields = true,
	DeflectedByShields = false,
	CanBeShootDown = true,
	ProjectileIncendiary = true,
	ExplodeOnTouch = true,
	ProjectileThickness = 100,
	ProjectileShootDownRadius = 80,
	Impact = 10000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,

	ProjectileDamage = 200.0,
	ProjectileSplashDamage = 120.0,
	ProjectileSplashDamageMaxRadius = 300.0,
	ProjectileSplashMaxForce = 1000000,

	SpeedIndicatorFactor = 0.05,
	
	EMPSensitivity = 0,
	Gravity = 1,
	AntiAirHitpoints = 120,
	AntiAirDamage = 10,
    MaxAgeUnderwater = 240,
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/dzto/dzto_3",
			Pivot = { 0.0, 0.0 },

		}
	},
	Water_Projectile =
    {
        WaterDrag =  --水中阻力
        {
            drag = 1.8,  --阻力系数(默认为0)
        },
        ExitWaterGravity = --出水后重力
        {
            multiplier = 3, --重力系数((默认为0))
        },
        Buoyancy =  --浮力
        {
            buoyancy = 200,  --基础浮力(默认为0)
            maxDepth = 200,  --达到最大浮力所需的深度(默认为200)
        },
    },

	TrailEffect = path .. "/effects/rocket_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 2,
		ErraticAngleExtentStdDev = 1,
		MaxSteerPerSecond = 10,
		MaxSteerPerSecondErratic = 15,
		ErraticAnglePeriodMean = 0.2,
		ErraticAnglePeriodStdDev = 0.1,
		LaunchThrust = 40000,
		RocketThrust = 64000,
		RocketThrustChange = 0,
		CruiseTargetDistance = 2000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	Effects =
	{
		Impact =
		{
			["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			
		},
		Deflect =
		{
		},
	},
	MomentumThreshold =
		{
			["dzar"] = { Reflect = 0, Penetrate = 99999999 },
			["default"] = { Reflect = 0, Penetrate = 99999999 },
			["dzar_door"] = { Reflect = 0, Penetrate = 99999999},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			--["shield"] = { Reflect = 0, Penetrate = 100},
			["armour"] = { Reflect = 0, Penetrate = 99999999 },
			["door"] = { Reflect = 0, Penetrate = 999999999 },
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
		},
	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
		{ SaveName = "dzshield", Direct = 0.25, Splash = 0.25, AntiAir = 400 },
	},
})
table.insert(Projectiles,--水下核鱼雷
{
	SaveName = "nudzto",

	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 60,
	DisableShields = true,
	DeflectedByShields = false,
	CanBeShootDown = true,
	ProjectileIncendiary = true,
	IncendiaryRadius = 1100,
	IncendiaryRadiusHeated = 200,
	ExplodeOnTouch = true,
	ProjectileThickness = 100,
	ProjectileShootDownRadius = 120,
	Impact = 10000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 600.0,
	ProjectileSplashDamage = 360.0,
	ProjectileSplashDamageMaxRadius = 600.0,
	ProjectileSplashMaxForce = 10000000,
	SpeedIndicatorFactor = 0.05,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 1,
	AntiAirHitpoints = 480,
	AntiAirDamage = 10,
    MaxAgeUnderwater = 240,
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/dzto/nudzto",
			Pivot = { 0.0, 0.0 },

		}
	},
	Water_Projectile =
    {
        WaterDrag =  --水中阻力
        {
            drag = 2,  --阻力系数(默认为0)
        },
        ExitWaterGravity = --出水后重力
        {
            multiplier = 3, --重力系数((默认为0))
        },
        Buoyancy =  --浮力
        {
            buoyancy = 200,  --基础浮力(默认为0)
            maxDepth = 200,  --达到最大浮力所需的深度(默认为200)
        },
    },

	TrailEffect = path .. "/effects/rocket_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 2,
		ErraticAngleExtentStdDev = 1,
		MaxSteerPerSecond = 10,
		MaxSteerPerSecondErratic = 15,
		ErraticAnglePeriodMean = 0.2,
		ErraticAnglePeriodStdDev = 0.1,
		LaunchThrust = 40000,
		RocketThrust = 56000,
		RocketThrustChange = 0,
		CruiseTargetDistance = 2000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	Effects =
	{
		Impact =
		{
			["device"] = "effects/mushroom_cloud.lua",
			["antiair"] ="effects/mushroom_cloud.lua",
			["foundations"] = "effects/mushroom_cloud.lua",
			["rocks01"] = "effects/mushroom_cloud.lua",
			["default"] = "effects/mushroom_cloud.lua",
		},
		Deflect =
		{
		},
	},
	MomentumThreshold =
		{
			["dzar"] = { Reflect = 0, Penetrate = 99999999 },
			["default"] = { Reflect = 0, Penetrate = 99999999 },
			["dzar_door"] = { Reflect = 0, Penetrate = 99999999},
			["dznc"] = { Reflect = 0, Penetrate = 999999999},
			--["shield"] = { Reflect = 0, Penetrate = 100},
			["armour"] = { Reflect = 0, Penetrate = 99999999 },
			["door"] = { Reflect = 0, Penetrate = 999999999 },
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
		},
	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
	},
})
table.insert(Projectiles,-- 水上 鱼雷
{
	SaveName = "uuv1",

	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 20,
	ProjectileDrag = 80,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 4.0,
	ProjectileShootDownRadius = 15,
	Impact = 100000,
	FlipSpriteFacingLeft = true,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 960.0,
	ProjectileSplashDamage = 150.0,
	ProjectileSplashDamageMaxRadius = 200.0,
	ProjectileSplashMaxForce = 750000,
	SpeedIndicatorFactor = 0.05,
	IgnitesBackgroundMaterials = false,
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 1000,
	AntiAirHitpoints = 380,
	AntiAirDamage = 60,
	MinAge = 3.9,
    MaxAge = 4,
    MaxAgeUnderwater = 25,
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/media/uuv.png",
			Pivot = { 0, 0.35 },

		},
	},

	

	Missile =
	{
		ThrustAngleExtent = 0.001,
		ErraticAngleExtentStdDev = 0.1,
		ErraticAngleExtentMax = 0.6,
		MaxSteerPerSecond = 200,
		MaxSteerPerSecondErratic = 0,
		ErraticAnglePeriodMean = 0.00001,
		ErraticAnglePeriodStdDev = 0.000001,
		RocketThrust = 30000,
		RocketThrustChange = 5000,
		ErraticThrust = 1.4,
		CruiseTargetDistance = 0.00001,
		CruiseTargetDuration = 0.00005,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	Effects =
	{
		Impact =
		{
			["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			--["whitecaps"] = uuvon,
		},
		Deflect =
		{
		},
		Age =
			{
				t4000 = uuvon,
			
				--t25000 = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
			
				
			
	},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
	},
})
table.insert(Projectiles,--水下鱼雷
{
	SaveName = "uuv2",

	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 64,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 100,
	ProjectileShootDownRadius = 120,
	Impact = 100000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 10.0,
	ProjectileSplashDamage = 120.0,
	ProjectileSplashDamageMaxRadius = 300.0,
	ProjectileSplashMaxForce = 700000,
	SpeedIndicatorFactor = 0.05,
	CanBeShootDown = true,
	IgnitesBackgroundMaterials = false,
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 100,
	AntiAirDamage = 60,
	AntiAirHitpoints = 420,
	FlipSpriteFacingLeft = true,
	MinAge = 119.9,
	MaxAge = 120.0,
	MinAgeUnderwater = 239.9,
    MaxAgeUnderwater = 240,
	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/media/uuv.png",
			Pivot = { 0, 0.35 },
			
		}
	},

	TrailEffect = path .. "/effects/rocket_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 2,
		ErraticAngleExtentStdDev = 1,
		MaxSteerPerSecond = 10,
		MaxSteerPerSecondErratic = 15,
		ErraticAnglePeriodMean = 0.2,
		ErraticAnglePeriodStdDev = 0.1,
		LaunchThrust = 40000,
		RocketThrust = 40000,
		RocketThrustChange = 0,
		CruiseTargetDistance = 2000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	Effects =
	{
		Impact =
		{
			["device"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["antiair"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["foundations"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["rocks01"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			["default"] = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			
		Deflect =
		{
		},
		Age =
			{
			
				t250000 = "mods/weapon_pack/effects/rocket_structure_hit.lua",
			},
		},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
	},
	}
})

paveway = FindProjectile("paveway")
if paveway then 

	uuvbomb = DeepCopy(paveway)
	uuvbomb.SaveName = "uuvbomb"
	uuvbomb.ProjectileSprite = path.."/weapons/media/uuvbomb.tga"
	uuvbomb.IncendiaryRadius = 0
	uuvbomb.IncendiaryRadiusHeated =0
	uuvbomb.ProjectileSplashDamage = 60.0
	uuvbomb.ProjectileSplashDamageMaxRadius = 80.0
	uuvbomb.ProjectileSplashMaxForce = 200000
	uuvbomb.PenetrationDamage = 0
	uuvbomb.ExplodeOnTouch = true
	uuvbomb.ProjectileDamage = 40
	--uuvbomb.MaxAge = 4.8
	uuvbomb.MaxAgeUnderwater = 5
	uuvbomb.Gravity = -400
	uuvbomb.AntiAirHitpoints = 10
	uuvbomb.Effects.Impact["whitecaps"] = uuvbomb.Effects.Impact["default"]
	table.insert(Projectiles, uuvbomb)
end