Scale = 1
SelectionWidth = 80
SelectionHeight = 80
SelectionOffset = { -10, -10.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 200.0
HitPoints = 320.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 200
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 80
IncendiaryRadiusHeated = 80
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 60
Projectile = "76"
FireEffect = path.."/effects/fire_130.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = path.."/effects/dzdeckgunreloadlite.lua"
ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 16
ReloadTimeIncludesBurst = false
MinFireSpeed = 6500.0 -- Move to Ammo
MaxFireSpeed = 6600.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 60
KickbackMean = 20 -- Move to Ammo
KickbackStdDev = 5 -- Move to Ammo
MouseSensitivityFactor = 0.4
PanDuration = 0
RetriggerFireEffect = true

FireStdDev = 0.007		--固定散步
FireStdDevAuto = 0.01	--随即散步

-----bullets after click
--------delay between bullets


EnergyFireCost = 400.0 -- Move to Ammo
MetalFireCost = 15.0 -- Move to Ammo

RetriggerFireEffect = true
ShowFireAngle = true
MaxBursts = 90
ShowFireSpeed = false
Recoil = 2400
BarrelRecoilLimit = -0.3
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.7

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter
ReloadBank =
	{
		Max = 16,
		ReloadTime = 0.5,
		BaseMult = 0.2,
		IndexMult = 0.02,
		EnergyMult = 1,
		MetalMult = 1,
	}
Sprites =
{
	
	
	{
		Name = "76-barrel",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/barrel76.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	
}

Root =
{
	Name = "cannon",
	Angle = 0,
	Pivot = { 0.2, -0.57 },
	PivotOffset = { 0, 0.5 },
	Sprite = "dzdeckgun-base",
	UserData = 0,
	ChildrenInFront =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0, 0 },
			Sprite = "dzdeckgun-reload",
			UserData = 100,
		},
	},
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, -0.1 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { -0.1, 0.0 },--pictre,x,y
			Sprite = "dzdeckgun-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.2, 0.1},--x,y
					PivotOffset = { 0.6, 0 },
					Sprite = "76-barrel",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.4, -0.06 },---bullets from   x,y
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



	



