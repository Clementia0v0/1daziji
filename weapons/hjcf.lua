Scale = 1
SelectionWidth = 48
SelectionHeight = 135.0
SelectionOffset = { 0.0, 55 }
RecessionBox =
{
	Size = { 25, 1000 },
	Offset = { 0, -890 },
	AutoCreateDoor = false,
}
CanFlip = false

WeaponMass = 500.0
HitPoints = 800.0
EnergyProductionRate = -30.0
MetalProductionRate = -1.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0


FireRetriggerEffect = "effects/warhead_launch.lua"
Projectile = "hjcfnormal"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/missile_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ReloadEffect = "effects/silo_reload.lua"
ReloadEffectOffset = -2.5
FireDelay = 10
BarrelLength = 0.0
MinFireClearance = 1000
FireClearanceOffsetInner = 40
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 12
ReloadTime = 40
ReloadTimeIncludesBurst = false
MinFireSpeed = 500.0
MaxFireSpeed = 500.1
MinFireRadius = 200.0
MaxFireRadius = 20000.0
ShowAimingGizmo = false
ForceFireAngle = 90
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = 86
MaxFireAngle = 94
KickbackMean = 0
KickbackStdDev = 0
PanDuration = 0
FireStdDev = 0
FireStdDevAuto = 0
CanFireUnderwater = true
MissileDisruptionMin = 0.5
MissileDisruptionStdDevMin = 400
MissileDisruptionStdDevMax = 600
Sprites =
{
	{
		Name = "hjcf-base",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/hjcf/base1.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	
	{
		Name = "hjcf-reload",
		States =
		{
			Normal = { Frames = { { texture = "weapons/missilelauncher/Warhead-ReloadAnim28.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim01.png", duration = ReloadTime - 2.6 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim02.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim03.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim04.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim05.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim06.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim07.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim08.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim09.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim10.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim11.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim12.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim13.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim14.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim15.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim16.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim17.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim18.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim19.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim20.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim21.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim22.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim23.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim24.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim25.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim26.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim27.png" },
					{ texture = "weapons/missilelauncher/Warhead-ReloadAnim28.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},
}

--[[
Trail =
{
	Texture = "objects/projectiles/missile/trail",
	Width = 20,
	Length = 3,
	KeyframePeriod = 0.05,
	RepeatRate = 0.001,
	ScrollRate = 0,
	FattenRate = 25,
}
]]
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Root =
{
	Name = "Missile",
	Angle = 0,
	Pivot = { 0, 0.1 },
	PivotOffset = { 0, 0 },
	Sprite = "hjcf-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { 0.07, -0.08  },
			PivotOffset = { 0, 0 },
			Sprite = "hjcf-reload",
			UserData = 100,
		},
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { 0.08, 0.12 },
			PivotOffset = { 0, 0 },
			Sprite = "hjcf-reload",
			UserData = 100,
		},
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { 0.07, 0.32 },
			PivotOffset = { 0, 0 },
			Sprite = "hjcf-reload",
			UserData = 100,
		},
		{
			Name = "Door",
			Angle = 0,
			Pivot = { -0.15, -0.26 },
			PivotOffset = { 0.05, -0.18 },
			Sprite = path.."/weapons/hjcf/Door.tga",
			UserData = 100,
		},
		{
			Name = "Hardpoint0",
			Angle = 0,
			Pivot = { 0, -0.26 }, -- modify this to adjust height of spawned projectile
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Chamber",
			Angle = 0,
			Pivot = { 0, -0.2 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Flightpath",
			Pivot = { 0.0, -0.75 },
			Sprite = "missile-flightpath",
			UserData = 100,
			Visible = false,
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.4 },
		},
	},
}
dofile("ui/uihelper.lua")
dlc2_Ammunition =
	{
		{
			StringId = "Weapon.hjcfnormal",
			Sprite = "objects/projectiles/missile/missile.tga",
			Projectile = "hjcfnormal",
			FireEffect = path.."/effects/hjcfnormal_warmup.lua",
			RoundsEachBurst = 3,
			RoundPeriod = 2,
			MetalFireCost = 20,
			EnergyFireCost = 8000,
			Devices = { { Name = "reactor", Consume = false } }
		},
		{
			StringId = "Weapon.cm",
			Sprite = "cm",
			Projectile = "cm2",
			FireEffect = path.."/effects/cm_warmup.lua",
			RoundsEachBurst =1,
			MetalFireCost = 40,
			EnergyFireCost = 2000,
			FireDelay = 10,
			Devices = { { Name = "ammo_cm", Consume = true } },
		},
		{
			StringId = "Weapon.hypersonic",
			Sprite = "hypersonic",
			Projectile = "hypersonic",
			FireEffect = path.."/effects/hjcf_warmup.lua",
			RoundsEachBurst = 1,
			MetalFireCost = 10,
			EnergyFireCost = 10000,
			Devices = { { Name = "ammo_hypersonic", Consume = true } },
		},
		{
			StringId = "Weapon.bchy",
			Sprite = "bchy",
			Projectile = "bct1",
			RoundsEachBurst = 1,
			LaunchDelay = 8,
			FireEffect = path .. "/effects/bchsfire.lua",
			FireEndEffect =path.."/effects/bchstarget.lua",
			Devices = { { Name = "ammo_bchy", Consume = true } },
		}
	}

	