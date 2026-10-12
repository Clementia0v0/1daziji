
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 2.0

Effects =
{

	{
		Type = "trail",
		Texture = path .. "/effects/media/trail.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Width = 5,
		Length = 0.75,
		Keyframes = 50,
		KeyframePeriod = 0.025,
		RepeatRate = 0.002,
		ScrollRate = 0,
		FattenRate = 0,
	},
	Keyframes =							
		{
			{
				colour = { 220, 220, 255, 255 },
			},
		},
}
