--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 8

LaunchDelay = 0.0
EffectVerticalOffset = 1
EffectDepth = 90

Effects =
{

	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzelcfire.mp3",
		PlayForEnemy = true,
		Volume = 0.8,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 6,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzelc.mp3",
		PlayForEnemy = true,
		Volume = 4,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sprite",
		TimeToTrigger = 6,
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
}
