--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 12

LaunchDelay = 12
WarmupVerticalOffset = -280
LaunchVerticalOffset = -65
EffectDepth = -110

Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToStop = 12,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/spaceship_launtch.mp3",
		PlayForEnemy = true,
		Volume = 2,
		Priority = 254,
		Falloff = true,
	},
	
}
