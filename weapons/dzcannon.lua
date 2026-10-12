Scale = 1
SelectionWidth = 80.0
SelectionHeight = 60.0
SelectionOffset = { 0, -60.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false

WeaponMass = 200.0
HitPoints = 300.0
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
IncendiaryRadius = 160
IncendiaryRadiusHeated = 200
StructureSplashDamage = 300
StructureSplashDamageMaxRadius = 300

FireEffect = "effects/fire_cannon.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = "effects/shell_eject_cannon.lua"

Projectile = "dzcannon"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 30
ReloadTimeIncludesBurst = false
MinFireSpeed = 500.0 -- Move to Ammo
MaxFireSpeed = 1200.0 -- Move to Ammo
MinFireRadius = 200.0
MaxFireRadius = 800.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = 12
MaxFireAngle = 80
KickbackMean = 40 -- Move to Ammo
KickbackStdDev = 5 -- Move to Ammo
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.1 -- Move to Ammo
FireStdDevAuto = 0.012 -- Move to Ammo
Recoil = 600000
EnergyFireCost = 5000.0 -- Move to Ammo
MetalFireCost = 200.0 -- Move to Ammo
MaxFireClamp = 0.9
ShowFireAngle = true
ShowFireSpeed = true
BeamDuration = 0.05
BarrelRecoilLimit = -0.25
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.5
RetriggerFireEffect = true
RoundsEachBurst = 4
RoundPeriod = 0.8
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter
ReloadBank =
	{
		Max = 3,
		ReloadTime = 1,
		BaseMult = 1.2,
		IndexMult = 0.2,
		EnergyMult = 1,
		MetalMult = 1,
	}
Sprites =
{
	{
		Name = "dzcannon-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzcannon/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzcannon-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzcannon-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzcannon/reload4.png"  }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/head.png" , duration = 120, },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzcannon/reload1.png"  },
					{ texture = path.."/weapons/dzcannon/reload2.png"  },
					{ texture = path.."/weapons/dzcannon/reload3.png"  },
					mipmap = true,
					duration = 0.4,
				},
				NextState = "Normal",
			},
		},
	},
	
}

Root =
{
	Name = "cannon",
	Angle = 0,
	Pivot = { 0, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = "dzcannon-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, 0.0 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { 0, 0 },--pictre,x,y
			Sprite = "dzcannon-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0},--x,y
					PivotOffset = { 0.5, 0 },
					Sprite = "dzcannon-head",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0.0, 0.0},---bullets from   x,y
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { 0.18, -0.35 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",---shell
							Angle = 0,
							Pivot = { -0.32, -0.15 },
							PivotOffset = { 0, 0 },
						},
					},
				},
			},
			
			
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
		{
					Name = "LoaderBottom",
					Angle = 0,
					Pivot = { -0.02, -0.16 },
					Scale = 1.6,
					PivotOffset = { 0, 0 },
					Sprite = "dzcannon-reload",
					UserData = 100,
				},
		
		},
}
