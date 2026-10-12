
data.AntiAirErrorStdDev["dzdeckgun1m"] = 0.02
data.AntiAirOpenDoor["dzdeckgun1m"] = { ["mortar"] = true, ["mortar2"] = true, }
data.AntiAirFireProbability["dzdeckgun1m"] = 0.9
AntiAirFireProbabilityHumanAssist["dzdeckgun1m"] = 0.9
AntiAirAddContextButton["dzdeckgun1m"] = 0.9

data.AntiAirErrorStdDev["g130"] = 0.02
data.AntiAirOpenDoor["g130"] = { ["mortar"] = false, }
data.AntiAirFireProbability["g130"] = Balance(0.8, 0.9)
AntiAirFireProbabilityHumanAssist["g130"] = data.AntiAirFireProbability["flak"]
FireErrorStdDev["g130"] = FireErrorStdDev["flak"]
--data.OffensiveFireProbability["g130"] = 0.1
data.FireDuringRebuildProbability["g130"] = 0
data.AntiAirPower["g130"] = 0.95



--???????


data.AntiAirErrorStdDev["dzmg"] = Balance(2, 1)
data.AntiAirOpenDoor["dzmg"] = { ["mortar"] = true, ["mortar2"] = true, }
data.AntiAirFireProbability["dzmg"] = 0.9
AntiAirFireProbabilityHumanAssist["dzmg"] = 1

AntiAirFireLeadTimeMin["dzmg"] = 0.8
AntiAirFireLeadTimeMax["dzmg"] = 3

AntiAirFireSpeed["dzmg"] = 10000



--FireErrorStdDev["dzmg"] = FireErrorStdDev["flak"]
data.OffensiveFireProbability["dzmg"] = 0.0
data.FireDuringRebuildProbability["dzmg"] = 0


data.AntiAirErrorStdDev["flakold"] = data.AntiAirErrorStdDev["flak"]
data.AntiAirOpenDoor["flakold"] = { ["mortar"] = false, }
data.AntiAirFireProbability["flakold"] = data.AntiAirFireProbability["flak"]
AntiAirFireProbabilityHumanAssist["flakold"] = data.AntiAirFireProbability["flak"]
FireErrorStdDev["flakold"] = FireErrorStdDev["flak"]
data.OffensiveFireProbability["flakold"] = 0.1
data.FireDuringRebuildProbability["flakold"] = 0


data.AntiAirErrorStdDev["uwdzmg"] = Balance(2, 1)
data.AntiAirOpenDoor["uwdzmg"] = { ["mortar"] = false, }
data.AntiAirFireProbability["uwdzmg"] = Balance(0.8, 0.9)
AntiAirFireProbabilityHumanAssist["uwdzmg"] = data.AntiAirFireProbability["flak"]
FireErrorStdDev["uwdzmg"] = Balance(3, 1)
data.OffensiveFireProbability["uwdzmg"] = 0.1
data.FireDuringRebuildProbability["uwdzmg"] = 0

data.AntiAirErrorStdDev["dzmgcom"] = 0.04
data.AntiAirOpenDoor["dzmgcom"] = { ["mortar"] = false, }
data.AntiAirFireProbability["dzmgcom"] = Balance(0.8, 0.9)
AntiAirFireProbabilityHumanAssist["dzmgcom"] = data.AntiAirFireProbability["flak"]
FireErrorStdDev["dzmgcom"] = Balance(3, 1)
data.OffensiveFireProbability["dzmgcom"] = 0.1
data.FireDuringRebuildProbability["dzmgcom"] = 0



data.AntiAirErrorStdDev["cj1"] = Balance(2, 1)
data.AntiAirFireProbability["cj1"] = 1
AntiAirFireProbabilityHumanAssist["cj1"] = 1
--FireErrorStdDev["cj1"] = Balance(0.2, 0.1)
data.OffensiveFireProbability["cj1"] = 0.0
data.FireDuringRebuildProbability["cj1"] = 0

AntiAirFireLeadTimeMin["cj1"] = 0.4
AntiAirFireLeadTimeMax["cj1"] = 1.6


data.AntiAirInclude["cj1"] = 
	{ 
		["dzdeckgunAPb"] = true,
		["dzdeckgunAP3b"] = true, 
		["dzdeckgunAP38b"] = true, 
		["dzdeckgunAP4b"] = true, 
		["dzdeckgunAP5b"] = true, 
		["dzdeckgunAP21b"] = true, 
		["dzdeckgunAP"] = true, 
		["dzdeckgunAP2"] = true, 
		["dzdeckgunAP3"] = true, 
		["dzdeckgunAP38"] = true, 
		["dzdeckgunAP4"] = true, 
		["dzdeckgunAP5"] = true, 
		["dzdeckgunAP21"] = true, 
	}



data.ProjectileHitpoints["dzmg"] = 10
data.ProjectileHitpoints["dzb"] = 10

ShootableProjectile["refhepl"] = true
ShootableProjectile["refbombHE"] = true
ShootableProjectile["mark_orbitalstrike"] = true
ShootableProjectile["rocketemp"] = true
ShootableProjectile["g130HE"] = true
ShootableProjectile["g130SAP"] = true
ShootableProjectile["g130SAPb"] = true
ShootableProjectile["dzdeckgunHE"] = true
ShootableProjectile["dzdeckgunHE2"] = true
ShootableProjectile["dzdeckgunHE3"] = true
ShootableProjectile["kuangdunHE"] = true
ShootableProjectile["dzdeckgunHE38"] = true
ShootableProjectile["dzdeckgunHE4"] = true
ShootableProjectile["dzdeckgunHE5"] = true
ShootableProjectile["dzdeckgunHE_p"] = true
ShootableProjectile["dzdeckgunHE2_p"] = true
ShootableProjectile["dzdeckgunHE3_p"] = true
ShootableProjectile["dzdeckgunHE38_p"] = true
ShootableProjectile["dzdeckgunHE4_p"] = true
ShootableProjectile["dzdeckgunHE5_p"] = true
ShootableProjectile["dzdeckgunSAPb"] = true
ShootableProjectile["dzdeckgunSAP2b"] = true
ShootableProjectile["dzdeckgunSAP3b"] = true
ShootableProjectile["dzdeckgunSAP38_b"] = true
ShootableProjectile["dzdeckgunSAP"] = true
ShootableProjectile["dzdeckgunSAP2"] = true
ShootableProjectile["dzdeckgunSAP3"] = true
ShootableProjectile["dzdeckgunSAP38"] = true
ShootableProjectile["dzdeckgunEMP1"] = true
ShootableProjectile["dzdeckgunEMP2"] = true
ShootableProjectile["dzdeckgunEMP3"] = true
ShootableProjectile["dzcannon"] = true
ShootableProjectile["mortar"] = true
ShootableProjectile["mortar2"] = true
ShootableProjectile["dztouw"] = true
ShootableProjectile["dzto"] = true
ShootableProjectile["t1rocket"] = true
ShootableProjectile["t2rocket"] = true
ShootableProjectile["t3rocket"] = true
ShootableProjectile["t4rocket"] = true
ShootableProjectile["t5rocket"] = true
ShootableProjectile["dznest"] = true
ShootableProjectile["dznestoff"] = true
ShootableProjectile["aim"] = true
ShootableProjectile["turn"] = true
ShootableProjectile["topl"] = true
ShootableProjectile["lightbomber"] = true
ShootableProjectile["lb2"] = true
ShootableProjectile["lbomb"] = true
ShootableProjectile["dzmt"] = true
ShootableProjectile["dznthk"] = true
ShootableProjectile["dzhevbomb"] = true
ShootableProjectile["nudztouw"] = true
ShootableProjectile["nudzto"] = true
ShootableProjectile["mtl"] = true
ShootableProjectile["mtlhe"] = true
ShootableProjectile["uuv2"] = true
ShootableProjectile["uuvbomb"] = true
ShootableProjectile["sbtopl"] = true
ShootableProjectile["sbtopl4"] = true
ShootableProjectile["sbnthk4"] = true
ShootableProjectile["sbaapl"] = true
ShootableProjectile["sbrcpl"] = true
ShootableProjectile["decoy1"] = true
ShootableProjectile["tu95"] = true
ShootableProjectile["fab9000"] = true
ShootableProjectile["leoHE"] = true
ShootableProjectile["defgun"] = true

--ShootableProjectile["nighthawkbug"] = true
ShootableProjectile["dznestbc"] = true
ShootableProjectile["dznestoffbc"] = true
ShootableProjectile["cm2"] = true
ShootableProjectile["cm3"] = true
ShootableProjectile["dzsmokeb"] = true
ShootableProjectile["dzsmoker"] = true

ShootableProjectile["dzdeckgunAP"] = true
ShootableProjectile["dzdeckgunAP2"] = true
ShootableProjectile["dzdeckgunAP21"] = true
ShootableProjectile["dzdeckgunAP3"] = true
ShootableProjectile["dzdeckgunAPHEV3"] = true
ShootableProjectile["dzdeckgunAP38"] = true
ShootableProjectile["dzdeckgunAP4"] = true
ShootableProjectile["dzdeckgunAP5"] = true
ShootableProjectile["dzdeckgunAPb"] = true
ShootableProjectile["dzdeckgunAP2b"] = true
ShootableProjectile["dzdeckgunAP21b"] = true
ShootableProjectile["dzdeckgunAP3b"] = true
ShootableProjectile["dzdeckgunAPHEV3b"] = true
ShootableProjectile["dzdeckgunAP38b"] = true
ShootableProjectile["dzdeckgunAP4b"] = true
ShootableProjectile["dzdeckgunAP5b"] = true

aaTargetFlaming = {"flamingmtlhe","flamingdzdeckgunHE","flamingdzdeckgunHE2","flamingdzdeckgunHE3","flamingdzdeckgunHE4","flamingdzdeckgunHE5"}
for k,v in pairs(aaTargetFlaming) do
	ShootableProjectile[v] = true
	ShootableProjectile[v.."_p"] = true
end
Log("1")




	for k,v in pairs(data.AntiAirErrorStdDev) do
		if k ~= "cj1" then
			data.AntiAirExclude[k] = 
				{ 
					["dzdeckgunAPb"] = true,
					["dzdeckgunAP3b"] = true, 
					["dzdeckgunAPHEV3b"] = true, 
					["dzdeckgunAP38b"] = true, 
					["dzdeckgunAP2b"] = true, 
					["dzdeckgunAP4b"] = true, 
					["dzdeckgunAP5b"] = true, 
					["dzdeckgunAP21b"] = true, 
					["dzdeckgunAP"] = true, 
					["dzdeckgunAP2"] = true, 
					["dzdeckgunAP3"] = true, 
					["dzdeckgunAPHEV3"] = true, 
					["dzdeckgunAP38"] = true, 
					["dzdeckgunAP4"] = true, 
					["dzdeckgunAP5"] = true, 
					["dzdeckgunAP21"] = true, 
				}
		end	
		if k == "g130" then
			data.AntiAirExclude[k]["g130HE"] = true
			data.AntiAirExclude[k]["g130SAP"] = true
			data.AntiAirExclude[k]["g130SAPb"] = true
		end
	end

