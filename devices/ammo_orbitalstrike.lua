dofile("ui/uihelper.lua")
dofile("scripts/interpolate.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 80.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 160.0
HitPoints = 200.0
EnergyProductionRate = -400.0
MetalProductionRate = 0.0
EnergyStorageCapacity = -10000.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true
BlockPenetration = true
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 100
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 100
IncendiaryRadiusHeated = 100
StructureSplashDamage = 75
StructureSplashDamageMaxRadius = 100
DestroyEffect = "effects/sandbags_explode.lua"
DestroyProjectile = "mark_orbitalstrike"

--dofile("effects/device_smoke.lua")
--SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	
	{
		Name = "orbitalstrike",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/ammos/ammo_orbitalstrike.png" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "DoubleShotAmmo",
	Angle = 0,
	Pivot = { 0.0, -0.5 },
	PivotOffset = { 0, 0 },
	Sprite = "orbitalstrike",

	ChildrenInFront =
	{
	},
}
dlc2_Ammunition = 
{
	{
		StringId = "Weapon.orbitalstrike",
		Sprite = path.."/weapons/media/orbitalStrike/mark.png",
		FireEffect = "mods/dlc2/effects/fire_ol_laser_sweep.lua",
		AmmoSprites = nil,
		Devices = { { Name = "ammo_orbitalstrike", Consume = true, }, },
		Projectile = "mark_orbitalstrike",
		RoundsEachBurst = 1,
		MetalFireCost = 100,
		EnergyFireCost = 10000,
		FireStdDevSpray = 0.0001,
		FireStdDev = 0.00001,
		FireStdDevAuto = 0.00001,
		MinFireSpread = 0.000001,
		FireSpreadMultiplier = 0.0000001,
		RetriggerFireEffect = true,
		Weapons = {"plm1","plm2"}
	},
}