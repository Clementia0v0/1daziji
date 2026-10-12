dofile("scripts/interpolate.lua")

FireEnd = 2
AngleTable =
{
	{ 0,		0,	 },
	{ 1.0,		15, },
	{ FireEnd,	0,   },
}

Angle = 90

function Update(delta)
	if FireTimer then
		FireTimer = FireTimer + delta
		
		Angle = InterpolateTable(AngleTable, FireTimer, 2)
		SetNodeAngle("Head", Angle)
		
		if FireTimer > FireEnd then
			FireTimer = nil
		end
	end
end

function OnWeaponFired()
	FireTimer = 0
end
