--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3




Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToStop = 3,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/liziac.mp3",
		PlayForEnemy = true,
		Volume = 2,
		Priority = 254,
		Falloff = true,
	},
	
}
