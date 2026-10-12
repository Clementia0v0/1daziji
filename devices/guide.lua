ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 135.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -46.0 }
Mass = 120.0
HitPoints = 400.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "guide-base",

		States =
		{
			
					Normal = { Frames = { { texture =path.. "/devices/guide/js.png" }, mipmap = true, }, },
					Idel =Normal ,

				
			
		},
	},
}



Root =
{
	Name = "guide",
	Angle = 0,
	Pivot = { 0, -0.4 },
	PivotOffset = { 0, 0 },
	Sprite = "guide-base",
}
