dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 160.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 400.0
HitPoints = 200.0
EnergyProductionRate = -30.0
MetalProductionRate = 0
EnergyStorageCapacity = 0.0
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

--dofile("effects/device_smoke.lua")
--SmokeEmitter = StandardDeviceSmokeEmitter


Sprites =
{
	
	{
		Name = "nodzto",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/ammos/nodzto.png" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "DoubleShotAmmo",
	Angle = 0,
	Pivot = { 0.0, -0.5 },
	PivotOffset = { 0, 0 },
	Sprite = "nodzto",

	ChildrenInFront =
	{
	},
}
--[[dlc2_Ammunition =
{
	{
		StringId = "Weapon.nodzto", -- context menu display name
		Sprite = "nudzto",
		 -- use default values except RoundsEachBurst
		Devices = { { Name = "ammo_nodzto", Consume = true } },
		Weapons = "dzto3",
		--Projectile = "nudzto",

	}
}]]--
