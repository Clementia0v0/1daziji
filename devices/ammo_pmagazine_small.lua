dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 45.0
SelectionHeight = 90.0
SelectionOffset = { 0.0, -90.5 }
Mass = 120.0
HitPoints = 200.0
EnergyProductionRate = -30.0
MetalProductionRate = -2.0
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
DeviceSplashDamage = 120
DeviceSplashDamageMaxRadius = 200
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 300
IncendiaryRadiusHeated = 60
StructureSplashDamage = 120
StructureSplashDamageMaxRadius = 280
DestroyEffect = path.."/effects/he_mushroom_cloud.lua"

--dofile("effects/device_smoke.lua")
--SmokeEmitter = StandardDeviceSmokeEmitter



Sprites =
{
	--ButtonSprite("hud-context-ammo-doubleshot", "context/HUD-Ammo-DoubleShot", nil, nil, nil, nil, path),

	{
		Name = "pmagazine-small-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/ammos/pmagazine_small.png" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "pmagazine-small-base",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0.1 },
	Sprite = "pmagazine-small-base",

}
