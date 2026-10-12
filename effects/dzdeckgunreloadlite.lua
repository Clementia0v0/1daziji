--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3.0




Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzdeckgunreload.mp3",
		PlayForEnemy = true,
		Volume = 0.6,
		Priority = 254,
		Falloff = true,
	},
	--[[{
		Type = "sound",
		TimeToTrigger = 2,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzdeckgunreload2.mp3",
		PlayForEnemy = true,
		Volume = 1,
		Priority = 254,
		Falloff = true,
	},]]--
	
}
