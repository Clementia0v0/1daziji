--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3.0




Effects =
{
	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzsniper.mp3",
		PlayForEnemy = true,
		Volume = 1,
		Priority = 254,
		Falloff = true,
	},
}
