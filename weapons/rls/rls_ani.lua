--- forts API ---
dofile("scripts/interpolate.lua")

FireEnd = 35
AngleTable =
{
	{ 0,		-90,},
	{ 8,		-90,},
	{ 10,		0, },
	{ 32,		0, },
	{ FireEnd,	-90,   },
}

Anglel = -90
Angler = 90

function Update(delta)
	if FireTimer then
		FireTimer = FireTimer + delta
		
		Anglel = InterpolateTable(AngleTable, FireTimer, 2)
		Angler = 0-Anglel
		SetNodeAngle("doorl", Anglel)
		SetNodeAngle("doorr", Angler)
		
		if FireTimer > FireEnd then
			SetNodeAngle("doorl", -90)
			SetNodeAngle("doorr", 90)
			FireTimer = nil
		end
	end
end

function OnWeaponFired()
	FireTimer = 0
end
