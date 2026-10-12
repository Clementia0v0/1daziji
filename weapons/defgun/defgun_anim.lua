dofile("scripts/interpolate.lua")

FireEnd = 76

cAngleTable =
{
	{ 0,		0,	 },
	{ 3,		60, },
	{ 10,		60, },
	{ 14,		0, },
	{ FireEnd,	0,   },
}
rAngleTable =
{
	{ 0,		-50,	 },
	{ 16,		-50, },
	{ 20,		-90, },
	{ 70,		-90, },
	{ FireEnd,	-50,   },
}
Angle = 90

function Update(delta)
	if FireTimer then
		FireTimer = FireTimer + delta
		
		cAngle = InterpolateTable(cAngleTable, FireTimer, 2)
		rAngle = InterpolateTable(rAngleTable, FireTimer, 2)
		SetNodeAngle("defgun-cwing", cAngle)
		SetNodeAngle("defgun-rwing", rAngle)
		if FireTimer > FireEnd then
			FireTimer = nil
			SetNodeAngle("defgun-rwing", -50)
			

		end
	end
end

function OnWeaponFired()
	FireTimer = 0
end
