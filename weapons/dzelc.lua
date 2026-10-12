Scale = 1
SelectionWidth = 140
SelectionHeight = 90
SelectionOffset = { 0.0, -20.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false
WeaponMass = 180.0
HitPoints = 800.0
EnergyProductionRate = -160.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 200
IncendiaryRadiusHeated = 200
StructureSplashDamage = 300
StructureSplashDamageMaxRadius = 300
EnergyFireCost = 50 -- Move to Ammo
MetalFireCost = 2000 -- Move to Ammo
FireEffect = path.."/effects/dzelcfire.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"

Projectile = "dzelc"
BarrelLength = 200.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 30
ReloadTimeIncludesBurst = false
MinFireSpeed = 20000.0 -- Move to Ammo
MaxFireSpeed = 20000.1 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 800.0
MaxFireRadius = 3000.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -7
MaxFireAngle = 7
KickbackMean = 0.0 -- Move to Ammo
KickbackStdDev = 0.0 -- Move to Ammo
MouseSensitivityFactor = 0.2
FireDelay = 0.2
PanDuration = 0

FireStdDev = 0.001
FireStdDevAuto = 0.0
RoundsEachBurst = 1-----bullets after click
RoundPeriod = 0.05--------delay between bullets

Recoil = 2000000
EnergyFireCost = 5000.0 -- Move to Ammo
MetalFireCost = 0.0 -- Move to Ammo

ShowFireAngle = true
ReloadBank =
	{
		Max = 1,
		ReloadTime = 2,
		BaseMult = 0.66666,
		IndexMult = 0.2,
		EnergyMult = 1,
		MetalMult = 1,
	}


dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dzelc-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzelc/028.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzelc-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzelc-barrel",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzelc/barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzelc-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzelc/028.png"  }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzelc/028.png" , duration = ReloadTime - 3.0, },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzelc/001.png"  },
					{ texture = path.."/weapons/dzelc/002.png"  },
					{ texture = path.."/weapons/dzelc/003.png"  },
					{ texture = path.."/weapons/dzelc/004.png"  },
					{ texture = path.."/weapons/dzelc/005.png"  },
					{ texture = path.."/weapons/dzelc/006.png"  },
					{ texture = path.."/weapons/dzelc/007.png"  },
					{ texture = path.."/weapons/dzelc/008.png"  },
					{ texture = path.."/weapons/dzelc/009.png"  },
					{ texture = path.."/weapons/dzelc/010.png"  },
					{ texture = path.."/weapons/dzelc/011.png"  },
					{ texture = path.."/weapons/dzelc/012.png"  },
					{ texture = path.."/weapons/dzelc/013.png"  },
					{ texture = path.."/weapons/dzelc/014.png"  },
					{ texture = path.."/weapons/dzelc/015.png"  },
					{ texture = path.."/weapons/dzelc/016.png"  },
					{ texture = path.."/weapons/dzelc/017.png"  },
					{ texture = path.."/weapons/dzelc/018.png"  },
					{ texture = path.."/weapons/dzelc/019.png"  },
					{ texture = path.."/weapons/dzelc/020.png"  },
					{ texture = path.."/weapons/dzelc/021.png"  },
					{ texture = path.."/weapons/dzelc/022.png"  },
					{ texture = path.."/weapons/dzelc/023.png"  },
					{ texture = path.."/weapons/dzelc/024.png"  },
					{ texture = path.."/weapons/dzelc/025.png"  },
					{ texture = path.."/weapons/dzelc/026.png"  },
					{ texture = path.."/weapons/dzelc/027.png"  },
					mipmap = true,
					duration = 0.1,
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
	Pivot = { 0, -0.5 },
	PivotOffset = { 0, 0.4 },
	Sprite = "dzelc-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.24, -0.16 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { -0.1, 0.0},--pictre,x,y
			Sprite = "dzelc-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.2, -0.1},--x,y
					PivotOffset = { 0.3, 0.1 },
					Sprite = "dzelc-barrel",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, -0.06 },---bullets from   x,y
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { 0.3, 0.0 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",---shell
							Angle = 0,
							Pivot = { -0.32, -0.15 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { 0.0, 0.0 },
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
	},
	ChildrenInFront =
			{
				{
					Name = "LoaderBottom",
					Angle = 0,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0, 0 },
					Sprite = "dzelc-reload",
					UserData = 100,
				},
			},
}
dofile("ui/uihelper.lua")




