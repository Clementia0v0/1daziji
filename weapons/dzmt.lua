Scale = 1.0
SelectionWidth = 60.0
SelectionHeight = 50.0
SelectionOffset = { 0.0, -50.5 }
--[[
RecessionBox =
{
	Size = { 200, 10 },
	Offset = { -230, -5 },
}
]]

WeaponMass = 100.0
HitPoints = 140.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
--DeviceSplashDamage = 125
--DeviceSplashDamageMaxRadius = 250
--DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 150

FireEffect = path.."/effects/fire_dzmt.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/mortar_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
ReloadEffect = "effects/mortar_heavy_reload.lua"
ReloadEffectOffset = -1.5
Projectile = "dzmt"
BarrelLength = 50.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 14
ReloadTimeIncludesBurst = false
MinFireSpeed = 2050.0
MaxFireSpeed = 4000.0
MaxFireClamp = 0.8
MinFireRadius = 200.0
MaxFireRadius = 500.0
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = 45
MaxFireAngle = 85
IgnorePlatformSlope = true
DefaultFireAngle = (MinFireAngle + MaxFireAngle)/2
KickbackMean = 12
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0 -- 0.03
FireStdDevAuto = 0.012
Recoil = 100000
EnergyFireCost = 200.0
MetalFireCost = 15

ShowFireAngle = true
ShowFireSpeed = true

Sprites =
{
	{
		Name = "dzmt-base",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzmt/base1.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzmt-head",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzmt/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Mortar",
	Angle = 0,
	Pivot = { 0, -0.47 },
	PivotOffset = { 0, 0 },
	Sprite = "dzmt-base",
	UserData = 0,--------?
--	AllowMirror = false,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.26, 0.4 },
			PivotOffset = { 0.3, 0 },
--			Pivot = { 0, -1 },
--			PivotOffset = { 0, 1 },
			Sprite = "dzmt-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
--					Pivot = { 0.5, 0 },
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
