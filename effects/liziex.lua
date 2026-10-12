--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 15
IgnoreHidden = true

Sprites =
{
}


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

Effects =
{
	Stem(0, 7, 9, StemDepthMain, { 172, 122, 25, 255 }),
	Stem(2, 2, 5, StemDepthLight, { 254, 215, 0, 255 }),
	Stem(4, 3, 6, StemDepth, { 255, 166, 0, 255 }),
	Cloud(0, 22, 8, 125, -10, { 57, 57, 55, 255 }, 14, 9, CloudDepth, 0.1, 1, 0.2, 0.8), -- main cloud
	Cloud(0, 10, 5, 95, 0, { 254, 168, 0, 255 }, 12, 8, CloudDepthMid, 0.1, 0.9, 0.2, 0.8), -- orange mid-ground fireball
	Cloud(0, 15, 7, 80, 7, { 57, 57, 55, 255 }, 14, 8, CloudDepthLower, 0.1, 1, 0.2, 0.8), -- main cloud (lower half)
	Cloud(0, 85, 7, -10, 30, { 57, 57, 55, 255 }, 13, 12, FrontCloudDepth0, 1, 1, 0.2, 0.8), -- ground level smoke cloud
	Cloud(0, 5, 3, 95, -5, { 254, 254, 254, 245 }, 8, 6, FrontCloudDepth3, 0.3, 1, 0.3, 0.6, path .. "/effects/media/AdditiveLarge"), -- rising white fireball
	Cloud(0, 18, 6, 90, -5, { 254, 232, 0, 128 }, 12, 6.5, FrontCloudDepth1, 0.3, 0.5, 0.3, 0.7, path .. "/effects/media/AdditiveLarge"), -- rising fireball
	Cloud(3, 30, 6, 70, -6, { 166, 166, 166, 255 }, 10, 4, FrontRingDepth, 0.1, 1, 0.5, 0.5), -- grey in-front ring
	Cloud(3, 30, 6, 48, 6, { 202, 202, 202, 255 }, 10, 4, BackRingDepth, 0.1, 1, 0.5, 0.5), -- lighter behind ring
	Streamers(1, 3),
	Streamers(1.2, 4),
	{ -- glow sprite that stays at point of origin
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = GlowDepth },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = path .. "/effects/media/glow03.dds",
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
		Sprite = path .. "/effects/media/glow03.dds",
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
		Sprite = path .. "/effects/media/glow03.dds",
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
		Type = "shake",
		TimeToTrigger = 0,
		TimeToLive = 8,
		Magnitude = 28,
	},
}
