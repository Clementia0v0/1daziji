dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 120.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -45.5 }
Mass = 220.0
HitPoints = 400.0
EnergyProductionRate = -40.0
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
DeviceSplashDamage = 160
DeviceSplashDamageMaxRadius = 260
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 400
IncendiaryRadiusHeated = 60
StructureSplashDamage = 140
StructureSplashDamageMaxRadius = 400
DestroyEffect = path.."/effects/he_mushroom_cloud.lua"

--dofile("effects/device_smoke.lua")
--SmokeEmitter = StandardDeviceSmokeEmitter



Sprites =
{
	--ButtonSprite("hud-context-ammo-doubleshot", "context/HUD-Ammo-DoubleShot", nil, nil, nil, nil, path),

	{
		Name = "pmagazine-large-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/ammos/pmagazine_large.png" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "pmagazine-large-base",
	Angle = 0,
	Pivot = { 0, -0.54 },
	Scale = 0.9,
	PivotOffset = { 0, 0.1 },
	Sprite = "pmagazine-large-base",

}
