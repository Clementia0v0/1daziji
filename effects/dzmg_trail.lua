--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3

Effects =
{

	{
		Type = "trail",
		Texture =  path .. "/effects/media/ap.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Width = 10,
		Length = 0.3,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0.01,
		ScrollRate = 0,
		FattenRate = 0,
		Colour = { 217, 217, 25, 255 },
	}

	

}
