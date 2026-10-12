dofile("effects/mortar_trail.lua")
SoundEvent = "mods/commander-cf-buster/effects/uranium_fly.lua"
Sprites = {}

if Effects then
	for i, effect in pairs(Effects) do
		if effect.Type == "sparks" then
			effect.Texture = path .. "/effects/media/smoke_2.tga"
			for j, keyframe in pairs(effect.Keyframes) do
				keyframe.colour = { 0, 255, 0, 255 }
			end
		end
	end
end