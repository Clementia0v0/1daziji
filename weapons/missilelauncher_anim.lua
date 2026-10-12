--- forts API ---
dofile("scripts/interpolate.lua")

FireEnd = 20
AngleTable =
{
	{ 0,		0,	 },
	{ 3,		-90, },
	{ 17,		-90, },
	{ FireEnd,	0,   },
}

Angle = 0

function Update(delta)
	if FireTimer then
		FireTimer = FireTimer + delta
		
		Angle = InterpolateTable(AngleTable, FireTimer, 2)
		SetNodeAngle("Door", Angle)
		
		if FireTimer > FireEnd then
			FireTimer = nil
		end
	end
end

function OnWeaponFired()
	FireTimer = 0
end
