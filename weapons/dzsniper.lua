Scale = 1
SelectionWidth = 95.0
SelectionHeight = 60.0
SelectionOffset = { -18, -60.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false

WeaponMass = 120.0
HitPoints = 240.0
EnergyProductionRate = 0.0
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
Projectile = "dzsniper"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 7.0
ReloadTimeIncludesBurst = false
MinFireSpeed = 20000.0 -- Move to Ammo
MaxFireSpeed = 20000.1 -- Move to Ammo
MinFireRadius = 800.0
MaxFireRadius = 4000.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -14
MaxFireAngle = 14
KickbackMean = 0.01 -- Move to Ammo
KickbackStdDev = 0.01 -- Move to Ammo
MouseSensitivityFactor = 0.2
PanDuration = 0
FireStdDev = 0.003
FireStdDevAuto = 0.01 -- Move to Ammo
Recoil = 60000
EnergyFireCost = 2000.0 -- Move to Ammo
MetalFireCost = 50.0 -- Move to Ammo
FireDelay = 0.3
ShowFireAngle = true
HasLaserSight = true
BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.5
ReloadBank =
	{
		Max = 2,
		ReloadTime = 1.5,
		BaseMult = 2,
		IndexMult = 0.2,
		EnergyMult = 1,
		MetalMult = 1,
	}
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dzsniper-base",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzsniper/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzsniper-head",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzsniper/head00.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzsniper-barrel",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzsniper-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzsniper/head00.png"  }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzsniper/head03.png" , duration = 120, },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzsniper/head02.png"  },
					{ texture = path.."/weapons/dzsniper/head01.png"  },
					{ texture = path.."/weapons/dzsniper/head00.png"  },
					mipmap = true,
					duration = 0.5,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, -0.47 },
	PivotOffset = { 0, 0 },
	Sprite = "dzsniper-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, -0.2 },
			PivotOffset = { 0.18, 0.08 },
			Sprite = "dzsniper-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},
					PivotOffset = { 0.5, 0 },
					Sprite = "dzsniper-barrel",
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
							Name = "LaserSight",
							Angle = 90,
							Pivot = { -0.4, -0.1 },
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
					Sprite = "dzsniper-reload",
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
