dofile("scripts/forts.lua")
table.insert(DescPassive,"dzbposap")

--CommanderActivationDuration = 20

GaugeDamageHitpoints = GaugeDamageHitpoints*2.5
GaugeAttackHitpoints = GaugeAttackHitpoints*2.5

if MarkDevicesOnActive then
	table.insert(WeaponsToMark,"hjcf")
    table.insert(WeaponsToMark,"rls")
	--MarkDevicesOnActive(WeaponsToMark, path .. "/effects/fast_icon.lua")
end