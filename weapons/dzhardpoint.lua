Scale = 1
SelectionWidth = 140
SelectionHeight = 110
SelectionOffset = { 0.0, -20.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false
WeaponMass = 240.0
HitPoints = 700.0
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
--IncendiaryRadius = 200
--IncendiaryRadiusHeated = 200
StructureSplashDamage = 70
StructureSplashDamageMaxRadius = 300
EnergyFireCost = 50 -- Move to Ammo
MetalFireCost = 2000 -- Move to Ammo
FireEffect = path.."/effects/dzelcfire.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"


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
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 30
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



dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dzhardpoint-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/dzhardpoint.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "cannon",
	Angle = 0,
	Pivot = { 0, -0.5 },
	PivotOffset = { 0, 0.4 },
	Sprite = "dzhardpoint-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.24, -0.16 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { -0.1, 0.0},--pictre,x,y
			--Sprite = "dzelc-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.2, -0.1},--x,y
					PivotOffset = { 0.3, 0.1 },
					--Sprite = "dzelc-barrel",
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
}
dofile("ui/uihelper.lua")




