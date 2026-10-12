Scale = 1
SelectionWidth = 140.0
SelectionHeight = 45
SelectionOffset = { -40.0, -45.5 }
RecessionBox =
{
	Size = { 100, 25 },
	Offset = { -120, -65 },
}
CanFireUnderwater = true
WeaponMass = 600.0
HitPoints = 600.0
EnergyProductionRate = -160.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
IncendiaryRadius = 50
IncendiaryRadiusHeated = 60
StructureSplashDamage = 70
StructureSplashDamageMaxRadius = 170


ShellEffect = nil
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/device_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path.."/effects/dztoreload.lua"
ReloadEffectOffset = -0.5

BarrelLength = 70.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40

ReloadTimeIncludesBurst = false
MinFireSpeed = 3000
MaxFireSpeed = 3000.1
MinFireRadius = 700.0
MaxFireRadius = 2000.0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -2
MaxFireAngle = 2
MaxFireClamp = 0.95
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 2.0
FireStdDev = 0
FireStdDevAuto = 0
Recoil = 20000
ShowFireAngle = true
ShowFireSpeed = true
RoundsEachBurst = 1
RoundPeriod = 0.1
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12


dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dzto3-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/dzto/head3.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzto_3",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/dzto/dzto_3.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}


NodeEffects =
{
	{
		NodeName = "SteamMunitions",
		EffectPath = "effects/reactor_steam.lua",
		Automatic = true,
	},
}

Root =
{
	Name = "rocket",
	Angle = 0,
	Pivot = { 0, -0.34 },
	PivotOffset = { 0, 0 },
	Sprite = "dzto2-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.11, -0.1 },
			PivotOffset = { 0.1, -0.2 },
			Sprite = "dzto3-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0.3, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
			},
			ChildrenBehind =
			{
				{
					Name = "SteamMunitions",
					Angle = 0,
					Pivot = { -0.3, -0.24 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
	},
}
dofile("ui/uihelper.lua")
dlc2_Ammunition =
	{
		{
			ReloadTime = 60,
			FireEffect = path.. "/effects/dztofire.lua",
			StringId = "Weapon.ammo_dzto_3", -- context menu display name
			Sprite = "dzto_3",
			FireDelay = 0.0,
			TriggerProjectileAgeAction = true,
			Projectile = "dzto_3",
			RoundsEachBurst = 2,
			RoundPeriod = 1.5,
			RetriggerFireEffect = true,
			MetalFireCost = 200,
			EnergyFireCost = 12000,
		},
		{
			ReloadTime = 36,
			FireEffect = path.. "/effects/nudztofire.lua",
			Sprite = "nudzto",
			TriggerProjectileAgeAction = true,
			Projectile = "nudzto",
			MetalFireCost = 10,
			EnergyFireCost = 6000,
			Devices = { { Name = "ammo_nudzto", Consume = true } },
		},
		{
			ReloadTime = 36,
			FireEffect = path.. "/effects/nudztofire.lua",
			Sprite = "uuv",
			TriggerProjectileAgeAction = true,
			Projectile = "uuv1",
			MetalFireCost = 10,
			EnergyFireCost = 6000,
			MinAgeTrigger = 239,
			MaxAgeTrigger = 240,
			Devices = { { Name = "ammo_uuv", Consume = true } },
		},
		{
			ReloadTime = 36,
			FireEffect = path.. "/effects/nudztofire.lua",
			Sprite ="bcdzto",
			Projectile = "bcdzto",
			TriggerProjectileAgeAction = true,
			MetalFireCost = 10,
			EnergyFireCost = 6000,
			Devices = { { Name = "ammo_bcdzto", Consume = true } },
		}

	}
