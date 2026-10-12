dofile("mods/dlc2/effects/trail_thunderbolt.lua")
--frame time, not compatible with mods that change hz rate unfortunately
LifeSpan = 10e11

Sprites =
{
	{
		Name = "plthnormal",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "mods/dlc2/weapons/media/thunderbolt_jet.dds" },
					

					duration = 0.04,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}
Effects =
{

	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -0.3 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "plthnormal",
		Additive = false,
		TimeToLive = 10e11,
		Angle = 0,
		InitialSize = 2.4,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
		KillParticleOnEffectCancel = true,
	},

}
