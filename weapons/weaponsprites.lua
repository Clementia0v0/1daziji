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
ReloadEffect = path.."/effects/dzdeckgunreload.lua"
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


EnergyFireCost = 1000.0 -- Move to Ammo
MetalFireCost = 50.0 -- Move to Ammo
RoundsEachBurst = 6
RoundPeriod = 1.2
RetriggerFireEffect = true
ShowFireAngle = true
MaxBursts = 30
ShowFireSpeed = false
Recoil = 2400
BarrelRecoilLimit = -0.3
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.7

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{	
	
	{
		Name = "tieqiong-shell",
		InitialState = "Idle",
		States =
		{
			Idel ={ Frames = { { texture =path.. "/weapons/dzmg/shell1.png" }, mipmap = true, }, },
			Flash =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzmg/shell1.png" },
					{ texture = path.."/weapons/dzmg/shell2.png" },
					{ texture = path.."/weapons/dzmg/shell3.png" },
					{ texture = path.."/weapons/dzmg/shell4.png" },
					{ texture = path.."/weapons/dzmg/shell3.png" },
					{ texture = path.."/weapons/dzmg/shell2.png" },
					
					duration = 2/6,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 2.33,
				LoopExitState = "Idle",
			},
		},
	},
	{
		Name = "tieqiong-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/basedome.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "tieqiong-ring",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/ring.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "tieqiong-core",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/core.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/hjcf/any.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel1",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/11barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzdeckgun/reload1.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png", duration = ReloadTime - 3.0 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
				
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "nomag",
		States =
		{
			Normal = { Frames = { { texture =path.."/weapons/media/nomagazine.tga", }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	
	{
		Name = "dzdeckgun-barrel2",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/22barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun2-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzdeckgun/reload1.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png", duration = ReloadTime - 6.2 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "dzdeckgun1m-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/basem.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzAA",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/media/AA152.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
    {
		Name = "130-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/130base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "130a-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/130abase.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "130-barrel",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/barrel130.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
		
	{
		Name = "dzdeckgun-barrel3",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/33barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun3-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzdeckgun/reload1.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png", duration = ReloadTime - 9.6 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "dzdeckgun4-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzdeckgun/reload1.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png", duration = ReloadTime - 13 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					{ texture = path.."/weapons/dzdeckgun/reload1.png" },
					{ texture = path.."/weapons/dzdeckgun/reload2.png" },
					{ texture = path.."/weapons/dzdeckgun/reload3.png" },
					{ texture = path.."/weapons/dzdeckgun/reload4.png" },
					{ texture = path.."/weapons/dzdeckgun/reload5.png" },
					{ texture = path.."/weapons/dzdeckgun/reload6.png" },
					{ texture = path.."/weapons/dzdeckgun/reload7.png" },
					{ texture = path.."/weapons/dzdeckgun/reload8.png" },
					{ texture = path.."/weapons/dzdeckgun/reload9.png" },
					{ texture = path.."/weapons/dzdeckgun/reload10.png" },
					{ texture = path.."/weapons/dzdeckgun/reload11.png" },
					{ texture = path.."/weapons/dzdeckgun/reload12.png" },
					{ texture = path.."/weapons/dzdeckgun/reload13.png" },
					{ texture = path.."/weapons/dzdeckgun/reload14.png" },
					{ texture = path.."/weapons/dzdeckgun/reload15.png" },
					{ texture = path.."/weapons/dzdeckgun/reload16.png" },
					{ texture = path.."/weapons/dzdeckgun/reload17.png" },
					{ texture = path.."/weapons/dzdeckgun/reload18.png" },
					{ texture = path.."/weapons/dzdeckgun/reload19.png" },
					{ texture = path.."/weapons/dzdeckgun/reload20.png" },
					{ texture = path.."/weapons/dzdeckgun/reload21.png" },
					{ texture = path.."/weapons/dzdeckgun/reload22.png" },
					{ texture = path.."/weapons/dzdeckgun/reload23.png" },
					{ texture = path.."/weapons/dzdeckgun/reload24.png" },
					{ texture = path.."/weapons/dzdeckgun/reload25.png" },
					{ texture = path.."/weapons/dzdeckgun/reload26.png" },
					{ texture = path.."/weapons/dzdeckgun/reload27.png" },
					{ texture = path.."/weapons/dzdeckgun/reload28.png" },
					{ texture = path.."/weapons/dzdeckgun/reload29.png" },
					{ texture = path.."/weapons/dzdeckgun/reload30.png" },
					{ texture = path.."/weapons/dzdeckgun/reload31.png" },
					{ texture = path.."/weapons/dzdeckgun/reload32.png" },
					{ texture = path.."/weapons/dzdeckgun/reload33.png" },
					{ texture = path.."/weapons/dzdeckgun/reload34.png" },
					{ texture = path.."/weapons/dzdeckgun/reload35.png" },
					{ texture = path.."/weapons/dzdeckgun/reload36.png" },
					{ texture = path.."/weapons/dzdeckgun/reload37.png" },
					{ texture = path.."/weapons/dzdeckgun/reload38.png" },
					{ texture = path.."/weapons/dzdeckgun/reload39.png" },
					{ texture = path.."/weapons/dzdeckgun/reload40.png" },
					{ texture = path.."/weapons/dzdeckgun/reload41.png" },
					{ texture = path.."/weapons/dzdeckgun/reload42.png" },
					{ texture = path.."/weapons/dzdeckgun/reload43.png" },
					{ texture = path.."/weapons/dzdeckgun/reload44.png" },
					{ texture = path.."/weapons/dzdeckgun/reload45.png" },
					{ texture = path.."/weapons/dzdeckgun/reload46.png" },
					{ texture = path.."/weapons/dzdeckgun/reload47.png" },
					{ texture = path.."/weapons/dzdeckgun/reload48.png" },
					{ texture = path.."/weapons/dzdeckgun/reload49.png" },
					{ texture = path.."/weapons/dzdeckgun/reload50.png" },
					{ texture = path.."/weapons/dzdeckgun/reload51.png" },
					{ texture = path.."/weapons/dzdeckgun/reload52.png" },
					{ texture = path.."/weapons/dzdeckgun/reload53.png" },
					{ texture = path.."/weapons/dzdeckgun/reload54.png" },
					{ texture = path.."/weapons/dzdeckgun/reload55.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "dzdeckgun-barrel11",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/12barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel13",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/13barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	
	{
		Name = "dzdeckgun-barrel21",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/321barrel3.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel23",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/23barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel34",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/34barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel32",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/32barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-base4",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/base457.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel384",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/384barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel43",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/33barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-base52",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/base508.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun-barrel52",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/52barrel.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzdeckgun157-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzdeckgun/base157.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "leoHE",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/media/leoHE.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "leo-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/leo/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "leo-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/leo/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "leo-barrel",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/leo/barrel.png" }, mipmap = true, }, },
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



	



