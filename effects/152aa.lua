--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3

Effects =
{

	{
		Type = "trail",
		Texture =  path .. "/effects/media/he.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Colour = { 255, 20, 20, 250 },
		Width = 30,
		Length = 0.6,
		Keyframes = 100,
		KeyframePeriod = 0.02,
		RepeatRate = 0.01,
		ScrollRate = 0,
		FattenRate = 0,
	}

	

}
