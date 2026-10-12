--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3

LaunchDelay = 12
WarmupVerticalOffset = -280
LaunchVerticalOffset = -65
EffectDepth = -110

Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0.1,
		TimeToStop = 19,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/aaon.wav",
		PlayForEnemy = false,
		Volume = 1.4,
		Priority = 253,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToStop = 19,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/aabell1.mp3",
		PlayForEnemy = false,
		Volume = 1.2,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 1,
		TimeToStop = 19,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/aabell2.mp3",
		PlayForEnemy = false,
		Volume = 1.2,
		Priority = 252,
		Falloff = true,
	},
	
}

