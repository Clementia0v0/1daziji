dofile("effects/sniper_trail.lua")
SoundEvent = "effects/sniper_trail.lua"
Sprites = {}

if Effects then
	for i, effect in pairs(Effects) do
		if effect.Type == "trail" then
			effect.Texture = path .. "/effects/media/splash_trail.tga"
			effect.Colour = { 0, 255, 0, 255 }
		end
	end
end