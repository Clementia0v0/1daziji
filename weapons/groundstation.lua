Scale = 1
SelectionWidth = 95.0
SelectionHeight = 60.0
SelectionOffset = { 0.0, -60.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false

WeaponMass = 120.0
HitPoints = 240.0
EnergyProductionRate = -50.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 120
IncendiaryRadiusHeated = 150
StructureSplashDamage = 200
StructureSplashDamageMaxRadius = 150

FireEffect = path.."/effects/fire_dzsniper.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = nil
ReloadEffect = nil
ReloadEffectOffset = -1.5

BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 8.0
ReloadTimeIncludesBurst = false
MinFireSpeed = 12000.0 -- Move to Ammo
MaxFireSpeed = 12000.1 -- Move to Ammo
MinFireRadius = 1.0
MaxFireRadius = 1.1
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -15
MaxFireAngle = 15
KickbackMean = 40 -- Move to Ammo
KickbackStdDev = 5 -- Move to Ammo
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.003
FireStdDevAuto = 0.01 -- Move to Ammo
Recoil = 600000
EnergyFireCost = 2000.0 -- Move to Ammo
MetalFireCost = 50.0 -- Move to Ammo
FireDelay = 0.5
ShowFireAngle = true

BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.5

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "gs-base",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/hjcf/base2.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "gs-head",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/hjcf/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0.038 },
	Sprite = "gs-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, -0.2 },
			PivotOffset = { 0.0, 0.0 },
			Sprite = nil,
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},
					PivotOffset = { 0.5, 0 },
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, -0.1 },
							PivotOffset = { 0, 0 },
						},
					
						{
							Name = "Chamber",
							Angle = 0,
							Pivot = { -0.32, -0.15 },
							PivotOffset = { 0, 0 },
						},
					},
				},
			},
			
			ChildrenInFront =
			{
				{
					Name = "LoaderBottom",
					Angle = 0,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0, 0 },
					
					UserData = 100,
				},
			},
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	},
}
