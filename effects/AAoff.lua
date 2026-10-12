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
		TimeToTrigger = 0,
		TimeToStop = 19,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/aaoff.wav",
		PlayForEnemy = false,
		Volume = 1.4,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToStop = 19,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/off.mp3",
		PlayForEnemy = false,
		Volume = 1,
		Priority = 254,
		Falloff = true,
	},
	
}
