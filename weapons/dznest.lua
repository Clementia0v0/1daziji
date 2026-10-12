Scale = 1
SelectionWidth = 160
SelectionHeight = 80
SelectionOffset = { -10, -80.5 }

RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = false
CanFireUnderwater = false
WeaponMass = 120.0
HitPoints = 550.0
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

FireEffect = "effects/missle_launch.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = nil
ReloadEffect = "effects/silo_reload.lua"
ReloadEffectOffset = -1.5

BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 48---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 6000.0
MaxFireSpeed = 6000.1
MinFireRadius = 300.0
MaxFireRadius = 1400.0
MinFireSpread = 12
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = 0
MaxFireAngle = 45
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.008
FireStdDevAuto = 0.008
Recoil = 20000

ShowFireAngle = true
ShowFireSpeed = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled

RetriggerFireEffect = true
RoundsEachBurst = 10
RoundPeriod = 0.22
TriggerProjectileAgeAction = true
MinAgeTrigger = 2
MaxAgeTrigger = 12



dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dznest-base",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dznest/bingbao.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dznest-head",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dznest-barrel",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dznest/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0.0 },
	Sprite = "dznest-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.15, -0.27 },--zhou
			PivotOffset = { 0.0, 0 },
			Sprite = path.."/weapons/head.png",
			UserData = 50,
			ChildrenBehind =
				{
					{
						Name = "Barrel",
						Angle = 0,
						Pivot = { 0.5, 0.0},--x,y
						PivotOffset = { 0.0, 0 },
						Sprite = "dznest-barrel",
						UserData = 100,
						Visible = true,
						ChildrenInFront =
						{
							{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = {0.6, 0.0 },
							PivotOffset = { 0, 0 },
							},
							{
							Name = "Chamber",
							Angle = 0,
							Pivot = { -1, -1 },
							PivotOffset = { 0, 0 },
							},
						},
					},
				},
		},
		
	},
	
	
	
	
}
dofile("ui/uihelper.lua")
dlc2_Ammunition =
	{
		{
		StringId = "Weapon.dznestno",
		Sprite = path.."/weapons/media/dzne2",
		Projectile = "dznest",
		MetalFireCost = 20,
		EnergyFireCost = 3000,
		},
	}