table.insert(Sprites, DetailSprite("HUD-Details-exbatt", "HUD-Details-exbatt", path ))--icon on the left in the square table
table.insert(Sprites, ButtonSprite("HUD-Details-Battery-Icon","HUD/HUD-exbatt", nil, ButtonSpriteBottom, nil, nil, path ))
table.insert(Sprites, DetailSprite("HUD-Details-port", "HUD-Details-port", path ))--icon on the left in the square table


table.insert(Sprites, DetailSprite("hud-detail-ar", "HUD-Details-ar", path))
table.insert(Sprites, ButtonSprite("hud-sandbags-large-icon", "HUD/HUD-SandbagsLarge", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-t3-icon", "HUD/HUD-t3", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-lt-icon", "HUD/HUD-lt", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sheng-icon", "HUD/HUD-sheng", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-hualong-icon", "HUD/HUD-hualong", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-cangku-icon", "HUD/HUD-cangku", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-emgsheng-button", "context/HUD-emgsheng", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-resourcegen-icon", "HUD/HUD-rg", nil, ButtonSpriteBottom, nil, nil, path))

function IndexOfDevice(saveName)
	for k,v in ipairs(Devices) do
		if v.SaveName == saveName then
			return k
		end
	end
	return #Devices
end
BuildQueueConcurrent["rg"] = 1

table.insert(Devices, IndexOfDevice("battery") + 1,
{
	Enabled = true,
	SaveName = "dzshield",
	FileName = path .. "/devices/dzshield.lua",
	Icon = "hud-resourcegen-icon",
	Detail = "HUD-Details-exbatt",
	BuildTimeComplete = 160,
	ScrapPeriod = 30,
	MetalCost = 1600,
	EnergyCost = 14000,
	MetalRepairCost = 300,
	EnergyRepairCost = 8000,
	--PopulationCap = 10,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	Prerequisite = "port",
	SelectEffect = "ui/hud/devices/ui_devices",
	
})
table.insert(Devices, IndexOfDevice("dzshield") + 1,
{
	SaveName = "exbatt",
	FileName = path .. "/devices/exbatt.lua",
	Icon = "HUD-Details-Battery-Icon",
	Detail = "HUD-Details-exbatt",
	BuildTimeComplete = 40,
	ScrapPeriod = 3,
	MetalCost = 300,
	EnergyCost = 2000,
	MetalRepairCost = 30,
	EnergyRepairCost = 200,
	MetalReclaimMin = 0,
	MetalReclaimMax = 0,
	EnergyReclaimMin = 0,
	EnergyReclaimMax = 0,
	--PopulationCap = 10,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	Prerequisite = "upgrade",
	SelectEffect = "ui/hud/devices/ui_devices",
	
})
table.insert(Devices, IndexOfDevice("exbatt") + 1,
{
	SaveName = "cangku",
	FileName = path .. "/devices/cangku.lua",
	Icon = "hud-cangku-icon",
	Detail = "HUD-Details-exbatt",
	BuildTimeComplete = 40,
	ScrapPeriod = 3,
	MetalCost = 300,
	EnergyCost = 2000,
	MetalRepairCost = 30,
	EnergyRepairCost = 200,
	MetalReclaimMin = 0,
	MetalReclaimMax = 0,
	EnergyReclaimMin = 0,
	EnergyReclaimMax = 0,
	--PopulationCap = 4,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	Prerequisite = "upgrade",
	SelectEffect = "ui/hud/devices/ui_devices",
	
})
table.insert(Devices, IndexOfDevice("cangku") + 1,
{
	SaveName = "sheng",
	FileName = path .. "/devices/sheng.lua",
	Icon = "hud-sheng-icon",
	Detail = "HUD-Details-exbatt",
	BuildTimeComplete = 32,
	ScrapPeriod = 3,
	MetalCost = 320,
	EnergyCost = 3400,
	MetalRepairCost = 30,
	EnergyRepairCost = 200,
	MetalReclaimMin = 0,
	MetalReclaimMax = 0,
	EnergyReclaimMin = 0,
	EnergyReclaimMax = 0,
	--PopulationCap = 4,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	Prerequisite = "upgrade",
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades = 
	{
		["emgsheng"]=
		{
			Enabled = true,
			SaveName = "emgsheng",
			Button = "hud-emgsheng-button",
			MetalCost = 0,
			EnergyCost = 100,
			BuildDuration = 0.1,
		}
	}
	
})
table.insert(Devices, IndexOfDevice("sheng") + 1,
{
	SaveName = "emgsheng",
	FileName = path .. "/devices/emgsheng.lua",
	Enabled = false,
	Icon = "hud-sheng-icon",
	Detail = "HUD-Details-exbatt",
	BuildTimeComplete = 0.1,
	ScrapPeriod = 3,
	MetalCost = 320,
	EnergyCost = 3400,
	MetalRepairCost = 30,
	EnergyRepairCost = 200,
	MetalReclaimMin = 0,
	MetalReclaimMax = 0,
	EnergyReclaimMin = 0,
	EnergyReclaimMax = 0,
	--PopulationCap = 4,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	Prerequisite = "upgrade",
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades = 
	{
		["sheng"] = 
		{
			Enabled = true,
			SaveName = "sheng",
			MetalCost = 0,
			EnergyCost = 100,
			BuildDuration = 0.1,
		}
	}
	
})

table.insert(Devices, IndexOfDevice("emgsheng") + 1,
{
	SaveName = "hualong",
	FileName = path .. "/devices/hualong.lua",
	Icon = "hud-hualong-icon",
	Detail = "HUD-Details-exbatt",
	Prerequisite = "port",
	BuildTimeComplete = 200,
	ScrapPeriod = 120,
	MetalCost = 1600,
	EnergyCost = 10000,
	MetalRepairCost = 2000,
	EnergyRepairCost = 20000,
	MetalReclaimMin = 0.5,
	MetalReclaimMax = 0.6,
	EnergyReclaimMin = 0.5,
	EnergyReclaimMax = 0.6,
	--PopulationCap = 2,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
})
table.insert(Devices, IndexOfDevice("hualong") + 1,
{
	SaveName = "resourcegen",
	dlc2_BuildQueue = "rg",
	FileName = path .. "/devices/resourcegen.lua",
	Icon = "hud-resourcegen-icon",
	Detail = "HUD-Details-exbatt",
	Prerequisite = "factory",
	BuildTimeComplete = 40,
	ScrapPeriod = 20,
	MetalCost = 400,
	EnergyCost = 6000,
	MetalRepairCost = 400,
	EnergyRepairCost = 8000,
	MetalReclaimMin = 0.5,
	MetalReclaimMax = 0.6,
	EnergyReclaimMin = 0.5,
	EnergyReclaimMax = 0.6,
	--PopulationCap = 2,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = true,
	SelectEffect = "ui/hud/devices/ui_devices",
	
})

table.insert(Devices,IndexOfDevice("factory") + 1,
{
	SaveName = "port",
	FileName = path .. "/devices/port.lua",
	Icon = "hud-t3-icon",
	Detail = "HUD-Details-port",
	Prerequisite = {{"munitions","factory"}},
	BuildTimeComplete = 240,
	ScrapPeriod = 8,
	MetalCost = 1200,
	EnergyCost = 10000,
	MetalRepairCost = 600,
	EnergyRepairCost = 4000,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/technology/ui_technology",
	Tech = true,
})
table.insert(Devices,IndexOfDevice("port") + 1,
{
	Enabled = true,
	SaveName = "rage",
	FileName = path .. "/devices/rage.lua",
	Icon = "hud-t3-icon",
	Detail = "HUD-Details-port",
	Prerequisite = "port",
	BuildTimeComplete = 80,
	ScrapPeriod = 8,
	MetalCost = 2000,
	EnergyCost = 30000,
	MetalRepairCost = 600,
	EnergyRepairCost = 4000,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/technology/ui_technology",
	Tech = true,
})

table.insert(Devices,IndexOfDevice("lt") + 1,
{
	SaveName = "guide",
	FileName = path .. "/devices/guide.lua",
	Icon = "hud-lt-icon",
	Detail = "HUD-Details-port",
	BuildTimeComplete = 10,
	ScrapPeriod = 8,
	MetalCost = 20,
	EnergyCost = 400,
	MetalRepairCost = 600,
	EnergyRepairCost = 4000,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/technology/ui_technology",
	Tech = true,
})




table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
	SaveName = "armor",
	FileName = path .. "/devices/armor.lua",
	Icon = "hud-sandbags-large-icon",
	Detail = "hud-detail-ar",
	Prerequisite = "port",
	BuildTimeComplete = 20,
	ScrapPeriod = 4,
	MetalCost = 200,
	EnergyCost = 1000,
	MetalRepairCost = 20,
	EnergyRepairCost = 800,
	MetalReclaimMin = 0,
	MetalReclaimMax = 0,
	EnergyReclaimMin = 0,
	EnergyReclaimMax = 0,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 16,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

local rps = FindDevice("repairstation")
if rps then
local dct = DeepCopy(rps)
dct.FileName = path .. "/devices/dct.lua"
dct.SaveName = "dct"
dct.BuildTimeComplete = 0.01
dct.PopulationCap = 1
table.insert(Devices, IndexOfDevice("battery") + 1,dct)
end


	

