dofile(path.."/weapons/dzdeckgun/dzdeckgunprj.lua")
dofile(path.."/weapons/hjcf/hjcfprj.lua")
dofile(path.."/weapons/dzto/dztoprj.lua")
dofile(path.."/weapons/plm/plmprj.lua")
dofile(path.."/scripts/lib.lua")
local KeepAge = true


--config-----------
pConfig = {
		SaveName = "config",

		ProjectileType = "bullet",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		ExpiresOnFreeFall = true,
		DrawBlurredProjectile = true,
		ProjectileMass = 0.25,
		ProjectileDrag = 0.021,
		DeflectedByShields = true,
		DeflectedByTerrain = false,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 14,
		Impact = 10000,
		ProjectileDamage = 6.0,
		SpeedIndicatorFactor = 5.0,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		Effects =
		{
		},

		Config =  --配置在这里
		{
			CombinedRequirement =
			{
				["ammo_pmagazine_large"] = --需要大号弹药库
					{"dzdeckgun384","dzdeckgun32","dzdeckgun3","dzdeckgun34","dzdeckgun43","dzdeckgun52",Properties = {offsetbelow = 200,range = 160},},
				["ammo_pmagazine_small"] = --需要小号弹药库
					{"dzdeckgun1","dzdeckgun11","dzdeckgun13","dzdeckgun21","dzdeckgun2","dzdeckgun23","dzdeckgun157","dzdeckgun1m",Properties = {offsetbelow = 0,range = 300},},
				
			},
			SupportMulti = 
			{
				["ammo_pmagazine_large"] = false,
				["ammo_pmagazine_small"] = true,
			},
			ShieldMaxHP = 8000,
		}
	}
	local ammo_pmagazine_large = {"dzdeckgun384","dzdeckgun32","dzdeckgun3","dzdeckgun34","dzdeckgun43","dzdeckgun52"}
	local ammo_pmagazine_small = {"dzdeckgun1","dzdeckgun11","dzdeckgun13","dzdeckgun21","dzdeckgun2","dzdeckgun23","dzdeckgun157","dzdeckgun1m"}
	for k,v in pairs(ammo_pmagazine_large) do
		local ac = v.."_ac"
		local secrl = v.."_secrl"
		table.insert(pConfig.Config.CombinedRequirement["ammo_pmagazine_large"],ac)
	end
	table.insert(pConfig.Config.CombinedRequirement["ammo_pmagazine_small"],"dzdeckgun11_secrl")
	table.insert(pConfig.Config.CombinedRequirement["ammo_pmagazine_small"],"dzdeckgun13_secrl")
	table.insert(pConfig.Config.CombinedRequirement["ammo_pmagazine_small"],"dzdeckgun2_secrl")
	table.insert(pConfig.Config.CombinedRequirement["ammo_pmagazine_small"],"dzdeckgun23_secrl")
	table.insert(pConfig.Config.CombinedRequirement["ammo_pmagazine_large"],"dzdeckgun3_secrl")
	table.insert(pConfig.Config.CombinedRequirement["ammo_pmagazine_large"],"dzdeckgun32_secrl")


table.insert(Projectiles,pConfig)	
--config_end-------------
dzmgDetonation = { Effect = path.."/effects/flak_explode.lua", Projectile = { Count = 12, Type = "dzb", Speed = 5000, StdDev = 0.8 }, Offset = -120, Terminate = true, }
flakb = { Effect = path.."/effects/flak_explode.lua", Projectile = { Count = 12, Type = "flakb", Speed = 4000, StdDev = 0.6 }, Offset = -120, Terminate = true, }
tieDetonation = { Effect = path.."/effects/flak_explode.lua", Projectile = { Count = 60, Type = "dzb", Speed = 5000, StdDev = 1 }, Offset = -120, Terminate = true, }
mtlsp = { Effect = "mods/dlc2/effects/impact_turret.lua", Projectile = { Count = 12, Type = "dzdeckgunHE", Speed = 3000, StdDev = 0.4 }, Offset = -1000, Terminate = true, }
vanish ={ Effect = nil, Projectile = nil,Terminate = true, }










firebeam = FindProjectile("firebeam")
if firebeam then 
	caijue = DeepCopy(firebeam)
	caijue.IncendiaryRadius = 0
	caijue.IncendiaryRadiusHeated = 0
	caijue.IgnitesBackgroundMaterials = false
	caijue.IgnitesBackgroundMaterialsPassing = false
	caijue.IgnitesBackgroundMaterialsPassingSource = false
end

tianhua = FindProjectile("FN_RT")
if tianhua then
	AddWeaponPlugIn("mtl", {
		Enabled = true,
		Name = "BallisticComputer",
		BallisticComputer = 
		{
			Enabled = true,
			EnergyCost = 8000,
			MetalCost = 600,
			Time = 60, -- sec
	--		RunningEnergyCost = 2, -- e/tick
		}
	})
end	
----------------------------------------------------


	
-- 唯一命名的光束表（请参阅下面的警告）
-- 第一列是时间关键点
-- 第二个碰撞时该关键点的厚度
-- 第三列是该关键点的损坏
local mgbullet = FindProjectile("machinegun")
if mgbullet then
	mgbullet.ProjectileDamage = 2
	mgbullet.AntiAirDamage = 3
end




table.insert(Sprites,
{
    Name = "mark_orbitalstrike",
    States = 
    {
        Normal = 
        {
            Frames = 
            {
                { texture = path .. "/weapons/media/orbitalStrike/mark.png", },
				{ texture = path .. "/weapons/media/orbitalStrike/mark1.png", },
				{ texture = path .. "/weapons/media/orbitalStrike/mark2.png", },
				{ texture = path .. "/weapons/media/orbitalStrike/mark3.png", },
				{ texture = path .. "/weapons/media/orbitalStrike/mark4.png", },
				{ texture = path .. "/weapons/media/orbitalStrike/mark5.png", },
				{ texture = path .. "/weapons/media/orbitalStrike/mark6.png", },
				
                repeatS = true,
                duration = 0.035,
                mipmap = true,
            },
            NextState = "Normal",
        },
    },
})
local ob = FindProjectile("ol_marker_sweep")
if ob then
	local mark_orbitalstrike = DeepCopy(ob)
	mark_orbitalstrike.SaveName = "mark_orbitalstrike"
	mark_orbitalstrike.AntiAirHitpoints = mark_orbitalstrike.AntiAirHitpoints*3
	mark_orbitalstrike.Projectile = {}
	mark_orbitalstrike.AntiAirHitpoints = 400
	mark_orbitalstrike.Effects.Impact = 
	{
		["default"] = {Effect = path.."/effects/obstrike_impact.lua",Terminate = true}
	}
	mark_orbitalstrike.Projectile.Root = 
	{
		Sprite = path .. "/weapons/media/orbitalStrike/mark.png",
		Name = "Root",
		Angle = 0,
		Pivot = { 0, 0.35 },
		ChildrenInFront = 
		{
			{
				Offset = { 0, 0, },
				Name = "orbitalstrike",
				Sprite = "mark_orbitalstrike",
				Scale = 2,
				Angle = 0,
				Pivot =  { 0, 0, },
				PivotOffset =  {  0, 0, },
			},
		},

	}
	
	mark_orbitalstrike.dlc2_orbital =
	{}
	table.insert(Projectiles,mark_orbitalstrike)
end


table.insert(Projectiles,--能量护盾
{
	AntiAirHitpoints = 8000,
	AntiAirDamage = 800,
	ProjectileShootDownRadius = 1200,
	DeflectedByShields = false,
	ProjectileDrag = 0,
	ProjectileType = "mortar",
	CollidesWithProjectiles = true,
	CollidesWithBeams = true,
	Effects = 
	{
		
		
		Impact =
		{
			["default"] = {Effect = "mods/dlc2/effects/impact_turret.lua",Terminate = false}
		},
		
	},
	Projectile = 
	{
		Root = 
		{
			Sprite = "dzshield_anim",
			Angle = 0,
			Name = "dzshield_anim",
			Scale = 8.0,
			Pivot = { 0, 0 },
		},
	},
	
	ProjectileThickness = 2,
	ProjectileDamage = 0,
	SpeedIndicatorFactor = 5,
	--ProjectileSpriteMipMap = false,
	CollidesWithStructure= false,
	CollidesWithBackgroundMaterials = false,
	CollidesWithOwnSide = false,
	CanBeShotDown = true,
	--ProjectileSprite = "mods/dlc2/weapons/media/energy_bolt.dds",

	SaveName = "dzshield",
	isShield = true,
	Impact = 10000,
	Gravity = 0,
	ProjectileMass = 1,
	ExplodeOnTouch = false,
	DrawBlurredProjectile = false,
	MaxAge = 3600.1,
	MinAge = 3600,
	MaxAgeUnderwater = 3600,
	BeamTileRate = 0,
	BeamScrollRate = 0.02,
	FieldType = FIELD_BLOCK_BEAMS,
	FieldRadius = 1200,
	FieldCreatesImpactProjectile = true,
	FieldIntersectionNearest = false,
})



table.insert(Projectiles,
{
	DeflectedByShields = false,
	ProjectileDrag = 0,
	CollidesWithBackgroundMaterials = false,
	ProjectileType = "mortar",
	CanBeShotDown = false,
	TrailEffect = "effects/sniper_trail.lua",
	ProjectileMass = 0.20000000298023,
	AntiAirDamage = 0,
	Effects = 
	{
		Deflect = 
		{
			bracing = "effects/bullet_bracing_hit.lua",
			armour = "effects/bullet_armor_ricochet.lua",
			shield = "effects/energy_shield_ricochet.lua",
			backbracing = "effects/bullet_bracing_hit.lua",
			default = "effects/bullet_bracing_hit.lua",
			door = "effects/bullet_armor_ricochet.lua",
		},
		Age = 
		{
			t200 = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
		},
		Impact = 
		{
			foundations = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			firebeam = 
			{
				Offset = 0,
				Effect = "effects/small_arms_flare.lua",
				KeepHitpointLoss = true,
				Splash = false,
				Projectile = 
				{
					Type = "flamingsmokebomb",
					Count = 1,
					StdDev = 0,
				},
				PosT = 1,
				KeepLifespan = true,
				Terminate = true,
			},
			armour = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			device = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			backbracing = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			bracing = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			default = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			shield = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			rocks01 = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
			door = 
			{
				Projectile = 
				{
					Speed = 0.10000000149012,
					Type = "dzsmoke",
					Count = 1,
					StdDev = 1.1000000238419,
				},
				Terminate = true,
				Offset = -220,
				Effect = "mods/dlc_smokebomb/effects/smoke_explode.lua",
			},
		},
	},
	BeamScrollRate = 0,
	Projectile = 
	{
		Root = 
		{
			Sprite = "mods/dlc_smokebomb/weapons/media/smokebomb",
			Angle = 0,
			Name = "Root",
		},
	},
	ProjectileThickness = 2,
	ProjectileDamage = 0,
	DamageMultiplier = 
	{
		[1] = 
		{
			SaveName = "smoke",
			AntiAir = 0,
		},
	},
	BeamTileRate = 0.019999999552965,
	SpeedIndicatorFactor = 5,
	ProjectileShootDownRadius = 20,
	ProjectileSpriteMipMap = false,
	CollisionLookaheadDist = 200,
	ProjectileSprite = "mods/dlc_smokebomb/weapons/media/smokebomb",
	SaveName = "dzsmokebomb",
	Impact = 10000,
	WeaponDamageBonus = 0,
	CollidesWithBeams = true,
	ExplodeOnTouch = true,
	DrawBlurredProjectile = false,
})
table.insert(Projectiles,
{
	ProjectileIncendiary = false,
	DeflectedByShields = false,
	ProjectileDrag = 1,
	Effects = 
	{
		AirImpact = 
		{
			missile = 
			{
				ChanceOfTangent = 0.0099999997764826,
				GuidanceError = 1200,
				Effect = "mods/dlc1_weapons/effects/missile_disrupt.lua",
				ChanceOfCircling = 0.03999999910593,
				ChanceOfError = 0.94999998807907,
			},
			missile2 = 
			{
				ChanceOfTangent = 0.0099999997764826,
				GuidanceError = 1200,
				Effect = "mods/dlc1_weapons/effects/missile_disrupt.lua",
				ChanceOfCircling = 0.03999999910593,
				ChanceOfError = 0.94999998807907,
			},
		},
	},
	ProjectileType = "mortar",
	MagneticModifierFriendly = 0,
	BeamTileRate = 0,
	Gravity = 0,
	AntiAirHitpoints = 50,
	MaxAge = 30,
	CollidesWithProjectiles = true,
	SpeedIndicatorFactor = 0,
	ProjectileSplashDamageMaxRadius = 0,
	ProjectileSplashDamage = 0,
	BeamScrollRate = 0,
	CollidesWithStructure = false,
	ProjectileThickness = 200,
	ProjectileDamage = 0,
	DamageMultiplier = 
	{
		[1] = 
		{
			SaveName = "laser",
			Block = 0.89999997615814,
		},
		[2] = 
		{
			SaveName = "magnabeam",
			Block = 0.30000001192093,
		},
		[3] = 
		{
			SaveName = "default",
			Direct = 0,
		},
		[4] = 
		{
			SaveName = "smoke",
			AntiAir = 0,
		},
	},
	FieldRadius = 200,
	DisableShields = false,
	ProjectileShootDownRadius = 200,
	ProjectileSpriteMipMap = false,
	Impact = 0,
	TrailEffect = "mods/dlc_smokebomb/effects/smoke.lua",
	SaveName = "dzsmoke",
	FieldType = 29,
	FieldIntersectionNearest = true,
	CollidesWithBeams = true,
	ExplodeOnTouch = false,
	ProjectileMass = 1,
})


-------------------------------------------------------
table.insert(Projectiles,--手动防空
{
	
		SaveName = "dzmgcom",
		
		ProjectileType = "bullet",
		ProjectileSprite = path.."/weapons/head.png",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		ProjectileMass = 8,
		ProjectileDrag = 0,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 150,
		BeamTileRate = 0.02,
		Impact = 10000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0,
		MaxAgeUnderwater = 20,
		AntiAirDamage = 0,
		WeaponDamageBonus = 0,
	
		SpeedIndicatorFactor = 0.25, --0.25

		TrailEffect = "effects/cannon_trail.lua",
		DamageMultiplier =
	{
		{ SaveName = "default", Direct = 1, },
	},
		Effects =
		{
			Impact =
			{
			["default"] = "effects/impact_light.lua",
			},
			Deflect =
			{
				["default"] = "effects/bullet_bracing_hit.lua",
			},
			
		
		},
})
table.insert(Projectiles,--3高
{
		SaveName = "mtl",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/mtl.png",
		DrawBlurredProjectile = false,
		Gravity = 120,
		ProjectileMass = 16,
		ProjectileDrag = 0.6,
		ProjectileIncendiary = true,
		--IncendiaryRadius = 0,
		--IncendiaryRadiusHeated = 160,
		--IgnitesBackgroundMaterials = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 410.0,
		WeaponDamageBonus = 100.0,
		ProjectileSplashDamage = 0.0,
		ProjectileSplashDamageMaxRadius = 20.0,
		ProjectileSplashMaxForce = 20000,
		CollisionLookaheadDist = 1000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 400,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/mtl.lua",

		Effects =
		{
			Impact =
			{
				
				["default"] = mtlsp,
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
			},
			Age =
			{
				t60000 = mtlsp,
			},
		},
		
})
table.insert(Projectiles,--3高
{
		SaveName = "mtlhe",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/mtlhe.png",
		DrawBlurredProjectile = false,
		Gravity = 120,
		ProjectileMass = 16,
		ProjectileDrag = 0.6,
		ProjectileIncendiary = false,
		--IncendiaryRadius = 0,
		--IncendiaryRadiusHeated = 160,
		--IgnitesBackgroundMaterials = true,
		DestroyShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 2000000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 600.0,
		WeaponDamageBonus = 600.0,
		DeviceSplashDamage = 800,
		DeviceSplashDamageMaxRadius = 360,
		PenetrationDamage = 1320,
		ProjectileSplashDamage = 240.0,
		ProjectileSplashDamageMaxRadius = 400.0,
		ProjectileSplashMaxForce = 800000,
		AntiAirDamage = 400,
		AntiAirHitpoints = 560,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = path.."/effects/mtlhe.lua",

		Effects =
		{
			Impact =
			{
				
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},	
			
		},
		
})




table.insert(Projectiles,--粒子加速器信息传递弹药
{
	
		SaveName = "lizi",
		
		ProjectileType = "bullet",
		ProjectileSprite = path.."/weapons/lizi/lizibb.png",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		ProjectileMass = 100,
		ProjectileDrag = 0.00000001,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 150,
		CollisionLookaheadDist = 120,
		BeamTileRate = 0.02,
		Impact = 10000,
		Gravity = 1,
		BeamScrollRate = 0.0,
		ProjectileDamage = 40,
		MaxAgeUnderwater = 10,
		AntiAirDamage = 15,

		SpeedIndicatorFactor = 0.25, --0.25

		TrailEffect = path.."/effects/dz_trail.lua",
		DamageMultiplier =
	{
		{ SaveName = "default", Direct = 1, },
	},
		Effects =
		{
			
			Impact =
			{
				["default"] = nil,
			},
			Deflect =
			{
				["default"] = "effects/bullet_bracing_hit.lua",
			},
		
		},
})
table.insert(Projectiles,--粒子加速器初始弹药
{
	
		SaveName = "lizibo",
		
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/head",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		EnemyCanTeleport = false,	
		ProjectileMass = 100,
		ProjectileDrag = 0.0,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,
		ProjectileThickness = 10.0,
		ProjectileShootDownRadius = 10,
		ProjectileIncendiary = true,
		Impact = 0,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0.0,
		ProjectileSplashDamage = 0.0,
		ProjectileSplashDamageMaxRadius = 0.0,
		ProjectileSplashMaxForce = 0,
		Gravity = 0,
		MaxAgeUnderwater = 60,
		AntiAirHitpoints = 200000000000000000000,

		SpeedIndicatorFactor = 0.25, --0.25
		Effects =
		{
			
			Impact =
			{
				
				["default"] = "effects/impact_light.lua",
			},
		},
})
table.insert(Projectiles,--粒子加速器攻击弹药
{
	
		SaveName = "lizib",
		
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/head.png",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
			
		ProjectileMass = 100,
		ProjectileDrag = 0.0,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,
		ProjectileThickness = 10.0,
		ProjectileShootDownRadius = 10,
		ProjectileIncendiary = true,
		Impact = 10000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0.0,
		ProjectileSplashDamage = 100,
		ProjectileSplashDamageMaxRadius = 700,
		ProjectileSplashMaxForce =10000000,
		Gravity = 0,
		MaxAgeUnderwater = 60,
		AntiAirHitpoints = 200000000000,
		AntiAirDamage = 200000000000,
		SpeedIndicatorFactor = 0.25, --0.25

		TrailEffect = path.."/effects/lizib1_trail.lua",
		Effects =
		{
			
			Impact =
			{
				
				["default"] ="effects/mushroom_cloud.lua",
			},
		},
})

table.insert(Projectiles,--手动防空
{
	
		SaveName = "ddzmg",
		
		ProjectileType = "bullet",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		ProjectileMass = 8,
		ProjectileDrag = 0.01,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 150,
		BeamTileRate = 0.02,
		Impact = 10000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 3,
		MaxAgeUnderwater = 10,
		AntiAirDamage = 14,
		WeaponDamageBonus = 2,
	
		SpeedIndicatorFactor = 0.25, --0.25

		--TrailEffect = path.."/effects/hdzmg_trail.lua",
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
			
			["default"] = "effects/impact_light.lua",
			},
			Deflect =
			{
				
				["default"] = "effects/impact_light.lua",
			},
			
		
		},
})
table.insert(Projectiles,--手动防空
{
	
		SaveName = "hdzmg",
		
		ProjectileType = "bullet",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		ProjectileMass = 4,
		ProjectileDrag = 0,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 150,
		BeamTileRate = 0.02,
		Impact = 1000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 2,
		MaxAgeUnderwater = 10,
		AntiAirDamage = 14,
		WeaponDamageBonus = 2,
	
		SpeedIndicatorFactor = 0.25, --0.25

		--TrailEffect = path.."/effects/hdzmg_trail.lua",
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
			
			["default"] = "effects/impact_light.lua",
			},
			Deflect =
			{
				
				["default"] = "effects/impact_light.lua",
			},
			
		
		},
})
table.insert(Projectiles,--铁幕
{
	
		SaveName = "tie",
		
		ProjectileType = "bullet",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		
		DrawBlurredProjectile = true,
		ProjectileMass = 20,
		ProjectileDrag = 1,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 150,
		CollisionLookaheadDist = 120,
		BeamTileRate = 0.02,
		Impact = 10000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0,
		AntiAirDamage = 8,
		MaxAgeUnderwater = 10,
		MaxAge = 4,
		SpeedIndicatorFactor = 0.25, --0.25

		TrailEffect = "effects/cannon_trail.lua",
		DamageMultiplier =
	{
		{ SaveName = "default", Direct = 0, },
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
			["device"] =  path.."/effects/flak_explode.lua",
			["foundations"] =  path.."/effects/flak_explode.lua",
			["rocks01"] =  path.."/effects/flak_explode.lua",
			["bracing"] =  path.."/effects/flak_explode.lua",
			["backbracing"] =  path.."/effects/flak_explode.lua",
			["armour"] =  path.."/effects/flak_explode.lua",
			["door"] =  path.."/effects/flak_explode.lua",
			["shield"] =  path.."/effects/flak_explode.lua",
			["default"] =  path.."/effects/flak_explode.lua",
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
		},
		
	
})
table.insert(Projectiles,--自动防空
{
	
		SaveName = "flakold",
		
		ProjectileType = "bullet",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		Gravity = 50,
		ProjectileMass = 2,
		ProjectileDrag = 0,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 200,
		CollisionLookaheadDist = 120,
		BeamTileRate = 0.02,
		Impact = 10000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 6,
		MaxAgeUnderwater = 10,
		AntiAirDamage = 0,
		SpeedIndicatorFactor = 0.25, --0.25

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
			["default"] = flakb,
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
			Age =
			{
				t4000 = flakb,
			},
		
		},
})
table.insert(Projectiles,--自动防空
{
	
		SaveName = "dzmg",
		
		ProjectileType = "bullet",
		ProjectileSprite = "weapons/media/bullet",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = true,
		ProjectileMass = 2,
		ProjectileDrag = 0,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = true,
		ProjectileThickness = 3.0,
		ProjectileShootDownRadius = 150,
		CollisionLookaheadDist = 120,
		BeamTileRate = 0.02,
		Impact = 10000,
		BeamScrollRate = 0.0,
		ProjectileDamage = 6,
		MaxAgeUnderwater = 10,
		AntiAirHitpoints = 1,
		SpeedIndicatorFactor = 0.25, --0.25
		--TrailEffect = path.."/effects/dzmg_trail.lua",
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
			["device"] = dzmgDetonation,
			["foundations"] = dzmgDetonation,
			["rocks01"] = dzmgDetonation,
			["bracing"] = dzmgDetonation,
			["backbracing"] = dzmgDetonation,
			["armour"] = dzmgDetonation,
			["door"] = dzmgDetonation,
			["shield"] = dzmgDetonation,
			["default"] = dzmgDetonation,
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
			Age =
			{
				t4000 = dzmgDetonation,
			},
		
		},
})
table.insert(Projectiles,--破片
{
	
		SaveName = "flakb",
		ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.25,
	ProjectileDrag = 0.021,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 60,
	Impact = 10000,
	ImpactMomentumLimit = 2000,
	ProjectileDamage = 4.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	MinAge = 0.23,
	MaxAge = 0.23,
	AntiAirDamage = 2,
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
		},
		DamageMultiplier =
	{
		{ SaveName = "mortar", Direct = 0.6, Splash = 1 },
		{ SaveName = "mortar2", Direct = 0.6, Splash = 1 },
		{ SaveName = "machinegun", Direct = 0.2, Splash = 1 },
		{ SaveName = "minigun", Direct = 0.2, Splash = 1 },
	},
	
})
table.insert(Projectiles,--破片
{
	
		SaveName = "dzb",
		ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.25,
	ProjectileDrag = 0.021,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 9,
	Impact = 10000,
	ImpactMomentumLimit = 2000,
	ProjectileDamage = 0.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	MinAge = 0.2,
	MaxAge = 0.3,
	AntiAirDamage = 5,
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
		},
		DamageMultiplier =
	{
	},
	
})
table.insert(Projectiles,--电磁狙
{
		SaveName = "dzsniper",

		ProjectileType = "mortar", -- necessary to make a trail
		ProjectileSprite = path.."/weapons/media/dzsniper",
		ProjectileSpriteMipMap = true,
		DrawBlurredProjectile = false,
		ProjectileMass = 4.5,
		ProjectileDrag = 0,
		DeflectedByShields = false,
		ExplodeOnTouch = false,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 15,
		Impact = 30000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 20.0,
		PenetrationDamage = 2000,
		PenetrationSpeedMultiplier = 0.8,
		WeaponDamageBonus = 180.0,
		SpeedIndicatorFactor = 0.05,
		AntiAirDamage = 160,
		EMPDuration = 3,
		EMPRadius = 10,
		Gravity = 80,
		TrailEffect = "effects/sniper_trail.lua",

		MomentumThreshold =
		{
			["shield"] = { Reflect = 400, Penetrate = 9000 },
			
		},

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
				["shield"] = "effects/energy_shield_ricochet.lua",
				["default"] = "effects/impact_light.lua",
			},
			Deflect =
			{
				["bracing"] = "effects/bullet_bracing_hit.lua",
				["backbracing"] = "effects/bullet_bracing_hit.lua",
				["armour"] = "effects/bullet_armor_ricochet.lua",
				["door"] = "effects/bullet_armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
			},
			Penetrate =
			{
				["bracing"] = "effects/bullet_bracing_hit.lua",
				["armour"] = "effects/bullet_armor_hit.lua",
				["door"] = "effects/bullet_armor_hit.lua",
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
			},
		},
})
--sharps = { Effect = "effects/impact_heavy.lua", Projectile = { Count = 36, Type = "minigun",Speed = 5000, StdDev = 0.2},Splash = false,Terminate = true,Offset = 10, }
table.insert(Projectiles,--深水炸弹
{
		SaveName = "dzmt",

		ProjectileType = "mortar",
	
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = false,
		ProjectileMass = 8,
		ProjectileDrag = 0,
		Impact = 10000,
		DestroyShields = true,
		DeflectedByShields = false,
		PassesThroughMaterials = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 200.0, 
		WeaponDamageBonus = 10.0,
		ProjectileSplashDamage = 200.0, 
		ProjectileSplashDamageMaxRadius = 200.0,

		SpeedIndicatorFactor = 0.25,
		AntiAirHitpoints = 32,
		ProjectileSplashMaxForce = 100000,
		TrailEffect = "effects/mortar_trail.lua",
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Scale = 3,
				Sprite = path .. "/weapons/media/dzmt.png",
				Pivot = { 0, 0.35 },
			}
		},
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
unwaon = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua", Projectile = { Count = 1, Type = "dzcannonuw", StdDev = 0},Splash = false,Terminate = true,Offset = 10, }
unwaon2 = { Effect = "mods/dlc2/effects/device_explode_submerged_large.lua", Projectile = { Count = 40, Type = "dzb", StdDev = 1.2,Speed = 4000},Splash = true,Terminate = true,Offset = 0, }
table.insert(Projectiles,--深水炸弹
{
		SaveName = "dzcannon",

		ProjectileType = "mortar",
	
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = false,
		ProjectileMass = 100,
		ProjectileDrag = 1.4,
		Impact = 10000,
		DestroyShields = true,
		DeflectedByShields = false,
		PassesThroughMaterials = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0.0, 
		WeaponDamageBonus = 0.0,
		ProjectileSplashDamage = 0.0, 
		ProjectileSplashDamageMaxRadius = 0.0,

		SpeedIndicatorFactor = 0.25,
		AntiAirHitpoints = 60,
		ProjectileSplashMaxForce = 10000,
		TrailEffect = "effects/mortar_trail.lua",
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Scale = 3,
				Sprite = path .. "/weapons/media/uwm1.png",
				Pivot = { 0, 0.35 },
			}
		},
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
				["whitecaps"] = unwaon,
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
table.insert(Projectiles,--深水炸弹
{
		SaveName = "dzcannonuw",

		ProjectileType = "mortar",
	
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = false,
		ProjectileMass = 100,
		ProjectileDrag = 24,
		Impact = 3000000,
		DestroyShields = true,
		DeflectedByShields = false,
		PassesThroughMaterials = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 240,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 350.0, 
		WeaponDamageBonus = 0.0,
		ProjectileSplashDamage = 200.0, 
		ProjectileSplashDamageMaxRadius = 400.0,
		
		Gravity = 240,
		SpeedIndicatorFactor = 0.25,
		AntiAirHitpoints = 30,
		AntiAirDamage = 120,
		ProjectileSplashMaxForce = 3000000,
		MaxAgeUnderwater = 60,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Scale = 3,
				Sprite = path .. "/weapons/media/uwm1.png",
				Pivot = { 0, 0.35 },
			}
		},
		Effects =
		{
			Impact =
			{
				
				["default"] = unwaon2,
				["whitecaps"] = unwaon,
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
----------------------------------------------------------------------------------------------------------------------------------
submineon = { Effect = nil, Projectile = { Count = 1, Type = "fldzsubmine", StdDev = 0,Speed = 0},Splash = false,Terminate = true,Offset = 10, }
submineatk = { Effect = nil, Projectile = { Count = 1, Type = "atkdzsubmine", StdDev = 0,Speed = 0},Splash = false,Terminate = true,Offset = 10, }
table.insert(Projectiles,--水雷
{
		SaveName = "dzsubmine",
		ProjectileType = "mortar",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = false,
		ProjectileMass = 10,
		ProjectileDrag = 20,
		Impact = 10000,
		DestroyShields = true,
		DeflectedByShields = false,
		PassesThroughMaterials = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 50.0, 
		WeaponDamageBonus = 600.0,
		Gravity = 600,
		SpeedIndicatorFactor = 0.25,
		AntiAirHitpoints = 120,
		MaxAgeUnderwater = 300,
		ProjectileSplashDamage = 20.0, 
		ProjectileSplashMaxForce = 12000,
		ProjectileSplashDamageMaxRadius = 30,
		---TrailEffect = "effects/mortar_trail.lua",
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Scale = 1.2,
				Sprite = path .. "/weapons/media/submine.png",
				Pivot = { 0, 0.0 },
			}
		},
		Effects =
		{
			Impact =
			{
				
				["default"] = "effects/impact_heavy.lua",
			},	
			Age =
			{
				t24000 = submineon,
			},
		},
})
table.insert(Projectiles,--水雷
{
		SaveName = "fldzsubmine",
		ProjectileType = "mortar",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = false,
		ProjectileMass = 10,
		ProjectileDrag = 60,
		Impact = 10000,
		DestroyShields = true,
		DeflectedByShields = false,
		PassesThroughMaterials = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 50.0, 
		WeaponDamageBonus = 600.0,
		Gravity = 0,
		SpeedIndicatorFactor = 0.25,
		AntiAirHitpoints = 120,
		MinAge = 300,
		MaxAge = 301,
		MaxAgeUnderwater = 300,
		ProjectileSplashDamage = 200.0, 
		ProjectileSplashMaxForce = 1200000,
		ProjectileSplashDamageMaxRadius = 300,
		--TrailEffect = "effects/mortar_trail.lua",
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Scale = 1.2,
				Sprite = path .. "/weapons/media/submine.png",
				Pivot = { 0, 0.0 },
			}
		},
		Effects =
		{
			Impact =
			{
				
				["default"] = "effects/impact_heavy.lua",
				
			},	
			Age =
			{
				t300000 = submineatk,
			},
		},
})
table.insert(Projectiles,--水雷
{
		SaveName = "atkdzsubmine",
		ProjectileType = "mortar",
		ProjectileSpriteMipMap = false,
		DrawBlurredProjectile = false,
		ProjectileMass = 4,
		ProjectileDrag = 1,
		Impact = 10000000,
		DestroyShields = true,
		DeflectedByShields = false,
		PassesThroughMaterials = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 60,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 50.0, 
		WeaponDamageBonus = 600.0,
		Gravity = -800,
		SpeedIndicatorFactor = 0.25,
		AntiAirHitpoints = 120,
		MaxAgeUnderwater = 300,
		ProjectileSplashDamage = 200.0, 
		ProjectileSplashMaxForce = 1400000,
		ProjectileSplashDamageMaxRadius = 360,
		---TrailEffect = "effects/mortar_trail.lua",
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 180,
				Scale = 1.2,
				Sprite = path .. "/weapons/media/submine.png",
				Pivot = { 0, 0.0 },
			}
		},
		Effects =
		{
			Impact =
			{
				
				["default"] = "effects/impact_heavy.lua",
				["whitecaps"] = "effects/impact_heavy.lua",
			},	
		},
})






















----------------------------------------------------------------------------------------------------------------------------------
table.insert(Projectiles,--空包弹
{
		SaveName = "dzempty",
		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 0.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = false,
		IgnitesBackgroundMaterials = true,
		DestroyShields = false,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 0,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 0.0,-----------------
		WeaponDamageBonus = 0.0,
		ProjectileSplashDamage = 0,
		ProjectileSplashDamageMaxRadius = 0.0,
		AntiAirDamage = 0,
		AntiAirHitpoints = 0,
		SpeedIndicatorFactor = 0.1,
		
		
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
table.insert(Projectiles,--电磁炮
{
		SaveName = "dzelc",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/elc.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 100.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = true,
		IgnitesBackgroundMaterials = true,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 10.0,
		ProjectileShootDownRadius = 20,
		Impact = 800000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 900.0,-----------------
		WeaponDamageBonus = 100.0,
		ProjectileSplashDamage = 75,
		ProjectileSplashDamageMaxRadius = 100.0,
		AntiAirDamage = 3000,
		AntiAirHitpoints = 1600,
		SpeedIndicatorFactor = 0.25,
		Gravity = 100,
		TrailEffect = path.."/effects/dzelc_trail.lua",
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
		DamageMultiplier =
	{
		{ SaveName = "dznc", Direct = 0.9, Splash = 1.2 },
		{ SaveName = "dzar", Direct = 0.9, Splash = 1.2 },
		{ SaveName = "dzar_door", Direct = 0.85, Splash = 1.2 },
		{ SaveName = "dzshield", Direct = 0, Splash = 0 ,AntiAir = 2,},
	},
})
table.insert(Projectiles,--电磁炮
{
		SaveName = "dzelch",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/elc.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 100.0,
		ProjectileDrag = 0,
		ProjectileIncendiary = true,
		IgnitesBackgroundMaterials = true,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 10.0,
		ProjectileShootDownRadius = 20,
		Impact = 800000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 4800.0,-----------------
		WeaponDamageBonus = 600.0,
		ProjectileSplashDamage = 75,
		ProjectileSplashDamageMaxRadius = 100.0,
		ProjectileSplashMaxForce = 1000000,
		AntiAirDamage = 6000,
		AntiAirHitpoints = 3200,
		SpeedIndicatorFactor = 0.25,
		Gravity = 100,
		TrailEffect = path.."/effects/dzelch_trail.lua",
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
			["armour"] = { Reflect = 0, Penetrate = 4000 },--M<R :R; M>P:P;R<M<P:I
			["door"] = { Reflect = 0, Penetrate = 4000 },
		},
		DamageMultiplier =
	{
		{ SaveName = "dznc", Direct = 0.7, Splash = 1.2 },
		{ SaveName = "dzar", Direct = 1.2, Splash = 1.2 },
		{ SaveName = "dzar_door", Direct = 1.4, Splash = 1.2 },
		{ SaveName = "dzshield", Direct = 0, Splash = 0 ,AntiAir = 5,},
	},
})
------------------------------------------------------------------------------------------------------------------------
table.insert(Projectiles,--电磁炮
{
		SaveName = "dzelchb",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/elccr.png",
		DrawBlurredProjectile = false,
		ProjectileMass = 120.0,
		ProjectileDrag = 0,
		--ProjectileIncendiary = true,
		--IgnitesBackgroundMaterials = true,
		DeflectedByShields = false,
		ExplodeOnTouch = false,------------------------
		ProjectileThickness = 10.0,
		ProjectileShootDownRadius = 20,
		Impact = 800000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100.0,-----------------
		WeaponDamageBonus = 1400.0,
		StructureSplashDamage = 100,
		StructureSplashDamageMaxRadius = 100,
		PenetrationDamage = 10000,
		PenetrationSpeedMultiplier = 0.99,
		AntiAirDamage = 8000,
		AntiAirHitpoints = 6400,
		SpeedIndicatorFactor = 0.25,
		Gravity = 100,
		TrailEffect = path.."/effects/dzelch_trail.lua",
		AlwaysPassDevices = true,
		Effects =
		{
			Impact =
			{
				["armor"] = "effects/impact_heavy.lua",
				["device"] = 
                {
                    Effect ="effects/impact_heavy_ground.lua",
                    Terminate = false,
                },
				["foundations"] = "effects/impact_heavy_ground.lua",
				["rocks01"] = "effects/impact_heavy_ground.lua",
				["bracing"] = "effects/impact_heavy.lua",
				["armour"] = "effects/impact_heavy.lua",
				["door"] = "effects/impact_heavy.lua",
				["dznc"] = "effects/impact_heavy.lua",
				["dznc_door"] = "effects/impact_heavy.lua",
				["default"] = 
				{
                    Effect ="effects/impact_heavy_ground.lua",
                    Terminate = false,
                },
			},	
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
				["shield"] = "effects/energy_shield_ricochet.lua",
			},
			Penetrate = 
			{
				["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = false },
				["dznc"] = { Effect = "effects/impact_heavy.lua",Terminate = true },
				["dznc_door"] = { Effect = "effects/impact_heavy.lua", Terminate = true },
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 0, Penetrate = 4000 },--M<R :R; M>P:P;R<M<P:I
			["door"] = { Reflect = 0, Penetrate = 4000 },
			["shield"] = {Reflect = 400,Penetrate = 4000},
			["armor"] = {Reflect = 400,Penetrate = 999999000},
			["dznc"] = {Reflect = 400,Penetrate = 999999000},
			["dznc_door"] = {Reflect = 400,Penetrate = 999999000},
		},
		DamageMultiplier =
	{
		{ SaveName = "dznc", Direct = 10, Splash = 0 },
		{ SaveName = "dznc_door", Direct = 10, Splash = 1 },
		{ SaveName = "dzar", Direct = 3, Splash = 1.2 },
		{ SaveName = "core", Direct = 0.5, Splash = 0.0 },
		{ SaveName = "armor", Direct = 10, Splash = 0.0 },
		{ SaveName = "dzar_door", Direct = 0.85, Splash = 1.2 },
		{ SaveName = "dzshield", Direct = 0, Splash = 0 ,AntiAir = 10,},
	},
})

local laser = FindProjectile("laser")
table.insert(laser.DamageMultiplier,{ SaveName = "dzelcap", Direct = 0, Splash = 0, AntiAir = 0 })
table.insert(laser.DamageMultiplier,{ SaveName = "dzelcapb", Direct = 0, Splash = 0, AntiAir = 0 })
-----------------------------------------------------------------------------------------------------

--[[aimming = { Effect = nil, Projectile = { Count = 1, Type = "dznestoff", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
table.insert(Projectiles,--鹊巢
{
		SaveName = "dznest",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 4.0,
		ProjectileDrag = 80,
		ProjectileIncendiary = true,
		DisableShields = false,
		DeflectedByShields = false,
		EnemyCanTeleport = false, -- equivalent to PassesEnemyPortals, but doesn't trigger Moonshot dependency
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 12,
		Impact = 75000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 10.0,
		WeaponDamageBonus = 50,
		DviceDamageBonus = 	50,
		ProjectileSplashDamage = 120.0,
		ProjectileSplashDamageMaxRadius = 130.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.2,
		MaxAge = 60,
		EMPSensitivity = 4,
		EMPMissileProbabilityOfCircling = 0.5,
		AntiAirHitpoints = 6,
		Gravity = 400,
		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path.."/weapons/media/dzne2.png",

				ChildrenInFront =
				{
					{
						Name = "Flame",
						Angle = 0,
						Offset = { 0, 0.5 },
						Pivot = { 0, 0.5 },
						PivotOffset = { 0, 0 },
						Sprite = "missile_swarm_tail",
					},
				},
			}
		},

		TrailEffect = path.."/effects/dznest_trail.lua",

		Missile =
		{
			ThrustAngleExtent = 25,
			ErraticAngleExtentStdDev = 0.1,
			ErraticAngleExtentMax = 0.1,
			MaxSteerPerSecond = 0.1,
			MaxSteerPerSecondErratic = 0.1,
			ErraticAnglePeriodMean = 0.6,
			ErraticAnglePeriodStdDev = 0.15,
			ErraticThrust = 0.5,
			ErraticThrustMagneticField = 0.7,
			LaunchThrust = 10500,
			RocketThrust = 190000,
			CruiseTargetDistance = 2000,
			CruiseTargetDuration = .5,
			TargetRearOffsetDistance = 1000,
			MinTargetUpdateDistance = 2000,
			DecoyFramesToRedirect = 6,
		},

		Effects =
		{
			Impact =
			{
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},
			Deflect =
			{
				["default"] = "effects/mortar_air_burst.lua",
			},
			Age =
			{
				t6000 = aimming,
			},
		},
		
})
]]--
table.insert(Projectiles,--hit
{
		SaveName = "sbrc",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 4.0,
		ProjectileDrag = 0.1,
		ProjectileIncendiary = true,
		DisableShields = false,
		DeflectedByShields = false,
		EnemyCanTeleport = false, -- equivalent to PassesEnemyPortals, but doesn't trigger Moonshot dependency
		ExplodeOnTouch = true,
		ProjectileThickness = 2.0,
		ProjectileShootDownRadius = 12,
		Impact = 75000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 10.0,
		WeaponDamageBonus = 60,
		DviceDamageBonus = 	50,
		ProjectileSplashDamage = 80.0,
		ProjectileSplashDamageMaxRadius = 120.0,
		ProjectileSplashMaxForce = 10000,
		SpeedIndicatorFactor = 0.2,
		AntiAirHitpoints = 6,
		Gravity = 600,
		MaxAge = 16,
		EMPSensitivity = 4,
		MaxAgeUnderwater = 1,
		EMPMissileProbabilityOfCircling = 0.5,

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = 0,
				Scale = 0.75,
				Sprite = path.."/weapons/media/dzne2.png",
			}
		},

		TrailEffect ="effects/mortar_trail.lua",
		Effects =
		{
			Impact =
			{
				["default"] = "mods/dlc2/effects/impact_turret.lua",
			},
			Deflect =
			{
				["default"] = "effects/mortar_air_burst.lua",
			},
		},
		
})

if dlc2Var_Active then
	thunderbolt = DeepCopy(FindProjectile("thunderbolt"))
	nighthawk = DeepCopy(FindProjectile("nighthawk"))
	paveway = FindProjectile("paveway")
end
if FindProjectile("sbpp_sidewinder") then
	thunderbolt.dlc2_Bombs={}
	thunderbolt.Gravity = 971
	nighthawk.dlc2_Bombs={}
	nighthawk.Gravity = 971
end
local mt = FindProjectile("mortar")
if mt then
	lbomb = DeepCopy(mt)
	lbomb.SaveName = "lbomb"
	--lbomb.ProjectileSprite = path.."/weapons/media/lbomb.png"
	lbomb.Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Scale = 4,
			Sprite = path.."/weapons/media/lbomb.png",
		}
	}
	lbomb.ProjectileDamage = 60
	lbomb.ProjectileDrag = 12
	lbomb.Gravity = 600
	lbomb.AntiAirHitpoints = 7
	lbomb.AntiAirDamage = 2
	lbomb.ProjectileShootDownRadius = 50
	lbomb.ProjectileSplashDamage = 100
	lbomb.ProjectileSplashDamageMaxRadius = 100
	lbomb.IncendiaryRadius = 100
	table.insert(Projectiles,lbomb)
end
if thunderbolt then
	thunderbolt.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*1.2
	nighthawk.AntiAirHitpoints = nighthawk.AntiAirHitpoints*1.2
	paveway.AntiAirHitpoints = paveway.AntiAirHitpoints*2.0

	rcpl = DeepCopy(thunderbolt)--火箭机
	rcpl.SaveName = "rcpl"
	rcpl.ProjectileSprite = nil
	rcpl.Gravity = -50
	rcpl.dlc2_Bombs.OffsetX = 200
	rcpl.dlc2_Bombs.Period = 0.2
	rcpl.dlc2_Bombs.Count = 8
	rcpl.dlc2_Bombs.Projectile = "sbrc"
	rcpl.dlc2_Bombs.Speed = 6000
	rcpl.dlc2_Bombs.OffsetY = 80
	rcpl.dlc2_Bombs.OffsetX = 600
	rcpl.dlc2_Bombs.FireEffect = nil
	rcpl.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*0.8
	rcpl.dlc2_Bombs.BankingLookahead = 500
	rcpl.Projectile = 
	{
		Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = thunderbolt.ProjectileSprite,
				Scale = 2.4,
				Pivot = {0,0},
				ChildrenBehind = 
				{
					{
						Name = "dzrc",
						Scale = 0.4,
						Angle = 0,
						--Offset = { 2, 2 },
						Pivot = {0.08,-0.16},
						--PivotOffset = { 2, 2 },
						Sprite = path.."/weapons/media/dzne2.png",
					}

				},
				
			}

	}
	table.insert(Projectiles, rcpl)

	topl = DeepCopy(thunderbolt)--鱼雷机
	topl.SaveName = "topl"
	topl.ProjectileSprite = nil
	topl.Gravity = 200
	topl.dlc2_Bombs.OffsetX = 200
	topl.dlc2_Bombs.Period = 0.1
	topl.dlc2_Bombs.Count = 1
	topl.dlc2_Bombs.Projectile = "dztopl"
	topl.dlc2_Bombs.Speed = 800
	topl.dlc2_Bombs.OffsetY = 300
	topl.dlc2_Bombs.FireEffect = nil
	topl.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*1.2
	topl.Projectile = 
	{
		Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = thunderbolt.ProjectileSprite,
				Scale = 2.4,
				Pivot = {0,0},
				ChildrenBehind = 
				{
					{
						Name = "dzto",
						Scale = 0.4,
						Angle = 0,
						--Offset = { 2, 2 },
						Pivot = {0.08,-0.16},
						--PivotOffset = { 2, 2 },
						Sprite = path.."/weapons/dzto/dzto.png",
					}

				},
				
			}

	}
	table.insert(Projectiles, topl)

	refhepl = DeepCopy(thunderbolt)
	refhepl.SaveName = "refhepl"
	refhepl.Gravity = 0
	refhepl.ProjectileSprite = nil
	refhepl.dlc2_Bombs.OffsetX = 70
	refhepl.dlc2_Bombs.Period = 0.1
	refhepl.dlc2_Bombs.Count = 1
	refhepl.dlc2_Bombs.Projectile = "refbombHE"
	refhepl.dlc2_Bombs.Speed = 2400
	refhepl.dlc2_Bombs.OffsetY = 200
	refhepl.dlc2_Bombs.FireEffect = nil
	refhepl.AntiAirHitpoints = nighthawk.AntiAirHitpoints*0.7
	refhepl.Projectile = 
	{
		Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = thunderbolt.ProjectileSprite,
				Scale = 2.4,
				Pivot = {0,0},
				ChildrenBehind = 
				{
					{
					Name = "refbomb",
					Scale = 0.6,
					Angle = 0,
					Sprite = path.."/weapons/media/refbombHE.png",
					Pivot = {0.08,-0.2},
					}
				},
				
			}

	}
	--refhepl.TrailEffect = thunderbolt.TrailEffect
	subpstart = { Effect = nil, Projectile = { Count = 1, Type = "submineplane2", StdDev = 0.0},Splash = false,Terminate = true,Offset = 0, }
	subpdrop = { Effect = nil, Projectile = { Count = 1, Type = "dzcannon", StdDev = 0.4,Speed = 800},Splash = false,Terminate = false,Offset = 10, }
	subp = DeepCopy(thunderbolt)
	subp.SaveName = "submineplane"
	subp.Gravity = 0
	subp.dlc2_Bombs = nil
	subp.Effects.Age = 
	{
	
				t30000 = subpstart,
		
	}
	subp.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*1.4
	table.insert(Projectiles, subp)

	subp2 = DeepCopy(thunderbolt)
	subp2.SaveName = "submineplane2"
	subp2.Gravity = 0
	subp2.dlc2_Bombs = nil
	subp2.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*0.7
	
	subp2.Effects.Age = 
	{
	
				t100 = subpdrop,
				t700 = subpdrop,
				t1300 = subpdrop,
				t1900 = subpdrop,
				t2500 = subpdrop,
				t3100 = subpdrop,
	}
	table.insert(Projectiles, subp2)

	lb12 = { Effect = nil, Projectile = { Count = 1, Type = "lb2", StdDev = 0.0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	lb2b = { Effect = nil, Projectile = { Count = 1, Type = "lbomb", StdDev = 0.3,Speed = 800},Splash = false,Terminate = false, KeepAge = keepAge,Offset = 10, }
	lightbomber = DeepCopy(thunderbolt)
	lightbomber.SaveName = "lightbomber"
	lightbomber.Gravity = 0
	lightbomber.dlc2_Bombs = nil
	lightbomber.Effects.Age = 
	{
	
				t30000 = lb12,
		
	}
	lightbomber.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*0.7
	table.insert(Projectiles, lightbomber)

	lb2 = DeepCopy(thunderbolt)
	lb2.SaveName = "lb2"
	lb2.Gravity = 0
	lb2.dlc2_Bombs = nil
	lb2.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*0.7
	
	lb2.Effects.Age = 
	{
	
				t150 = lb2b,
				t300 = lb2b,
				t450 = lb2b,
				t600 = lb2b,
				t750 = lb2b,
				t900 = lb2b,
				t1050 = lb2b,
				t1200 = lb2b,
				t1350 = lb2b,
				t1500 = lb2b,
				t1650 = lb2b,
				t1800 = lb2b,
				t1950 = lb2b,
				t2100 = lb2b,
		
	}
	table.insert(Projectiles, lb2)


	smk1 = { Effect = nil, Projectile = { Count = 1, Type = "dzsmoker2", StdDev = 0.0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	smk2 = { Effect = nil, Projectile = { Count = 1, Type = "dzsmokeb", StdDev = 0.3,Speed = 800},Splash = false,Terminate = false, KeepAge = keepAge,Offset = 10, }
	dzsmoker = DeepCopy(thunderbolt)
	dzsmoker.SaveName = "dzsmoker"
	dzsmoker.Gravity = 0
	dzsmoker.dlc2_Bombs = nil
	
		 dzsmoker.Effects.Age = 
		 	{
				t30000 = smk1,
			}
	
		
		
	
	dzsmoker.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*1.8
	table.insert(Projectiles, dzsmoker)

	dzsmoker2 = DeepCopy(thunderbolt)
	dzsmoker2.SaveName = "dzsmoker2"
	dzsmoker2.Gravity = 0
	dzsmoker2.dlc2_Bombs = nil
	dzsmoker2.AntiAirHitpoints = thunderbolt.AntiAirHitpoints*1.8
	dzsmoker2.Effects.Age= 
	{
		
				t100 = smk2,
				t200 = smk2,
				t300 = smk2,
				t400 = smk2,
				t500 = smk2,
				t600 = smk2,
				t700 = smk2,
				t800 = smk2,
				t900 = smk2,
				t1000 = smk2,
				t1100 = smk2,
				t1200 = smk2,
				t1300 = smk2,
				t1400 = smk2,
				t1500 = smk2,
				t1600 = smk2,
				t1700 = smk2,
				t1800 = smk2,
				t1900 = smk2,
				t2000 = smk2,
				t2100 = smk2,
				t2200 = smk2,
				t2300 = smk2,
				t2400 = smk2,
				t2500 = smk2,
				t2600 = smk2,
				t2700 = smk2,
				t2800 = smk2,
				t2900 = smk2,
				t3000 = smk2,
				t3100 = smk2,
				t3200 = smk2,
				t3300 = smk2,
				t3400 = smk2,
				t3500 = smk2,
			
	}
	table.insert(Projectiles, dzsmoker2)

	
end
if nighthawk and nighthawk.dlc2_bombs ~= {} then
	dznthk = DeepCopy(nighthawk)
	dznthk.SaveName = "dznthk"
	dznthk.dlc2_Bombs.OffsetX = 200
	dznthk.dlc2_Bombs.Period = 0.1
	dznthk.dlc2_Bombs.FireEffect = nil
	dznthk.dlc2_Bombs.Speed = 3000
	dznthk.dlc2_Bombs.OffsetY = 200
	dznthk.dlc2_Bombs.Count = 1
	dznthk.dlc2_Bombs.AIAnticipatesDelivery = true
	dznthk.dlc2_Bombs.Projectile = "dzhevbomb"
	--dznthk.dlc2_Bombs.FireEffect = nil
	dznthk.AntiAirHitpoints =nighthawk.AntiAirHitpoints*1.1
	table.insert(Projectiles, dznthk)
end
if paveway then 
	paveway.ExplodeOnTouch =true
	paveway.PenetrationDamage = 800
	if not paveway.DamageMultiplier then
	paveway.DamageMultiplier ={}
	end	
	table.insert(paveway.DamageMultiplier ,
		{	
			{ SaveName = "dzar_door", Direct = 3, Splash = 3 },
			{ SaveName = "dzar", Direct = 3, Splash = 3 },	
		}
	)
	dzhevbomb = DeepCopy(paveway)
	dzhevbomb.SaveName = "dzhevbomb"
	dzhevbomb.ProjectileSprite = path.."/weapons/media/dzhevbomb.tga"
	dzhevbomb.PenetrationDamage = 1200
	dzhevbomb.IncendiaryRadius = paveway.IncendiaryRadius *1.2
	dzhevbomb.IncendiaryRadiusHeated =  paveway.IncendiaryRadiusHeated *1.3
	dzhevbomb.ProjectileSplashDamage = 80.0
	dzhevbomb.ProjectileSplashDamageMaxRadius = 140.0
	dzhevbomb.ProjectileSplashMaxForce = 200000
	dzhevbomb.AntiAirHitpoints = paveway.AntiAirHitpoints*2
	dzhevbomb.MaxAge = 30
	table.insert(Projectiles, dzhevbomb)

	refbombHEinw = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua",SpeedLossFactor = 0.92,Projectile = {Count = 1, Type = "uwrefbombHE"},KeepAge = true,KeepHitpointLoss = true,Splash = false,Terminate = true,Offset = 30}
	refbombHEoutw = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua",SpeedLossFactor = 0.92,Projectile = {Count = 1, Type = "refbombHE"},KeepAge = true,KeepHitpointLoss = true,Splash = false,Terminate = true,Offset = 30}
	refbombHE = DeepCopy(paveway)
	refbombHE.SaveName = "refbombHE"
	refbombHE.ProjectileSprite = nil
	refbombHE.ProjectileMass = 10
	refbombHE.Impact = 10000
	--refbombHE.CollisionLookaheadDist = 60
	refbombHE.PenetrationDamage = 420
	refbombHE.ProjectileDrag = 1.4
	refbombHE.ExplodeOnTouch = true
	refbombHE.ProjectileThickness = 10
	refbombHE.IncendiaryRadius = paveway.IncendiaryRadius *0.5
	refbombHE.IncendiaryRadiusHeated =  paveway.IncendiaryRadiusHeated *1.2
	refbombHE.ProjectileSplashDamage = 100.0
	refbombHE.ProjectileSplashDamageMaxRadius = 100.0
	refbombHE.ProjectileSplashMaxForce = 170000
	refbombHE.AntiAirHitpoints = paveway.AntiAirHitpoints*0.8
	--refbombHE.DeflectedByTerrain=true
	refbombHE.MaxAge =12
	refbombHE.MinAge = 11.9
	refbombHE.MaxAgeUnderwater = 12
	refbombHE.SpeedIndicatorFactor = 0
	refbombHE.Projectile = 
	{
		Root =
			{
				Name = "Root",
				Angle = 0,
				Sprite = path.."/weapons/media/refbombHE.png",
				Scale = 1.8,
				Pivot = {0,0},
			}

	}
	refbombHE.Effects.Impact = {
		["whitecaps"] = refbombHEinw,
		["default"] = {Effect = "mods/dlc2/effects/impact_paveway.lua",Terminate = true,Splash = true},
	}
	refbombHE.Effects.Age = {
		t11900 ={Effect = "mods/dlc2/effects/impact_paveway.lua",Terminate = true,Splash = true},
	}
	uwrefbombHE = DeepCopy(refbombHE)
	uwrefbombHE.SaveName = "uwrefbombHE"
	uwrefbombHE.ProjectileDrag = 1.0
	uwrefbombHE.Gravity = -3400
	uwrefbombHE.Effects.Impact = {
		["whitecaps"] = refbombHEoutw,
		["default"] = {Effect = "mods/dlc2/effects/impact_paveway.lua",Terminate = true,Splash = true},
	}
	uwrefbombHE.Effects.Age = {
		t11900 ={Effect = "mods/dlc2/effects/impact_paveway.lua",Terminate = true,Splash = true},
	}
	

	table.insert(Projectiles, refbombHE)
	table.insert(Projectiles, uwrefbombHE)
	table.insert(Projectiles, refhepl)


	fab9000 = DeepCopy(dzhevbomb)
	fab9000.SaveName = "fab9000"
	fab9000.ProjectileSprite = path.."/weapons/media/fab9000.png"
	fab9000.WeaponDamageBonus = 600.0
	fab9000.DeviceSplashDamage = 800
	fab9000.DeviceSplashDamageMaxRadius = 360
	fab9000.PenetrationDamage = 400
	fab9000.ProjectileSplashDamage = 220.0
	fab9000.ProjectileSplashDamageMaxRadius = 400.0
	fab9000.ProjectileSplashMaxForce = 600000
	fab9000.AntiAirDamage = 200
	fab9000.AntiAirHitpoints = 240
	fab9000.Effects.Impact = {["default"] = path.."/effects/defgun_hit.lua",}
	table.insert(Projectiles, fab9000)


	dzsmokebb = { Effect = nil, Projectile = { Count = 1, Type = "dzsmokebomb", StdDev = 1},Splash = false,Terminate = true, Offset = 0, }
	thbomb = FindProjectile("bomb")
	dzsmokeb = DeepCopy(thbomb)
	dzsmokeb.SaveName = "dzsmokeb"
	dzsmokeb.ProjectileSprite = path.."/weapons/media/dzsmokeb.png"
	dzsmokeb.ProjetileDamage = 5
	dzsmokeb.PenetrationDamage = 0
	dzsmokeb.ExplodeOnTouch = true
	dzsmokeb.IncendiaryRadius = 0
	dzsmokeb.Impact = 10000
	dzsmokeb.IncendiaryRadiusHeated =  0
	dzsmokeb.ProjectileSplashDamage = 0.0
	dzsmokeb.ProjectileSplashDamageMaxRadius = 0.0
	dzsmokeb.ProjectileSplashMaxForce = 0
	dzsmokeb.AntiAirHitpoints = 10
	dzsmokeb.AntiAirDamage = 10
	dzsmokeb.Effects = 
	{
		Impact =
			{
				["default"] = dzsmokebb,
			},
		Age = 
		{
			t1100 = dzsmokebb,
		},
	}
	MinAge = 0.7
	MaxAge = 1.1
	table.insert(Projectiles, dzsmokeb)
end












aphe = "effects/missile_structure_hit.lua"
smallArmsFlare = "effects/small_arms_flare.lua" 
flamingTrail = path.."/effects/flaming_trail.lua"
--MakeFlamingVersion("dznest",	1.0,	0.4, flamingTrail, 50, smallArmsFlare,aphe)
--MakeFlamingVersion("dznestoff",	0.3,	0.4, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("76",	0.5,	0.4, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("g130",	0.5,	0.4, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("g130HE",	0.5,	0.4, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("g130b",	0.5,	0.2, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP",	0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunSAP",	0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP2",	0.5,	0.3, flamingTrail, 100, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP21",	0.5,	0.3, flamingTrail, 100, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP3",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAPHEV3",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP38",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP4",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP5",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunSAP2",	0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunSAP3",	0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)

MakeFlamingVersion("dzdeckgunAPb",	0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP2b",	0.5,	0.3, flamingTrail, 100, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP21b",0.5,	0.3, flamingTrail, 100, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP3b",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAPHEV3b",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP38b",0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP4b",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunAP5b",	0.5,	0.3, flamingTrail, 150, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunSAPb",	0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunSAP2b",0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunSAP3b",0.5,	0.3, flamingTrail, 50, smallArmsFlare,aphe)


MakeFlamingVersion("dzcannon",	1,	0.4, flamingTrail, 100, nil,aphe)
MakeFlamingVersion("dzdeckgunHE",	2,	2.4, flamingTrail, 140, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunHE2",	2,	4.8, flamingTrail, 220, smallArmsFlare,aphe)
MakeFlamingVersion("kuangdunHE",	2,	4.8, flamingTrail, 220, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunHEm",	2,	4.8, flamingTrail, 220, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunHE3",	2,	5.6, flamingTrail, 300, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunHE4",	2,	5.6, flamingTrail, 300, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunHE5",	2,	5.6, flamingTrail, 300, smallArmsFlare,aphe)

MakeFlamingVersion("g130SAPb",	2,	0.3, flamingTrail, 300, smallArmsFlare,aphe)

MakeFlamingVersion("mtl",	2,	1.8, flamingTrail, 300, smallArmsFlare,aphe)
MakeFlamingVersion("mtlhe",	2,	1.8, flamingTrail, 300, smallArmsFlare,aphe)
MakeFlamingVersion("leoHE",	1.6,60.0, flamingTrail, 360, smallArmsFlare,aphe)

MakeFlamingVersion("dzdeckgunEMP1",	2,	0.2, flamingTrail, 300, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunEMP2",	2,	0.2, flamingTrail, 300, smallArmsFlare,aphe)
MakeFlamingVersion("dzdeckgunEMP3",	2,	0.2, flamingTrail, 300, smallArmsFlare,aphe)

MakeFlamingVersion("dzmg",	1.25,	0.1, flamingTrail, nil, smallArmsFlare)
MakeFlamingVersion("flakb",	1.25,	0.1, flamingTrail, nil, smallArmsFlare)
MakeFlamingVersion("flakold",	1.25,	0.1, flamingTrail, nil, smallArmsFlare)
MakeFlamingVersion("dzb",	1.25,	0.1, flamingTrail, nil, smallArmsFlare)

MakeFlamingVersion("hdzmg",	1.25,	0.5, flamingTrail, nil, smallArmsFlare)
MakeFlamingVersion("dzelc",	2,	2, flamingTrail, nil, smallArmsFlare)
MakeFlamingVersion("dzelch",2,	2, flamingTrail, nil, smallArmsFlare)
MakeFlamingVersion("dzmt",	0.2,	2, flamingTrail, nil, smallArmsFlare)








bounce = FindProjectile("dzdeckgunAP")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
	bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
bounce = FindProjectile("dzdeckgunAP3")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
		bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
bounce = FindProjectile("dzdeckgunAP2")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
		bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
bounce = FindProjectile("dzdeckgunAP21")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
		bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
bounce = FindProjectile("dzdeckgunAPb")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
	bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
bounce = FindProjectile("dzdeckgunAP3b")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
		bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
bounce = FindProjectile("dzdeckgunAP2b")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
		bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
bounce = FindProjectile("dzdeckgunAP21b")
if bounce then
    bounce.Effects.Deflect["dzar"] = "effects/impact_heavy.lua"
		bounce.Effects.Deflect["dzar_door"] = "effects/impact_heavy.lua"
end
gs = path.."/effects/gs.lua"
table.insert(Projectiles,--76（130）
{
		SaveName = "76yj",
		ProjectileType = "mortar",
		ProjectileSprite = path.."/weapons/media/gs.png",
		DrawBlurredProjectile = false,
		
		ProjectileMass = 10,
		ProjectileDrag = 0.7,
		ProjectileIncendiary = false,
		--IncendiaryRadius = 160,
		--IncendiaryRadiusHeated = 140,
		IgnitesBackgroundMaterials = false,
		DestroyShields = false,
		DeflectedByShields = true,
		ExplodeOnTouch = false,
		ProjectileThickness = 15.0,
		ProjectileShootDownRadius = 20,
		Impact = 20000,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 80.0,
		WeaponDamageBonus = -60.0,
		ProjectileSplashDamage = 40.0,
		ProjectileSplashDamageMaxRadius = 50.0,
		AntiAirDamage = 100,
		AntiAirHitpoints = 60,
		SpeedIndicatorFactor =0.001,
		
		TrailEffect = "effects/sniper_trail.lua",

		Effects =
		{
			Impact =
			{
				["device"] = gs,
				["foundations"] = gs,
				["rocks01"] = gs,
				["bracing"] = gs,
				["armour"] =gs,
				["door"] = gs,
				["default"] = gs,
			},	
			Deflect =
			{
				["armour"] = gs,
				["door"] = gs,
				["shield"] = gs,
			},
		},
		MomentumThreshold =
		{
			["armour"] = { Reflect = 30000, Penetrate = 50000 },
			["door"] = { Reflect = 30000, Penetrate = 50000 },
			["shield"] = { Reflect = 999999999999, Penetrate = 999999999 },
		},
		DamageMultiplier =
		{
			{ SaveName = "bracing", Direct = 1.25, Splash = 1.25 },
			{ SaveName = "sandbags", Direct = 0.2, Splash = 0.2 },
			{ SaveName = "armor", Direct = 0.1, Splash = 0.0 },
		},
})
table.insert(Projectiles,--76（130）
{
	ProjectileIncendiary = false,
	DeflectedByShields = true,
	ProjectileDrag = 0,
	ProjectileType = "mortar",
	Gravity = 0,
	Impact = 50000,
	ProjectileThickness = 10000,
	ImpactSize = 100,
	MaxAge = 40.1,
	MinAge =40,
	DrawBlurredProjectile =false,
	--DrawFromAge = 0.03999999910593,
	AntiAirDamage = 1000000,
	SpeedIndicatorFactor = 0.050000000745058,
	ProjectileDamage = 10,
	DamageMultiplier = 
	{
		{
			Direct = 0,
			AntiAir = 1,
			SaveName = "default",
			Splash = 0,
		},
		{
			Ray = 0,
			SaveName = "thunderbolt",
			Splash = 0,
			Direct = 0,
			Fire = 0,
			Block = 0,
			AntiAir = 0,
		},
		{
			Ray = 0,
			SaveName = "nighthawk",
			Splash = 0,
			Direct = 0,
			Fire = 0,
			Block = 0,
			AntiAir = 0,
		},
	},
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterials = false,
	ProjectileShootDownRadius = 200,
	Effects = 
	{
		Deflect = 
		{
			armour = "effects/beam_hit.lua",
			door = "effects/beam_hit.lua",
			shield = "effects/beam_hit.lua",
			barrier = "effects/beam_hit.lua",
			backbarrier = "effects/beam_hit.lua",
			blastdoor = "effects/beam_hit.lua",
		},
		Impact = 
		{
			foundations = "effects/beam_hit_ground.lua",
			default = "effects/beam_hit.lua",
			antiair = "effects/beam_antiair.lua",
			shield = "effects/energy_absorb.lua",
			rocks01 = "effects/beam_hit_ground.lua",
		},
	},
	SaveName = "dzdome_barrier",
	ProjectileSprite = path.."/weapons/media/dzdome",
	ProjectileMass = 1,
	ProjectileSpriteMipMap = true,
	DeflectedByTerrain = false,
	AntiAirHitpoints = 1000000,
	ExplodeOnTouch = false,
	IgnitesBackgroundMaterialsPassingSource = false,
})
table.insert(Projectiles,--76（130）
{
	DeflectedByShields = false,
	ProjectileDrag = 0,
	ProjectileType = "bullet",
	Additive = true,
	CollidesWithProjectiles = false,
	AntiAirDamage = 0,
	BeamScrollRate = 0,
	Effects = 
	{
		Deflect = 
		{
			default = 
			{
				Terminate = true,
				Effect = "",
			},
		},
		Age = 
		{
			t200 = 
			{
				Projectile = 
				{
					Speed = 5,
					Type = "dzdome_barrier",
					Count = 1,
					StdDev = 0.001,
				},
				Terminate = true,
				Offset = -60,
				Effect = "mods/dlc2/effects/dome_fx.lua",
			},
		},
		Impact = 
		{
			default = 
			{
				Terminate = true,
				Effect = "",
			},
		},
	},
	ProjectileThickness = 2,
	ProjectileDamage = 0,
	ScattershotNoTrajectory = true,
	BeamTileRate = 0.019999999552965,
	SpeedIndicatorFactor = 5,
	ProjectileShootDownRadius = 150,
	ProjectileSpriteMipMap = false,
	CollidesWithStructure= false,
	CanBeShotDown = false,
	--ProjectileSprite = "mods/dlc2/weapons/media/energy_bolt.dds",
	SaveName = "dzdome",
	Impact = 10000,
	Gravity = 9.9999997473788e-05,
	ProjectileMass = 9.9999997473788e-05,
	ExplodeOnTouch = false,
	DrawBlurredProjectile = true,
})






--[[RegisterApplyMod(function()
local BC_on = false

if not FindProjectile("BCmissile") then
   Log("Error:Requiring mod:Biochemicalweapons(not an exception,but BCandHH stuff wont active in this match)")
else 
    BC_on = true
end
--以上是检测前置模组--
if BC_on  then]]--
	
    BCmissile = path.."/effects/BCmissile_trail.lua"
	
    bcdztohit ={Effect = path .. "/effects/bcdztohit.lua",Projectile = { Count = 40, Type = "BCmissileburst", Speed = 1800, StdDev = 0.7 }, Offset = 0, Terminate = true,}
	  bchyhit ={Effect = path .. "/effects/bcdztohit.lua",Projectile = { Count = 40, Type = "BCmissileburst", Speed = 1800, StdDev = 0.7 }, Offset = 0, Terminate = true,}
    bcdztooff = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua", Projectile = { Count = 1, Type = "bcdzto", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	bcdztoon = { Effect = "mods/dlc2_oceans_base/effects/splash_large.lua", Projectile = { Count = 1, Type = "bcdztouw", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	engoff = { Effect = nil, Projectile = { Count = 1, Type = "normaldzto", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	table.insert(Projectiles,--水上
    {   SaveName = "normaldzto",
        ProjectileType = "missile",
        DrawBlurredProjectile = false,
        ProjectileMass = 20,
        ProjectileDrag = 60,
        DisableShields = true,
        DeflectedByShields = false,
        ExplodeOnTouch = true,
        ProjectileThickness = 4.0,
        ProjectileShootDownRadius = 15,
        Impact = 1000,
        BeamTileRate = 0.02,
        BeamScrollRate = 0.0,
        ProjectileDamage = 0.0,
        ProjectileSplashDamage = 50.0,
        ProjectileSplashDamageMaxRadius = 100.0,
        ProjectileSplashMaxForce = 100,
        SpeedIndicatorFactor = 0.05,
        IgnitesBackgroundMaterials = false,
        IgnitesBackgroundMaterialsPassing = false,
        IgnitesBackgroundMaterialsPassingSource = false,
        EMPSensitivity = 0,
        Gravity = 1000,
        AntiAirHitpoints = 240,
        AntiAirDamage = 60,
        MaxAgeUnderwater = 60,
		TrailEffect = path.."/effects/damaged_trail.lua",
        Projectile =
        {
            Root =
            {
                Name = "Root",
                Angle = 0,
                Sprite = path .. "/weapons/media/bcto.png",
                Pivot = { 0, 0.0 },
    
            }
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
            RocketThrust = 0,
            RocketThrustChange = 0,
            ErraticThrust = 0.1,
            CruiseTargetDistance = 0.00001,
            CruiseTargetDuration = 0.00005,
            TargetRearOffsetDistance = 100000,
            MinTargetUpdateDistance = 2000,
        },
    
        Effects =
        {
            Impact =
            {
                
                ["default"] = "effects/missile_structure_hit.lua",
               
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
	table.insert(Projectiles,--水上
    {   SaveName = "bcdzto",
      
	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 60,
	DisableShields = true,
        DeflectedByShields = false,
        ExplodeOnTouch = true,
        ProjectileThickness = 4.0,
        ProjectileShootDownRadius = 15,
        Impact = 1000,
        BeamTileRate = 0.02,
        BeamScrollRate = 0.0,
        ProjectileDamage = 0.0,
        ProjectileSplashDamage = 50.0,
        ProjectileSplashDamageMaxRadius = 100.0,
        ProjectileSplashMaxForce = 100,
        SpeedIndicatorFactor = 0.05,
        IgnitesBackgroundMaterials = false,
        IgnitesBackgroundMaterialsPassing = false,
        IgnitesBackgroundMaterialsPassingSource = false,
        EMPSensitivity = 0,
        Gravity = 1000,
        AntiAirHitpoints = 240,
        AntiAirDamage = 60,
        MaxAgeUnderwater = 60,
	Missile =
	{
		ThrustAngleExtent = 0.001,
		ErraticAngleExtentStdDev = 0.1,
		ErraticAngleExtentMax = 0.6,
		MaxSteerPerSecond = 200,
		MaxSteerPerSecondErratic = 0,
		ErraticAnglePeriodMean = 0.00001,
		ErraticAnglePeriodStdDev = 0.000001,
		RocketThrust = 0,
		LaunchThrust = 80000,
		RocketThrustChange = 5000,
		ErraticThrust = 1.4,
		CruiseTargetDistance = 0.00001,
		CruiseTargetDuration = 0.00005,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

        Projectile =
        {
            Root =
            {
                Name = "Root",
                Angle = 0,
                Sprite = path .. "/weapons/media/bcto.png",
                Pivot = { 0, 0.0 },
    
            }
        },
        Effects =
        {
            Impact =
            {
                ["firebeam"] = engoff,
                ["default"] = bcdztohit,
                ["whitecaps"] = bcdztoon,
            },
            Deflect =
            {
            },
            Age =
                {
                    t100 = bcdztoon,
                },
        },
    
        DamageMultiplier =
        {
            { SaveName = "shield", Direct = 0.25, Splash = 0.25 },
        },
    })
    table.insert(Projectiles,--水下
    {
		SaveName = "bcdztouw",
        ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 10,
	ProjectileDrag = 80,
	DisableShields = true,
	DeflectedByShields = false,
	ProjectileIncendiary = true,
	--IncendiaryRadius = 0,
	--IncendiaryRadiusHeated = 0,
	ExplodeOnTouch = true,
	ProjectileThickness = 20,
	ProjectileShootDownRadius = 60,
	Impact = 1000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 0.0,
	ProjectileSplashDamage = 50.0,
	ProjectileSplashDamageMaxRadius = 100.0,
	ProjectileSplashMaxForce = 100,
	SpeedIndicatorFactor = 0.05,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 0,
	AntiAirHitpoints = 380,
	MaxAgeUnderwater = 60,
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
        Projectile =
        {
            Root =
            {
                Name = "Root",
                Angle = 0,
                Sprite = path .. "/weapons/media/bcto.png",
                Pivot = { 0.0, 0.0 },
    
            }
        },
    
        TrailEffect = BCmissile,
        Effects =
        {
            Impact =
            {
				["firebeam"] = engoff,
                ["default"] =bcdztohit,
                ["whitecaps"] = bcdztooff,
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

	
	bct2r = { Effect = nil, Projectile = { Count = 1, Type = "bct2", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	bct3r = { Effect = nil, Projectile = { Count = 1, Type = "bct3", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	bct4r = { Effect = nil, Projectile = { Count = 1, Type = "bct4", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	bct5r = { Effect = path .. "/effects/intohs.lua", Projectile = { Count = 1, Type = "bct5", StdDev = 0},Splash = false,Terminate = true, KeepAge = keepAge,Offset = 10, }
	table.insert(Projectiles,--超音速
{
		SaveName = "bct1",

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
		AntiAirHitpoints = 120,
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
				t700 = bct2r,
			},
		},
})
	table.insert(Projectiles,--超2
{
		SaveName = "bct2",

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
		AntiAirHitpoints = 80,
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

	
	TrailEffect = path.."/effects/BClantch_trail.lua",
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
			RocketThrust = 115000,
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
				t2300 = bct3r,
			},
		
		},
			
		
})
table.insert(Projectiles,--超3
{
		SaveName = "bct3",

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
		AntiAirHitpoints = 60,
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

	
	TrailEffect = path.."/effects/BClantch_trail.lua",
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
			LaunchThrust = 400000,
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
				t1000 = bct4r,
			},
		},
})
table.insert(Projectiles,--超4
{
		SaveName = "bct4",

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
		AntiAirHitpoints = 80,
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

	
		TrailEffect = path.."/effects/BClantch_trail.lua",
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
			LaunchThrust = 500000,
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
				t1000 = bct5r,
			},
		
		},
			
		
})
table.insert(Projectiles,--超5
{
		SaveName = "bct5",

		ProjectileType = "missile",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 16,
		DisableShields = true,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		EnemyCanTeleport = false,
		ProjectileThickness = 100.0,
		ProjectileShootDownRadius = 100,
		ProjectileIncendiary = true,
		IncendiaryRadius =0,
		IncendiaryRadiusHeated = 0,
		Impact = 0,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 100,
		ProjectileSplashDamage = 100,
		ProjectileSplashDamageMaxRadius = 100,
		ProjectileSplashMaxForce = 100000,
		SpeedIndicatorFactor = 0.05,
		MaxAge = 60,
		EMPSensitivity = 6,
		EMPMissileProbabilityOfCircling = 0.35,
		FlipSpriteFacingLeft = false,
		AntiAirHitpoints = 100,
		DeviceDamageBonus = 300,
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
		TrailEffect = path.."/effects/BCdz_trail.lua",
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
				
                ["default"] =bchyhit,
				["antiair"] =  "effects/mushroom_cloud.lua",
                
            },
			Deflect =
			{
				["armour"] = "effects/mushroom_cloud.lua",
				["door"] = "effects/mushroom_cloud.lua",
				["shield"] = "effects/mushroom_cloud.lua",
			},
			
		},
})
--[[
if FindProjectile("uraniumcannon") == nil then
	table.insert(Projectiles,
	{
        MomentumThreshold = 
        {
            default = 
            {
                Reflect = 1,
                Penetrate = 0,
            },
        },
        DeflectedByShields = false,
        ExplodeOnTouch = false,
        ProjectileDrag = 0.125,
        SaveName = "uraniumcannon",
        ProjectileType = "mortar",
        IncendiaryRadius = 1,
        ProjectileIncendiaryIgniteNeighbours = false,
        ProjectileMass = 50,
        DrawFromAge = 0.03999999910593,
        MaxAge = 0.51999998092651,
        Gravity = 0,
        AlwaysPassDevices = false,
        WeaponDamageBonus = 20,
        BeamTileRate = 0.019999999552965,
        BeamScrollRate = 0,
        Impact = 30000,
        ProjectileThickness = 4,
        ProjectileDamage = 50,
        DamageMultiplier = 
        {
            [1] = 
            {
                Direct = 0,
                Fire = 0,
                SaveName = "reactor",
                Splash = 0,
            },
            [2] = 
            {
                SaveName = "bracing",
                Block = 0,
            },
            [3] = 
            {
                SaveName = "battery",
                Direct = 0.80000001192093,
            },
            [4] = 
            {
                SaveName = "battery2",
                Direct = 0.80000001192093,
            },
        },
        ProjectileSprite = "weapons/media/bullet",
        PenetrationDamage = 1200,
        ProjectileShootDownRadius = 15,
        Effects = 
        {
            Deflect = 
            {
                bracing = "effects/bullet_bracing_hit.lua",
                armour = "effects/bullet_armor_ricochet.lua",
                shield = "effects/energy_shield_ricochet.lua",
                backbracing = "effects/bullet_bracing_hit.lua",
                door = "effects/bullet_armor_ricochet.lua",
            },
            Penetrate = 
            {
                shield = "effects/energy_shield_ricochet.lua",
                bracing = "effects/bullet_bracing_hit.lua",
                armour = "effects/bullet_armor_hit.lua",
                door = "effects/bullet_armor_hit.lua",
            },
            Impact = 
            {
                foundations = "effects/ground_hit.lua",
                armour = "effects/bullet_armor_hit.lua",
                rocks01 = "effects/ground_hit.lua",
                backbracing = "effects/bullet_bracing_hit.lua",
                sandbags = 
                {
                    Effect = "effects/bullet_sandbag_hit.lua",
                    Terminate = true,
                },
                bracing = "effects/bullet_bracing_hit.lua",
                default = 
                {
                    Effect = "effects/impact_light.lua",
                    Terminate = false,
                },
                device = 
                {
                    Effect = "effects/impact_light.lua",
                    Terminate = true,
                },
                shield = 
                {
                    Effect = "effects/impact_light.lua",
                    Terminate = true,
                },
                door = "effects/bullet_armor_hit.lua",
            },
        },
        ProjectileSpriteMipMap = true,
        TrailEffect = "effects/sniper_trail.lua",
        DrawBlurredProjectile = true,
        SpeedIndicatorFactor = 0.050000000745058,
        PenetrationSpeedMultiplier = 1,
        ProjectileIncendiary = true,
        IncendiaryRadiusHeated = 25,
        IgnitesBackgroundMaterials = true,
    })
end
--end
--end)
]]--



if FindProjectile("sbpp_sidewinder") then
	dofile(path.."/weapons/sbplanes.lua")
	Log("dzplane pilotable")
	end

--Buster--
--Copied from AEU,If there is any infringement, please contact me, and I will remove it immediately(Translated by AI)
-- Buster explosions and trails Effects (some are customised)
BusterMortarTrail = path .. "/effects/buster_mortar_trail.lua"
BusterAPTrail = path.."/effects/busterap.lua"
BusterAP152Trail = path.."/effects/busterap152.lua"
BusterDefaultExplosion = "mods/commander-cf-buster/effects/impact_uranium.lua"
BusterSniperTrail = path .. "/effects/buster_sniper_trail.lua"
BusterMissileTrail = "mods/commander-cf-buster/effects/uranium_fly_missile.lua"
BusterMissileExplosion = "mods/commander-cf-buster/effects/impact_uranium_missile.lua"
BusterDefaultTrail = "mods/commander-cf-buster/effects/uranium_fly.lua"
BusterHowitzerExplosion = "mods/commander-cf-buster/effects/impact_uranium_howitzer.lua"
BusterDeckgunExplosion = "mods/dlc2/effects/impact_uranium_turret.lua"

function ToUranium(savename, maxage, trail, ExplosionEffect, UProjCount, DUDEv ,fuseLen)-- fuseLen(ms)
	--Log("touranium std")
	local DepletedEffect = FindProjectile("uraniumcannon")
	
	if DepletedEffect then
		--Log("deturanium detected")
		local projectile = FindProjectile(savename)
		local isAPcap = isainb("APcap",projectile.dzTag)
		if not isAPcap then
			local uraniumprojectile = DeepCopy(DepletedEffect)
			uraniumprojectile.SaveName = "uranium".. savename.."pin"
			uraniumprojectile.ProjectileDamage = 10
			uraniumprojectile.MaxAge = maxage
			uraniumprojectile.Effects.Age = 
			{
				["t"..tostring(maxage*1000)] = {Effects = "effects/impact_light.lua",Terminate = true},
			}
			table.insert(Projectiles, uraniumprojectile)
			--Log("pin on")
		

			if not uraniumprojectile.Effects.ImpactDevice then uraniumprojectile.Effects.ImpactDevice = {} end

			uraniumprojectile.Effects.Impact["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Terminate = true } -- Uranium projectiles can be intercepted by shields and sandbags
			local nprojectile = DeepCopy(projectile)
			nprojectile.SaveName = "uranium_"..projectile.SaveName

			if not UProjCount then UProjCount = 1 end
			if not DUDEv then DUDEv = 0 end

			
			
			nprojectile.TrailEffect = trail
			if not isainb("AP",nprojectile.dzTag) and active then
					projectile.TrailEffect = trail
					projectile.ProjectileIncendiary = true
					projectile.Effects.Impact["default"] = { Effect = ExplosionEffect, Projectile = { Count = 1, Type = "uranium"..savename.."pin",  StdDev = 0 }, Offset = -120, Terminate = true, }
			end
			if isainb("AP",nprojectile.dzTag) then
				--Log("uraniumed")
				APDUdet = { Effect =  ExplosionEffect ,Projectile = { Count = UProjCount, Type = "uranium"..savename.."pin", Speed = 1000, StdDev = DUDEv }, Splash = true, Terminate = true, }
				nprojectile.ProjectileIncendiary = true
				nprojectile.IncendiaryRadius = 1
				nprojectile.Effects.Age =
				{
					["t"..tostring(fuseLen)] = APDUdet,
				}
			end
			table.insert(Projectiles,nprojectile)
		end
		if isAPcap and active then
			--projectile.SaveName = "uranium_"..projectile.SaveName
			projectile.TrailEffect = trail
			projectile.ProjectileIncendiary = true
			projectile.IncendiaryRadius = 1
			projectile.Effects.Impact["default"] = { Effect = ExplosionEffect, Projectile = { Count = 1, Type = "uranium_"..string.sub(savename,1,-2),  StdDev = 0 }, Offset = -120, Terminate = true, }
			local apshrapnel = FindProjectile("apshrapnel")
			if apshrapnel then
				apshrapnel.ProjectileIncendiary = true
			end
		end
	end
end

RegisterApplyMod(function()
	
	local dzs = FindProjectile("dzshield")
	if not dzs.DamageMultiplier then
		dzs.DamageMultiplier = {}
	end
	for k,v in pairs(Projectiles) do
		if v.ProjectileType == "beam" then
			if not v.DamageMultiplier then
				v.DamageMultiplier = {}
			end
			table.insert(dzs.DamageMultiplier,{ SaveName = v.SaveName, Block = 8000})
			table.insert(v.DamageMultiplier,{ SaveName = "dzshield", AntiAir = 0.0002})
		end
		if v.SaveName == "emp_beam" then
			v.AntiAirDamage = 1
			table.insert(dzs.DamageMultiplier,{ SaveName = v.SaveName, Block = 8000})
			table.insert(v.DamageMultiplier,{ SaveName = "dzshield", AntiAir = 4000})
		end
	end

end)