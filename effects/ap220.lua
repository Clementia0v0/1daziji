--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3
SoundEvent = "mods/dz/effects/prjtr"
Effects =
{

	{
		Type = "trail",
		Texture =  path .. "/effects/media/puretrail.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Colour = { 240, 20, 20, 230 },
		Width = 20,
		Length = 1,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0,
		ScrollRate = 0,
		FattenRate = 0,
	}

	

}
