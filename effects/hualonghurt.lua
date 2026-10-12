--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 6


EffectDepth = -110

Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToStop = 6,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/hualonghurt.mp3",
		PlayForEnemy = true,
		Volume = 2,
		Priority = 250,
		Falloff = true,
	},
	
}
