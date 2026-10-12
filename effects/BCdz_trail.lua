--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects

LifeSpan = 3

Effects =
{

	{
		Type = "trail",
		Texture =  path .. "/effects/media/tail.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Colour = { 255, 0, 0, 255 },
		Width = 48,
		Length = 0.75,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0.001,
		ScrollRate = 0,
		FattenRate = 0,
	},

	

}
