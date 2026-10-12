--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3

Effects =
{

	{
		Type = "trail",
		Texture =  path .. "/effects/media/tail.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Colour = { 145, 145, 255, 255 },
		Width = 48,
		Length = 0.75,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0.001,
		ScrollRate = 0,
		FattenRate = 0,
	},
	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzdeckgun3.mp3",
		PlayForEnemy = true,
		Volume = 0.8,
		Priority = 254,
		Falloff = true,
	},
	

}
