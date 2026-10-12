dofile("scripts/interpolate.lua")

FireEnd = 7
AngleTable =
{
	{ 0,		0,	 },
	{ 0.6,		90, },
	{ 7.2,		-275, },
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
