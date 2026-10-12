--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 12

LaunchDelay = 0.0
EffectVerticalOffset = 1
EffectDepth = 90

Effects =
{

	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzelcfire.mp3",
		PlayForEnemy = true,
		Volume = 0.8,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 6,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/dzelc.mp3",
		PlayForEnemy = true,
		Volume = 4,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sprite",
		TimeToTrigger = 6,
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
	{
		--DUST CLOUDS
			Type = "sparks",
			TimeToTrigger = 6,
			SparkCount = 2,
			LocalPosition = { x = 0.0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
			Texture = path .. "/effects/media/eject1",
	
			Gravity = 300,						-- gravity applied to particle (981 is earth equivalent)
			
			EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
			{
				Min = -5,						-- minimum angle in degrees (e.g. -180, 45, 0)
				Max = 5,						-- maximum angle in degrees (e.g. -180, 45, 0)
				StdDev = 0.5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
			},
	
			Keyframes =					
			{
				{
					Angle = 0,
					RadialOffsetMin = 0,
					RadialOffsetMax = 20,
					ScaleMean = 2,
					ScaleStdDev = 0.1,
					SpeedStretch = 0,
					SpeedMean = 2000,	
					SpeedStdDev = 200,
					Drag = 0.5,
					RotationMean = 0.5,
					RotationStdDev = 45,
					RotationalSpeedMean = 50,
					RotationalSpeedStdDev = 0,
					AgeMean = 6,
					AgeStdDev = 0.5,
					AlphaKeys = { 0.1, 0.1 },
					ScaleKeys = { 0.1, 0.1 },
				
				},
			},
		},
		{
			--DUST CLOUDS
				Type = "sparks",
				TimeToTrigger = 6,
				SparkCount = 2,
				LocalPosition = { x = 0.0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
				Texture = path .. "/effects/media/eject2",
		
				Gravity = 300,						-- gravity applied to particle (981 is earth equivalent)
				
				EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
				{
					Min = -5,						-- minimum angle in degrees (e.g. -180, 45, 0)
					Max = 5,						-- maximum angle in degrees (e.g. -180, 45, 0)
					StdDev = 0.5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
				},
		
				Keyframes =							
				{
					{
						Angle = 0,
						RadialOffsetMin = 0,
						RadialOffsetMax = 20,
						ScaleMean = 2,
						ScaleStdDev = 0.1,
						SpeedStretch = 0,
						SpeedMean = 2000,	
						SpeedStdDev = 200,
						Drag = 0.5,
						RotationMean = 0.5,
						RotationStdDev = 45,
						RotationalSpeedMean = 50,
						RotationalSpeedStdDev = 0,
						AgeMean =6,
						AgeStdDev = 0.5,
						AlphaKeys = { 0.1, 0.1 },
						ScaleKeys = { 0.1, 0.1 },
					},
				},
			},
}
