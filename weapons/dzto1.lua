Scale = 1
SelectionWidth = 120.0
SelectionHeight = 45
SelectionOffset = { 0.0, -45.5 }
RecessionBox =
{
	Size = { 100, 25 },
	Offset = { -120, -65 },
}
CanFireUnderwater = true
WeaponMass = 600.0
HitPoints = 450.0
EnergyProductionRate = 0.0
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

FireEffect = path.. "/effects/dztofire.lua"
ShellEffect = nil
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/device_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path.."/effects/dztoreload.lua"
ReloadEffectOffset = -0.5
Projectile = "dzto"
BarrelLength = 70.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 60
ReloadTimeIncludesBurst = false
MinFireSpeed = 2100.0
MinFireSpeed = 2100.1
MaxFireSpeed = 3000.1
MinFireRadius = 700.0
MaxFireRadius = 1500.0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -3
MaxFireAngle = 3
MaxFireClamp = 0.9
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0
FireStdDev = 0
FireStdDevAuto = 0
Recoil = 20000
EnergyFireCost = 7000.0
MetalFireCost = 180
ShowFireAngle = true
ShowFireSpeed = true
RoundsEachBurst = 3
RoundPeriod = 0.4
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
TriggerProjectileAgeAction = true
MinAgeTrigger = 30
MaxAgeTrigger = 60
RetriggerFireEffect = true
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dzto1-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/dzto/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzto1-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/dzto/head1.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "rocket",
	Angle = 0,
	Pivot = { 0, -0.34 },
	PivotOffset = { 0, 0 },
	Sprite = "dzto-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.11, 0.05 },
			PivotOffset = { 0.03, -0.3 },
			Sprite = "dzto1-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.14, 0.115 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
	},
}
