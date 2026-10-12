--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 18
IgnoreHidden = true

Sprites =
{
}

function Cloud(delay, extent, sparks, speed, outerSpeed, col, maxAge, scale, depth, scaleInEnd, scaleOutStart, fadeInEnd, fadeOutStart, sprite)
	return {
		--BACKGROUND CLOUD
		Type = "sparks",
		TimeToTrigger = delay,
		TimeToStop = delay,
		SparkCount = sparks,
		BurstPeriod = 10,
		SparksPerBurst = sparks,
		LocalPosition = { x = 0, y = 20, z = depth },
		Sprite = sprite or "effects/media/ExplosionMedium",

		Gravity = 0,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			Min = -extent,
			Max = extent,
			StdDev = 1,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -extent,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = scale,
				ScaleStdDev = .3,
				SpeedStretch = 0,
				SpeedMean = speed + outerSpeed,
				SpeedStdDev = 1,
				Drag = .1,
				RotationMean = -50,
				RotationStdDev = 0,
				RotationalSpeedMean = -30,
				RotationalSpeedStdDev = 0,
				AgeMean = maxAge,
				AgeStdDev = 0.05*maxAge,
				AlphaKeys = { fadeInEnd, fadeOutStart },
				ScaleKeys = { scaleInEnd, scaleOutStart },	
				colour = col,
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = scale*0.9,
				ScaleStdDev = .3,
				SpeedStretch = 0,
				SpeedMean = speed,
				SpeedStdDev = 1,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = maxAge,
				AgeStdDev = 0.05*maxAge,
				AlphaKeys = { fadeInEnd, fadeOutStart },
				ScaleKeys = { scaleInEnd, scaleOutStart },	
				colour = col,
			},
			{
				Angle = extent,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = scale,
				ScaleStdDev = .3,
				SpeedStretch = 0,
				SpeedMean = speed + outerSpeed,
				SpeedStdDev = 1,
				Drag = 0.1,
				RotationMean = 50,
				RotationStdDev = 0,
				RotationalSpeedMean = 30,
				RotationalSpeedStdDev = 0,
				AgeMean = maxAge,
				AgeStdDev = 0.05*maxAge,
				AlphaKeys = { fadeInEnd, fadeOutStart },
				ScaleKeys = { scaleInEnd, scaleOutStart },	
				colour = col,
			},
		},
	}
end

function Streamers(delay, count,extend)
	return {
		--SPARKY STREAMERS
		Type = "sparks",
		TimeToTrigger = delay,
		TimeToStop = delay,
		SparkCount = count,
		SparksPerBurst = count,
		LocalPosition = { x = 0, y = 0, z = StreamersDepth },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/flame.dds",
		TrailEffect = "effects/missile_streams.lua",

		Gravity = 100,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -extend,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = extend,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 15,					-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -70,				-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 20,		-- maximum distance from effect origin
				ScaleMean = 1,				-- mean scale (normal distribution)
				ScaleStdDev = 0.2,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0.05,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 1500,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 250,			-- standard deviation of spark speed at emission
				Drag = .2,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 0,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 0,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = .7,				-- mean age in seconds (normal distribution)
				AgeStdDev = 0.2,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0, 0.5 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0, 0.5 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.05,
				SpeedMean = 2000,
				SpeedStdDev = 250,
				Drag = .2,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 2,
				AgeStdDev = 0.3,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 70,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.2,
				SpeedStretch = 0.05,
				SpeedMean = 1500,
				SpeedStdDev = 250,
				Drag = .2,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = .7,
				AgeStdDev = 0.2,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	}
end

function Stem(delay, duration, age, speed, depth, col)
	return 	{
		Type = "sparks",
		TimeToTrigger = delay,
		TimeToStop = delay + duration,
		SparkCount = 20,
		BurstPeriod = 0.6,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = -50, z = depth },
		Sprite =  "effects/media/ExplosionMedium",

		Gravity = 0,

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			Min = -25,
			Max = 25,
			StdDev = 3,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = 5.0,
				ScaleStdDev = .2,
				SpeedStretch = 0,
				SpeedMean = speed,
				SpeedStdDev = 1,
				Drag = 0,
				RotationMean = 0,
				RotationStdDev = 50,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 10,
				AgeMean = age,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.5, 0.5 },
				ScaleKeys = { 0.2, 1 },	
				colour = col,
			},
		},
	}
end

Background = 1
StemDepthMain = -1
StemDepth = -1.1
StemDepthLight = -1.2
CloudDepth = -2
CloudDepthMid = -1.5
CloudDepthLower = -0.25
StreamersDepth = -3
FrontCloudDepth0 = -4
FrontCloudDepth1 = -5
FrontCloudDepth2 = -6
FrontCloudDepth3 = -7
FrontCloudDepth4 = -8
BackRingDepth = -0.5
FrontRingDepth = -9
ShockwaveDepth = -10
GlowDepthFollow = -900
GlowDepth = -1000
--cloud(delay, extent, sparks, speed, outerSpeed, col, maxAge, scale, depth, scaleInEnd, scaleOutStart, fadeInEnd, fadeOutStart, sprite)
--Stem(delay, duration, age, depth, col)
Effects =
{
	Stem(0, 7, 14, 80,StemDepthMain, { 172, 122, 25, 255 }),
	Stem(0, 7, 14, 40,StemDepthMain, { 172, 122, 25, 255 }),
	Stem(2, 2, 10, 80,StemDepthLight, { 254, 215, 0, 255 }),
	Stem(2, 2, 10, 40,StemDepthLight, { 254, 215, 0, 255 }),
	Stem(4, 3, 11, 80,StemDepth, { 255, 166, 0, 255 }),
	Stem(4, 3, 11, 40,StemDepth, { 255, 166, 0, 255 }),
	Cloud(0, 30, 16, 180, -10, { 57, 57, 55, 255 }, 17, 14, CloudDepth, 0.1, 1, 0.2, 0.8), -- main cloud
	Cloud(0, 18, 10, 140, 0, { 254, 168, 0, 255 }, 16, 10, CloudDepthMid, 0.1, 0.9, 0.2, 0.8), -- orange mid-ground fireball
	Cloud(0, 15, 16, 130, 7, { 57, 57, 55, 255 }, 17, 8, CloudDepthLower, 0.1, 1, 0.2, 0.8), -- main cloud (lower half)
	Cloud(0, 85, 10, -5, 30, { 57, 57, 55, 255 }, 16, 9, FrontCloudDepth0, 0.5, 1, 0.2, 0.8), -- ground level smoke cloud
	Cloud(0, 10, 4, 135, -5, { 254, 254, 254, 245 }, 12, 9, FrontCloudDepth3, 0.3, 1, 0.3, 0.6, "effects/media/AdditiveLarge"), -- rising white fireball
	Cloud(0, 18, 9, 130, -5, { 254, 232, 0, 128 }, 16, 9, FrontCloudDepth1, 0.3, 0.5, 0.3, 0.7, "effects/media/AdditiveLarge"), -- rising fireball
	Cloud(3, 30, 9, 140, -6, { 166, 166, 166, 255 }, 14, 6, FrontRingDepth, 0.1, 1, 0.5, 0.5), -- grey in-front ring
	Cloud(3, 30, 9, 115, -6, { 186, 186, 186, 255 }, 14, 6, FrontRingDepth, 0.1, 1, 0.5, 0.5), -- grey in-front ring
	Cloud(3, 30, 9, 90, 6, { 202, 202, 202, 255 }, 14, 6, BackRingDepth, 0.1, 1, 0.5, 0.5), -- lighter behind ring
	Streamers(1, 16, 40),
	Streamers(1.3, 24, 55),
	Streamers(1.6, 36, 70),
	Streamers(1.8, 36, 80),
	Streamers(1.9, 36, 80),
	Streamers(2.0, 36, 80),
	{ -- glow sprite that stays at point of origin
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = GlowDepth },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "effects/media/glow03.dds",
		Additive = true,
		TimeToLive = 4,
		InitialSize = 10,
		ExpansionRate = 0,
		Angle = 90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1Time = 0.03,
		Colour2Time = 1,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 0, 0, 0, 0 },
	},
	{ -- overbright flash (can be disabled)
		Tag = "ReactorFlash",
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = GlowDepth },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "effects/media/glow03.dds",
		Additive = true,
		TimeToLive = 3,
		InitialSize = 1000,
		ExpansionRate = 0,
		Angle = 90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1Time = 0.16,
		Colour2Time = 0.32,
		Colour1 = { 192, 192, 192, 255 },
		Colour2 = { 192, 192, 192, 255 },
	},
	{ -- glow sprite that follows the fireball
		Type = "sprite",
		LocalPosition = { x = 0, y = 0, z = GlowDepthFollow },
		LocalVelocity = { x = 0, y = 75, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "effects/media/glow03.dds",
		Additive = true,
		TimeToLive = 8,
		InitialSize = 10,
		ExpansionRate = 0,
		Angle = 90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1Time = 0.03,
		Colour2Time = 1,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 0, 0, 0, 255 },
	},
	
	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/ammo_he_explode.mp3",
		PlayForEnemy = true,
		Volume = 2,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "shake",
		TimeToTrigger = 0,
		TimeToLive = 8,
		Magnitude = 28,
	},
}
