dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 44.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 50.0
HitPoints = 600
EnergyProductionRate = 19.5
MetalProductionRate = 2.27
EnergyStorageCapacity = 227
MetalStorageCapacity = 227
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true
BlockPenetration = true
DeviceSplashDamage = 0
DeviceSplashDamageMaxRadius = 0
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 0
IncendiaryRadiusHeated = 0
StructureSplashDamage = 10
StructureSplashDamageMaxRadius = 200
DestroyEffect = "effects/sandbags_explode.lua"

--dofile("effects/device_smoke.lua")
--SmokeEmitter = StandardDeviceSmokeEmitter

dlc2_Ammunition =
{
	{
		StringId = "Weapon.dzdeckgunempty", -- context menu display name
		Sprite = "dzempty",
		RoundsEachBurst = 3, -- use default values except RoundsEachBurst
		Devices = { { Name = "ammo_dzdeckgunempty", Consume = true } },
		Weapons = { "dzdeckgun1" },
		Projectile = "dzempty",
		MinFireSpeed = 2500.0, -- Move to Ammo
		MaxFireSpeed = 6000.0, -- Move to Ammo
		MetalFireCost = 300,
		EnergyFireCost = 6000,
	}
}

Sprites =
{
	
	{
		Name = "dzempty",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/empty1.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "DoubleShotAmmo",
	Angle = 0,
	Pivot = { 0, -0.25 },
	PivotOffset = { 0, 0 },
	Sprite = "dzempty",

	ChildrenInFront =
	{
	},
}
