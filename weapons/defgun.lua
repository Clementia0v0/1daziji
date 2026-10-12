Scale = 1.0
SelectionWidth = 180
SelectionHeight = 150
SelectionOffset = { 0.0, -40.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 700.0
HitPoints = 900.0
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
IncendiaryRadius = 130
IncendiaryRadiusHeated = 130
StructureSplashDamage = 120
StructureSplashDamageMaxRadius = 120

FireEffect = path.."/effects/defgun_warmup.lua"
FireRetriggerEffect = path.."/effects/fire_dzdeckgun5.lua"
RetriggerFireEffect = true
FireDelay = 10
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
Projectile = "defgun"
MetalFireCost = 200
EnergyFireCost = 10000
ReloadEffect = path.."/effects/dzdeckgunreload.lua"
ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 60
ReloadTimeIncludesBurst = false
MinFireSpeed = 1500.0 -- Move to Ammo
MaxFireSpeed = 3500.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 60

KickbackMean = 0.2 -- Move to Ammo
KickbackStdDev = 0.02 -- Move to Ammo

MouseSensitivityFactor = 0.4
PanDuration = 0
RetriggerFireEffect = true

FireStdDev = 0.008		--固定散步
FireStdDevAuto = 0.08	--随即散步
MaxBursts = 100
RoundsEachBurst = 3-----bullets after click
RoundPeriod = 2
--------delay between bullets




ShowFireAngle = true

ShowFireSpeed = true
Recoil = 3000000
BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.4

	
Sprites = 
{
	{
		Name = "defgun-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/defgun/shellchain/rwingload000.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/defgun/shellchain/rwingload000.png", duration = ReloadTime - 10.0 },
					{ texture = path.."/weapons/defgun/shellchain/rwingload001.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload002.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload003.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload004.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload005.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload006.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload007.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload008.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload009.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload010.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload011.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload012.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload013.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload014.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload015.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload016.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload017.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload018.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload019.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload020.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload021.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload022.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload023.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload024.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload025.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload026.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload027.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload028.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload029.png" },
					{ texture = path.."/weapons/defgun/shellchain/rwingload030.png" },
					mipmap = true,
					duration = 0.2,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/defgun/shellchain/rwingload030.png" },
					
				
					duration = 4,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "defgun-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/defgun/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "defgun-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/defgun/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "defgun-barrel",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/defgun/barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "defgun-cwing",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/defgun/cwing.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "defgun-rwing",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/defgun/rwing.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}





dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter



Root =
{
	Name = "defgun",
	Angle = 0,
	Pivot = { 0.0, -0.57 },
	PivotOffset = { 0, 0.5 },
	Sprite = "defgun-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.03, -0.42 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { 0.111, -0.05 },--pictre,x,y
			Sprite = "defgun-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},--x,y
					PivotOffset = { 0.0, 0 },
					Sprite = "defgun-barrel",
					UserData = 75,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0.0, 0.0 },---bullets from   x,y
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
				{
					Name = "defgun-cwing",
					Angle = 0,
					Pivot = { -0.214, -0.195 },---bullets from   x,y
					PivotOffset = { -0.178, 0.08 },
					Sprite = "defgun-cwing",
					UserData = 100
				},
			},
			
			
		},
		{
			Name = "defgun-rwing",---shell
			Angle = -50,
			Pivot = { -0.466, -0.108 },
			PivotOffset = { 0.253, 0.053 },
			Sprite = "defgun-rwing",
			UserData = 80,
			ChildrenBehind =
			{
				{
					Name = "defgun_reload",
					Sprite = "defgun-reload",
					Scale = 0.95,
					Angle = 0,
					Pivot = { 0.0, 0.5 },
					PivotOffset = { 0, 0 },
					UserData = 90 ,
				},
			}
		},

		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	},
}

dofile("ui/uihelper.lua")
