Scale = 1
SelectionWidth = 100.0
SelectionHeight = 100.0
SelectionOffset = { 0.0, 0.0 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false

WeaponMass = 30.0
HitPoints = 3000.0
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

--FireEffect = path.."/effects/fire_dzsniper.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = nil
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = nil
ReloadEffect = nil
ReloadEffectOffset = -1.5
Projectile = "dzelc"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 90
ReloadTimeIncludesBurst = false
MinFireSpeed = 30000.0 -- Move to Ammo
MaxFireSpeed = 30000.1 -- Move to Ammo
MinFireRadius = 100.0
MaxFireRadius = 1000.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -180
MaxFireAngle = 180
KickbackMean = 0.01 -- Move to Ammo
KickbackStdDev = 0.01 -- Move to Ammo
MouseSensitivityFactor = 0.2
PanDuration = 0
FireStdDev = 0.003
FireStdDevAuto = 0.01 -- Move to Ammo
Recoil = 0
EnergyFireCost = 2000.0 -- Move to Ammo
MetalFireCost = 50.0 -- Move to Ammo
FireDelay = 0
ShowFireAngle = true
--MaxBursts = 1
--ShowAimingGizmo = false
--HasLaserSight = true
BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.5

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sat",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/hjcf/sat.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, 0.0 },
	PivotOffset = { 0, 0. },
	Sprite = "sat",
	Scale = 2.0,
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0.0, 0.0 },
			--Sprite = "magician-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},
					PivotOffset = { 0.0, 0 },
					--Sprite = "dzsniper-barrel",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, 0.0 },
							PivotOffset = { 0, 0 },
						},
						--[[{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { -0.4, -0.1 },
							PivotOffset = { 0, 0 },
						},]]--
						{
							Name = "Chamber",
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


