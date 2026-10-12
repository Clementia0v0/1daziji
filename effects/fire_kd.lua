--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 12.0




Effects =
{
	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzdeckgun2.mp3",
		PlayForEnemy = true,
		Volume = 1,
		Priority = 254,
		Falloff = true,
	},
	
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 15,
		LocalPosition = { x = 0.2, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/smoke",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -10,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 10,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 3,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 300,	
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 5,
				RotationalSpeedStdDev = 0,
				AgeMean = 3,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.2, 0.6 },
				ScaleKeys = { 0.2, 0.6 },
			
			},
		},
	},
	{
	--steam cloud
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 30,
		LocalPosition = { x = 0.0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/steam",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -16,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 16,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 0,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 40,
				ScaleMean = 0.6,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 560,	
				SpeedStdDev = 200,
				Drag = 0.9,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 5,
				RotationalSpeedStdDev = 0,
				AgeMean = 5.0,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.3, 0.7 },
				ScaleKeys = { 0.4, 0.6 },
			},
		},
	},
	{
	--SPARK
		Type = "sparks",
		TimeToTrigger = 0.2,
		SparkCount = 20,
		LocalPosition = { x = 0.3, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture =  "effects/media/SteamCloud",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -2,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 2,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 0,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 2,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 700,	
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 5,
				RotationalSpeedStdDev = 0,
				AgeMean = 2.4,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.8, 0.7 },
				ScaleKeys = { 0.1, 0.5 },
				colour = { 255, 165, 0, 200 }, -- Colour used to modulate the sprite
			},
		},
	},
	

	
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 200, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "cannon_fire",
		Additive = false,
		TimeToLive = 2,
		Angle = -90,
		InitialSize = 3,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},

--[[	{
		Type = "bullettime",
		TimeToTrigger = 0,
		TimeToContinue = 1.5,
		Speed = 0.5,
	},
]]

	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1500,
		FalloffEnd = 6000,
		TimeToTrigger = 0,
		TimeToLive = 0.7,
		Magnitude = 16,
	},
}
