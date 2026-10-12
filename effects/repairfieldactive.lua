--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5

Sprites =
{
	{
		Name = "repairfieldactive",
		Scale = 2,
		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path.."/effects/media/Repair.png", colour = { 1, 1, 1, 0.0 }, duration = 0.5 },
					{ texture = path.."/effects/media/Repair.png", colour = { 1, 1, 1, 1.0 }, duration = 0.5 },
					blendColour = true,
					mipmap = true,
				},
			},
		},
	},
}


Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/sg1.mp3",
		PlayForEnemy = false,
		Volume = 1,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.5,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/sg2.mp3",
		PlayForEnemy = false,
		Volume = 1,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.5,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/sound/sg3.mp3",
		PlayForEnemy = false,
		Volume = 1,
		Priority = 254,
		Falloff = true,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		PlayForEnemy = false,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.01,
		Sprite = "repairfieldactive",
		KillParticleOnEffectCancel = true,
		KillParticleOnEffectExpire = true,
		Additive = false,
		TimeToLive = 10000000,
		InitialSize = 3.125,
		ExpansionRate = 0,
		ScaleMean = 2,
		AngleMaxDeviation = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 48 },
		Colour2 = { 255, 255, 255, 0 },
	},
}
--[[
Sounds =
{
	"audio/sfx/tools/tool_ratchet_01.wav",
	"audio/sfx/tools/tool_ratchet_02.wav",
	"audio/sfx/tools/tool_ratchet_03.wav",
	"audio/sfx/tools/tool_ratchet_04.wav",
	"audio/sfx/tools/tool_ratchet_05.wav",
	"audio/sfx/tools/tool_ratchet_06.wav",
}

Repeat = false

function UpdateEffect(self, effectTime, pos)
	if self == nil then self = {} end

	if self.channel == nil or (Repeat and not IsSoundPlaying(self.channel)) then
		self.channel = TriggerSound(Sounds[math.random(#Sounds)], 0.8, 192, false, true, pos)
	end
	
	return self
end
]]
