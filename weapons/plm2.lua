dofile("mods/dlc2/weapons/orbital_laser2.lua")
Scale = 1.0
SelectionWidth = 140
SelectionHeight = 110
SelectionOffset = { 0.0, -20.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 500.0
HitPoints = 1100
EnergyProductionRate = -160.0
MetalProductionRate = -3.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 180
IncendiaryRadiusHeated = 180
StructureSplashDamage = 170
StructureSplashDamageMaxRadius = 170


ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 24
ReloadTimeIncludesBurst = false
MinFireSpeed = 1000.0 -- Move to Ammo
MaxFireSpeed = 3200.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = 5
MaxFireAngle = 50
KickbackMean = 180 -- Move to Ammo
KickbackStdDev = 15.0 -- Move to Ammo
MouseSensitivityFactor = 0.3
PanDuration = 0
RetriggerFireEffect = true
EnergyFireCost = 12000
MetalFireCost = 20
ShowFireAngle = true

ShowFireSpeed = true

Recoil = 2000000
BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.7

RoundsEachBurst = 5
RoundPeriod = 0.35
RetriggerFireEffect = true
UniformSpray = true
FireStdDevSpray = 0.04
FireStdDev = 0.04
FireStdDevAuto = 0.05
MinFireSpread = 1.4
FireSpreadMultiplier = 0.9
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	
	{
		Name = "plm2-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/plm/base2.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "plm2-barrel",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/plm/barrel2.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "plm2-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/head.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/plm/reload21.png", duration = ReloadTime - 0.1 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					
					{ texture = path.."/weapons/plm/reload21.png", },
					{ texture = path.."/weapons/plm/reload22.png", },
					{ texture = path.."/weapons/plm/reload23.png", },
					{ texture = path.."/weapons/plm/reload24.png", },
					{ texture = path.."/weapons/plm/reload25.png", },
					mipmap = true,
					duration = 9,
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
	Pivot = { 0.0, -0.55 },
	PivotOffset = { 0, 0.4 },
	Sprite = "plm2-base",
	UserData = 0,
	ChildrenInFront =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { 0.086, 0.252 },
			PivotOffset = { 0, 0 },
			Sprite = "plm2-reload",
			UserData = 100,
		},
	},
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.2, -0.18 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { 0.0, 0.0 },--pictre,x,y
			Sprite = "plm1-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},--x,y
					PivotOffset = { 0.35, 0 },
					Sprite = "plm2-barrel",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.2, -0.06 },---bullets from   x,y
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
		Sprite = "hud-context-ammo-olsweep",
		--AmmoSprites = { { Node = "Head", Sprite = "orbital_laser_head_Sweep", }, },
		Devices = { { Name = "ammo_orbital_sweep", Consume = true, }, },
		Projectile = "ol_marker_sweep",
        FireEffect = "mods/dlc2/effects/fire_ol_laser_sweep.lua",
      
	},
	{
		Sprite = "hud-context-ammo-olfocus",
		--AmmoSprites = { { Node = "Head", Sprite = "orbital_laser_head_Sweep", }, },
		Devices = { { Name = "ammo_orbital_focus", Consume = true, }, },
		Projectile = "ol_marker_focus",
        FireEffect = "mods/dlc2/effects/fire_ol_laser_sweep.lua",
       
	},
}

