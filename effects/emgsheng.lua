--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 10

Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 20,
		BurstPeriod = 0.5,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 0, z = 50 },
		Sprite = path .. "/effects/media/smoke",

		Gravity = -60,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -2,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 2,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 3.0,
				ScaleStdDev = 0.000,
				SpeedStretch = 0,
				SpeedMean = 200,
				SpeedStdDev = 5,
				Drag = 1.6,
				RotationMean = 0.1,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 6,
				AgeStdDev = .025,
				AlphaKeys = { 0, 0.8 },
				ScaleKeys = { 0, 0.9 },
				colour = { 255, 255, 255, 255 },
			},
		},
	},
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 16,
		BurstPeriod = 0.625,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 0, z = 50 },
		Sprite = path .. "/effects/media/steam",

		Gravity = -60,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -2,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 2,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.3,
				ScaleStdDev = 0.000,
				SpeedStretch = 0,
				SpeedMean = 200,
				SpeedStdDev = 5,
				Drag = 1.6,
				RotationMean = 0.1,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 6,
				AgeStdDev = .025,
				AlphaKeys = { 0, 0.8 },
				ScaleKeys = { 0, 0.9 },
				colour = { 190, 78, 32, 255 },
			},
		},
	},
	

}
