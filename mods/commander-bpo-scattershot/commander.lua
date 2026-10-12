dofile("scripts/forts.lua")
table.insert(DescPassive,"dzbposap")
table.insert(DescActive,"dzsctplm")
--CommanderActivationDuration = 20

GaugeDamageHitpoints = GaugeDamageHitpoints*2.5
GaugeAttackHitpoints = GaugeAttackHitpoints*2.5

local addmark = {
    "dzdeckgun1",
	"dzdeckgun2",
	"dzdeckgun3",
	"dzdeckgun11",
	"dzdeckgun13",
	"dzdeckgun23",
	"dzdeckgun32",
	"dzdeckgun21",
    "dzdeckgun34",
    "dzdeckgun43",
    "dzdeckgun52",
	"dzmt",
	"dzsniper",
	"hdzmg",
	"tieqiong",
	"dzcannon",
	"dzelc",
	"dzelch",
	"dzto",
	"dzto1",
	"dzto2",
	"dzto3",
	
	
   
}
if MarkDevicesOnActive then
    for k,v in pairs(addmark) do
        table.insert(WeaponsToMark,v)
	end
end