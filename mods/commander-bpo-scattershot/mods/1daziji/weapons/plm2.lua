dofile("scripts/sprites_utility.lua")
dofile("scripts/device_utility.lua")

if active then
	ProjectilesEachRound = 3
	RoundsEachBurst = 2

	FireStdDevSpray = FireStdDev
	FireStdDev = 0.072
	FireStdDevAuto = 0.072
	MinFireSpread = 3
	FireSpreadMultiplier = 0.0108

	UniformSpray = true
end