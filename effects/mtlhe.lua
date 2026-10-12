--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3
SoundEvent = "mods/dz/effects/prjtr"
Effects =
{

	{
		Type = "trail",
		Texture =  path .. "/effects/media/he.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Colour = { 233 ,233 ,20, 255 },
		Width = 48,
		Length = 1.25,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0.001,
		ScrollRate = 0,
		FattenRate = 0,
	}

	

}
