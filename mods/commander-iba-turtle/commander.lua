dofile("scripts/forts.lua")
GaugeDamageHitpoints = GaugeDamageHitpoints*2.0
GaugeAttackHitpoints = GaugeAttackHitpoints*2.0
if not WeaponsToMark then WeaponsToMark = {} end


local addmark = {
    "dzdeckgun157",

   
}
if MarkDevicesOnActive then
    for k,v in pairs(addmark) do
        table.insert(WeaponsToMark,v)
	end
end