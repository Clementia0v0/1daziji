Scale = 1
SelectionWidth = 180
SelectionHeight = 120
SelectionOffset = { -100, -80 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 400.0
HitPoints = 800.0
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
IncendiaryRadius = 200
IncendiaryRadiusHeated = 200
StructureSplashDamage = 300
StructureSplashDamageMaxRadius = 300

FireEffect = path.."/effects/fire_dzdeckgun3.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = path.."/effects/dzdeckgunreload.lua"
ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 80
ReloadTimeIncludesBurst = false
MinFireSpeed = 2500.0 -- Move to Ammo
MaxFireSpeed = 4500.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = 20
MaxFireAngle = 70
KickbackMean = 20 -- Move to Ammo
KickbackStdDev = 0.1 -- Move to Ammo
MouseSensitivityFactor = 0.3
PanDuration = 0
RetriggerFireEffect = true
FireStdDev = 0.01		--固定散步
FireStdDevAuto = 0.1	--随即散步

RoundsEachBurst = 1-----bullets after click
--------delay between bullets



ShowFireAngle = true

ShowFireSpeed = true
Recoil = 2400000
BarrelRecoilLimit = -0.4
BarrelRecoilSpeed = -2.2
BarrelReturnForce = 0.2
EnergyFireCost = 6000
MetalFireCost = 300
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "mtl-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/mtl/000.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "mtl-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/mtl/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "mtl-barrel1",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/mtl/barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "mtl-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/mtl/001.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/mtl/001.png", duration = ReloadTime - 1.2 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/mtl/001.png" },
					{ texture = path.."/weapons/mtl/002.png" },
					{ texture = path.."/weapons/mtl/003.png" },
					{ texture = path.."/weapons/mtl/004.png" },
					{ texture = path.."/weapons/mtl/005.png" },
					{ texture = path.."/weapons/mtl/006.png" },
					{ texture = path.."/weapons/mtl/007.png" },
					{ texture = path.."/weapons/mtl/008.png" },
					{ texture = path.."/weapons/mtl/009.png" },
					{ texture = path.."/weapons/mtl/010.png" },
					{ texture = path.."/weapons/mtl/001.png" },
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
	Pivot = { 0.2, -0.75 },
	PivotOffset = { 0, 0.5 },
	Sprite = "mtl-base",
	UserData = 0,
	ChildrenInFront =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0, 0 },
			Sprite = "mtl-reload",
			UserData = 100,
		},
	},
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.06, -0.24 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { 0.2, 0.0 },--pictre,x,y
			Sprite = "mtl-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.3, 0.0},--x,y
					PivotOffset = { 0.4, 0 },
					Sprite = "mtl-barrel1",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.2, 0.0 },---bullets from   x,y
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
	},
}

dofile("ui/uihelper.lua")

	dlc2_Ammunition =
	{
		{
		StringId = "Weapon.mtl1", -- context menu display name
		Sprite = path.."/weapons/media/mtl.png",
		Projectile = "mtl",
		},
		
		{
		StringId = "Weapon.mtl2", -- context menu display name
		Sprite = path.."/weapons/media/mtlhe.png",
		Projectile = "mtlhe",
		},
	}
	



