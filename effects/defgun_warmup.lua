--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 10


WarmupVerticalOffset = 5
LaunchVerticalOffset = -65
EffectDepth = -110

Effects =
{
	
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToStop = 6,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/warmup1.mp3",
		PlayForEnemy = true,
		Volume = 1.3,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		TimeToStop = 2,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/warn2.mp3",
		PlayForEnemy = true,
		Volume = 1.6,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 3,
		TimeToStop = 5,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/warn2.mp3",
		PlayForEnemy = true,
		Volume = 1.6,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 6,
		TimeToStop = 8,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/warn2.mp3",
		PlayForEnemy = true,
		Volume = 1.6,
		Priority = 254,
		Falloff = true,
	},

	{
		Type = "sparks",
		TimeToTrigger = 1.5,
		TimeToStop = 8,
		SparkCount = 120,
		BurstPeriod = 0.125,
		SparksPerBurst = 3,
		LocalPosition = { x = 0, y = 0, z = EffectDepth },	-- how to place the origin relative to effect position and direction (0, 0) 
		Sprite = path .. "/effects/media/Steam.tga",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -45,
			Max = 45,
			Mean = 180,
			StdDev = 10,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,					-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 5,		-- maximum distance from effect origin
				ScaleMean = 1,			-- mean scale (normal distribution)
				ScaleStdDev = 0.01,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 1200,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 1,			-- standard deviation of spark speed at emission
				Drag = 1.5,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 20,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 45,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 45,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 10,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 2,				-- mean age in seconds (normal distribution)
				AgeStdDev = 0.1,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0.1, 0.6 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0.25, 0.4 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
				colour = { 255, 255, 255, 255 }, -- Colour used to modulate the sprite
			},
		},
	},
}
