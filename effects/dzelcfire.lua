--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 6.0

LaunchDelay = 0.0
EffectVerticalOffset = 1
EffectDepth = 90

Effects =
{

	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzelc.mp3",
		PlayForEnemy = true,
		Volume = 2,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.2,
		LocalPosition = { x = 0, y = 200, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "cannon_fire",
		Additive = false,
		TimeToLive = 2,
		Angle = -90,
		InitialSize = 3,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	
--[[
	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/audio/sfx/weapons/weapon_missile_swarm_fire_01.wav",
	},
]]
	
}
