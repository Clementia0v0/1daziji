--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 18
IgnoreHidden = true

Sprites =
{
}


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

		Gravity = 500,						-- gravity applied to particle (981 is earth equivalent)
		
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
				SpeedMean = 900,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 250,			-- standard deviation of spark speed at emission
				Drag = .2,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 0,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 0,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 1.7,				-- mean age in seconds (normal distribution)
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
				AgeMean = 3,
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
				AgeMean = 1.7,
				AgeStdDev = 0.2,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
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
--Stem(delay, duration, age, speed, depth, col)
Effects =
{	
	
	Streamers(0.2, 12, 80),
	Streamers(0.2, 12, 90),
	Streamers(0.2, 12, 100),
	Streamers(0.2, 12, 110),
	Streamers(0.2, 12, 120),
	Streamers(0.2, 12, 130),
	Streamers(0.2, 12, 140),
	Streamers(0.2, 12, 70),
	Streamers(0.2, 12, 60),
	{ -- glow sprite that stays at point of origin
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = GlowDepth },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "effects/media/glow03.dds",
		Additive = true,
		TimeToLive = 6,
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
		TimeToLive = 6,
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

	
	{
		Type = "sound",
		TimeToTrigger = LaunchDelay,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/ammo_he_explode.mp3",
		PlayForEnemy = true,
		Volume = 1.0,
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
