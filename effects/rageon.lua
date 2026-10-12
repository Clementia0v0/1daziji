--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 8

LaunchDelay = 12
WarmupVerticalOffset = -280
LaunchVerticalOffset = -65
EffectDepth = -110

Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToStop = 8,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/rageon.mp3",
		PlayForEnemy = false,
		Volume = 0.5,
		Priority = 253,
		Falloff = true,
	},
	
	
}

