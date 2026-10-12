local dzto = FindProjectile("dzto")
local dztouw = FindProjectile("dztouw")
if dzto and dztouw then
    dzto.MaxAge = 40
    dzto.MaxAgeUnderwater = 40
    dztouw.MaxAge = 40
    dztouw.MaxAgeUnderwater = 40
end


	local APs = {
		"dzdeckgunAP",
		"dzdeckgunAP2",
		"dzdeckgunAP3", --4
		"dzdeckgunAP38",--3
		"dzdeckgunAP4",--6
		"dzdeckgunAP5",--8
		"dzdeckgunAP21"
	}
	for k,v in pairs(APs) do
		local ap = FindProjectile(v)
		local dzsmoke = FindProjectile("dzsmokebomb")
		if active  then
			ap.EMPRadius = ap.ProjectileSplashDamageMaxRadius
			ap.EMPOffset = 50
			ap.EMPDuration = 8
			ap.EMPSensitivity = 0
			if dzsmoke then
				ap.Effects.Age = 
					{
						t400 = {Effect = "effects/impact_heavy.lua",Projectile = { Count = 1, Type = "dzsmokebomb", Speed = 0, StdDev = 0.1, AngleOffset = 0.35 },Offset = -40, Terminate = true,Splash = true}
					}
					
			end
		end
	end

