dofile("scripts/interpolate.lua")

FireEnd = 3
AngleTable =
{
	{ 0,		0,	 },
	{ 1.5,		8, },
	{ FireEnd,	0,   },
}

Angle = 90

function Update(delta)
	if FireTimer then
		FireTimer = FireTimer + delta
		
		Angle = InterpolateTable(AngleTable, FireTimer, 2)
		SetNodeAngle("Barrel", Angle)
		
		if FireTimer > FireEnd then
			FireTimer = nil
		end
	end
end

function OnWeaponFired()
	FireTimer = 0
end
