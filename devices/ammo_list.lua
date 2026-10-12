
table.insert(Sprites, ButtonSprite("hud-ammo_cannon_doubleshot-icon", "HUD/HUD-AmmoDoubleShot", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-ammo_cannon_doubleshot", "HUD-Details-AmmoDoubleShot", path))
table.insert(Sprites, ButtonSprite("hud-AP-icon", "HUD/HUD-AP", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-SAP-icon", "HUD/HUD-SAP", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-HE-icon", "HUD/HUD-HE", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-elc-icon", "HUD/HUD-elc", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-no-icon", "HUD/HUD-no", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-hy-icon", "HUD/HUD-hy", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-empty-icon", "HUD/HUD-empty", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-cm-icon", "HUD/hud-cm", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-APHEV-icon", "HUD/HUD-APHEV", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-obstrike-icon", "HUD/HUD-obstrike", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-pmagazine_small-icon", "HUD/HUD-pmagazine_small", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-pmagazine_large-icon", "HUD/HUD-pmagazine_large", nil, ButtonSpriteBottom, nil, nil, path))


table.insert(Sprites, ButtonSprite("hud-refhe-upbutton", "context/HUD-BUTrefhe", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-rche-upbutton", "context/HUD-BUTrche", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-bombhe-upbutton", "context/HUD-BUTbombhe", nil, nil, nil, nil, path))



local ammo = FindDevice("ammo_thunderbolt")
local ammoselect = ammo.SelectEffect
BuildQueueConcurrent["gunammo"] = 2
BuildQueueConcurrent["SAP"] = 2
BuildQueueConcurrent["dzelc_ammo"] = 2
BuildQueueConcurrent["hypersonic"] = 1
BuildQueueConcurrent["ammo_nudzto"] = 1
BuildQueueConcurrent["ammo_uuv"] = 1
BuildQueueConcurrent["ammo_nodzto"] = 2
BuildQueueConcurrent["dzplane"] = 2
BuildQueueConcurrent["tu95"] = 1
BuildQueueConcurrent["ammo_cm"] = 2
table.insert(Devices,
{
	SaveName = "ammo_pmagazine_small",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_pmagazine_small.lua",
	Icon = "hud-pmagazine_small-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = true,
	Prerequisite = "munitions",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 40,
	ScrapPeriod = 10,
	MetalCost = 200,
	EnergyCost = 3000,
	MetalRepairCost = 100,
	EnergyRepairCost = 1500,
	MaxUpAngle = StandardMaxUpAngle,
	--PopulationCap = 1,
	HasDummy = false,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_pmagazine_large",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_pmagazine_large.lua",
	Icon = "hud-pmagazine_large-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = true,
	Prerequisite = "munitions",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 60,
	ScrapPeriod = 10,
	MetalCost = 400,
	EnergyCost = 6000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	HasDummy = false,
	MaxUpAngle = StandardMaxUpAngle,
	--PopulationCap = 1,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_dzdeckgunAP",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_dzdeckgunAP.lua",
	Icon = "hud-AP-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = true,
	Prerequisite = "munitions",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 60,
	ScrapPeriod = 10,
	MetalCost = 600,
	EnergyCost = 8000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 1,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_dzdeckgunSAP",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_dzdeckgunSAP.lua",
	Icon = "hud-SAP-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = false,
	Prerequisite = "munitions",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 65,
	ScrapPeriod = 10,
	MetalCost = 500,
	EnergyCost = 6000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 1,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_dzdeckgunSAPc",
	dlc2_BuildQueue = "SAP",
	FileName = path .. "/devices/ammo_dzdeckgunSAPc.lua",
	Icon = "hud-SAP-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = true,
	Prerequisite = "munitions",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 22.5,
	ScrapPeriod = 4,
	MetalCost = 40,
	EnergyCost = 800,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 12,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_dzdeckgunAPHEVc",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_dzdeckgunAPHEVc.lua",
	Icon = "hud-APHEV-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = false,
	Prerequisite = "port",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 40,
	ScrapPeriod = 4,
	MetalCost = 300,
	EnergyCost = 4000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 6,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_dzdeckgunHE",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_dzdeckgunHE.lua",
	Icon = "hud-HE-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = true,
	Prerequisite = "munitions",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 60,
	ScrapPeriod = 20,
	MetalCost = 400,
	EnergyCost = 6000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 1,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
	Upgrades = --升级
	{
		{
			Enabled = true,
			SaveName = "ammo_dzdeckgunEMP",
			MetalCost = 50,
			EnergyCost = 200,
			CanDowngrade = true,
		},
	},
})
table.insert(Devices,
{
	SaveName = "ammo_dzdeckgunEMP",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_dzdeckgunEMP.lua",
	Icon = "hud-ammo_cannon_doubleshot-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = false,
	Prerequisite = "munitions",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 20,
	ScrapPeriod = 20,
	MetalCost = 400,
	EnergyCost = 6000,
	MetalRepairCost = 200,
	PopulationCap = 1,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_dzdeckgunempty",
	dlc2_BuildQueue = "gunammo",
	FileName = path .. "/devices/ammo_dzdeckgunempty.lua",
	Icon = "hud-empty-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = false,
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 15,
	ScrapPeriod = 8,
	MetalCost = 22.7,
	EnergyCost = 191.7,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 4,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_dzelcap",
	dlc2_BuildQueue = "dzelc_ammo",
	FileName = path .. "/devices/ammo_dzelcap.lua",
	Icon = "hud-elc-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = true,
	Prerequisite = "factory",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 60,
	ScrapPeriod = 20,
	MetalCost = 200,
	EnergyCost = 8000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
	Upgrades = --升级
	{
		{
			Enabled = true,
			SaveName = "ammo_dzelcapb",
			MetalCost = 100,
			EnergyCost = 2000,
			CanDowngrade = true,
		},
	},
})
table.insert(Devices,
{
	SaveName = "ammo_dzelcapb",
	dlc2_BuildQueue = "dzelc_ammo",
	FileName = path .. "/devices/ammo_dzelcapb.lua",
	Icon = "hud-elc-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Enabled = false,
	Prerequisite = "upgrade",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 40,
	ScrapPeriod = 20,
	MetalCost = 200,
	EnergyCost = 8000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_cm",
	dlc2_BuildQueue = "ammo_cm",
	FileName = path .. "/devices/ammo_cm.lua",
	Icon = "hud-cm-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Prerequisite = "port",
	Enabled = true,
	BuildTimeComplete = 70,
	ScrapPeriod = 30,
	MetalCost = 180,
	EnergyCost = 7200,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 8,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_orbitalstrike",
	dlc2_BuildQueue = "hypersonic",
	FileName = path .. "/devices/ammo_orbitalstrike.lua",
	Icon = "hud-obstrike-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Prerequisite = "port",
	Enabled = true,
	BuildTimeComplete = 420,
	ScrapPeriod = 30,
	MetalCost = 2000,
	EnergyCost = 72000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 2,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_hypersonic",
	dlc2_BuildQueue = "hypersonic",
	FileName = path .. "/devices/ammo_hypersonic.lua",
	Icon = "hud-hy-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Prerequisite = "port",
	Enabled = true,
	BuildTimeComplete = 240,
	ScrapPeriod = 30,
	MetalCost = 600,
	EnergyCost = 16000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 2,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_nodzto",
	dlc2_BuildQueue = "ammo_nodzto",
	FileName = path .. "/devices/ammo_nodzto.lua",
	Icon = "hud-no-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Prerequisite = "port",
	Enabled = true,
	BuildTimeComplete = 180,
	ScrapPeriod = 30,
	MetalCost = 100,
	EnergyCost = 5000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 4,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
	Upgrades = --升级
	{
		{
			Enabled = true,
			SaveName = "ammo_nudzto",
			MetalCost = 400,
			EnergyCost = 20000,
			CanDowngrade = true,
		},
		{
			Enabled = true,
			SaveName = "ammo_uuv",
			MetalCost = 400,
			EnergyCost = 20000,
			CanDowngrade = true,
		},
	},
})
table.insert(Devices,
{
	SaveName = "ammo_nudzto",
	dlc2_BuildQueue = "ammo_nudzto",
	FileName = path .. "/devices/ammo_nudzto.lua",
	Icon = "hud-ammo_cannon_doubleshot-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Prerequisite = "port",
	Enabled = false,
	BuildTimeComplete = 160,
	ScrapPeriod = 30,
	MetalCost = 400,
	EnergyCost = 20000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 4,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})
table.insert(Devices,
{
	SaveName = "ammo_uuv",
	dlc2_BuildQueue = "ammo_uuv",
	FileName = path .. "/devices/ammo_uuv.lua",
	Icon = "hud-ammo_cannon_doubleshot-icon",
	Detail = "hud-detail-ammo_cannon_doubleshot",
	Prerequisite = "port",
	Enabled = false,
	BuildTimeComplete = 160,
	ScrapPeriod = 30,
	MetalCost = 400,
	EnergyCost = 20000,
	MetalRepairCost = 200,
	EnergyRepairCost = 3000,
	MaxUpAngle = StandardMaxUpAngle,
	PopulationCap = 4,
	BuildOnGroundOnly = false,
	SelectEffect = ammoselect,
})

if dlc2Var_Active then

    ammo_thunderbolt = FindDevice("ammo_thunderbolt")
    ammo_nighthawk = FindDevice("ammo_nighthawk")
    if ammo_thunderbolt then
        ammo_topl = DeepCopy(ammo_thunderbolt)
        ammo_topl.Enabled = false
        ammo_topl.SaveName = "ammo_topl"
        ammo_topl.dlc2_BuildQueue = "dzplane"
        ammo_topl.FileName = path .. "/devices/ammo_topl.lua"
        ammo_topl.BuildTimeComplete = 28
        ammo_topl.Prerequisite = "munitions"
        ammo_topl.MetalCost = (ammo_thunderbolt.MetalCost + 100)
        ammo_topl.EnergyCost = (ammo_thunderbolt.EnergyCost + 1000)

		ammo_smoker2 = DeepCopy(ammo_thunderbolt)
        ammo_smoker2.Enabled = false
        ammo_smoker2.SaveName = "ammo_smoker2"
        ammo_smoker2.dlc2_BuildQueue = "dzplane"
        ammo_smoker2.FileName = path .. "/devices/ammo_smoker2.lua"
        ammo_smoker2.BuildTimeComplete = 32
        ammo_smoker2.Prerequisite = "munitions"
        ammo_smoker2.MetalCost = (ammo_thunderbolt.MetalCost + 70)
        ammo_smoker2.EnergyCost = (ammo_thunderbolt.EnergyCost + 1000)
		ammo_smoker2.Upgrades = nil

		ammo_tu95 = DeepCopy(ammo_topl)
		ammo_tu95.Enabled = true
		ammo_tu95.Prerequisite = "port"
		ammo_tu95.SaveName = "ammo_tu95"
        ammo_tu95.dlc2_BuildQueue = "tu95"
		ammo_tu95.BuildTimeComplete = 180
		ammo_tu95.PopulationCap =2 
        ammo_tu95.FileName = path .. "/devices/ammo_tu95.lua"
		ammo_tu95.MetalCost = (ammo_thunderbolt.MetalCost + 1200)
        ammo_tu95.EnergyCost = (ammo_thunderbolt.EnergyCost + 12000)

		ammo_sbtopl = DeepCopy(ammo_topl)
		ammo_sbtopl.Enabled = true
		ammo_sbtopl.SaveName = "ammo_sbtopl"
        ammo_sbtopl.dlc2_BuildQueue = "dzplane"
		ammo_sbtopl.BuildTimeComplete = 36
        ammo_sbtopl.FileName = path .. "/devices/ammo_sbtopl.lua"
		ammo_sbtopl.MetalCost = (ammo_thunderbolt.MetalCost + 70)
        ammo_sbtopl.EnergyCost = (ammo_thunderbolt.EnergyCost + 700)

		ammo_sbrcpl = DeepCopy(ammo_topl)
		ammo_sbrcpl.Enabled = true
		ammo_sbrcpl.SaveName = "ammo_sbrcpl"
        ammo_sbrcpl.dlc2_BuildQueue = "dzplane"
		--ammo_sbrcpl.PopulationCap = 1
		ammo_sbrcpl.BuildTimeComplete = 60
        ammo_sbrcpl.FileName = path .. "/devices/ammo_sbrcpl.lua"
		ammo_sbrcpl.MetalCost = (ammo_thunderbolt.MetalCost + 200)
        ammo_sbrcpl.EnergyCost = (ammo_thunderbolt.EnergyCost + 2000)
		

		ammo_sbaapl = DeepCopy(ammo_topl)
		ammo_sbaapl.Enabled = true
		ammo_sbaapl.SaveName = "ammo_sbaapl"
        ammo_sbaapl.dlc2_BuildQueue = "dzplane"
		--ammo_sbaapl.PopulationCap = 1
		ammo_sbaapl.BuildTimeComplete = 45
        ammo_sbaapl.FileName = path .. "/devices/ammo_sbaapl.lua"
		ammo_sbaapl.MetalCost = (ammo_thunderbolt.MetalCost + 100)
        ammo_sbaapl.EnergyCost = (ammo_thunderbolt.EnergyCost + 1000)
		
        if not ammo_thunderbolt.Upgrades then
            ammo_thunderbolt.Upgrades={}
        end
		
        table.insert(ammo_thunderbolt.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_topl",
            MetalCost = 100,
            EnergyCost = 1000,
            --Button = nil,
    	})
		end
		table.insert(ammo_thunderbolt.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_smoker2",
            MetalCost = 70,
            EnergyCost = 1000,
            --Button = nil,
    	})
		InsertDeviceBehind("ammo_thunderbolt", ammo_smoker2)
        InsertDeviceBehind("ammo_smoker2", ammo_topl)
		
		if  FindDevice("ammo_sbpp_f16") then
			InsertDeviceBehind("ammo_topl", ammo_sbtopl)
			InsertDeviceBehind("ammo_sbtopl", ammo_sbrcpl)
			InsertDeviceBehind("ammo_sbrcpl", ammo_sbaapl)
			InsertDeviceBehind("ammo_nighthawk", ammo_tu95)
		end

		ammo_topl4 = DeepCopy(ammo_thunderbolt)
        ammo_topl4.Enabled = false
        ammo_topl4.SaveName = "ammo_topl4"
        ammo_topl4.dlc2_BuildQueue = "dzplane"
        ammo_topl4.FileName = path .. "/devices/ammo_topl4.lua"
        ammo_topl4.BuildTimeComplete = 60
        ammo_topl4.Prerequisite = "port"
        ammo_topl4.MetalCost = (ammo_thunderbolt.MetalCost + 500)
        ammo_topl4.EnergyCost = (ammo_thunderbolt.EnergyCost + 8000)
		ammo_topl4.PopulationCap = 3
		ammo_topl4.Upgrades = {}
		
		ammo_rcpl3 = DeepCopy(ammo_thunderbolt)
        ammo_rcpl3.Enabled = false
        ammo_rcpl3.SaveName = "ammo_rcpl3"
        ammo_rcpl3.dlc2_BuildQueue = "dzplane"
        ammo_rcpl3.FileName = path .. "/devices/ammo_rcpl3.lua"
        ammo_rcpl3.BuildTimeComplete = 40
        ammo_rcpl3.Prerequisite = "munitions"
        ammo_rcpl3.MetalCost = (ammo_thunderbolt.MetalCost + 300)
        ammo_rcpl3.EnergyCost = (ammo_thunderbolt.EnergyCost + 5000)
		ammo_rcpl3.PopulationCap = 2
		ammo_rcpl3.Upgrades = {}

		ammo_refhepl6 = DeepCopy(ammo_thunderbolt)
        ammo_refhepl6.Enabled = false
        ammo_refhepl6.SaveName = "ammo_refhepl6"
        ammo_refhepl6.dlc2_BuildQueue = "dzplane"
        ammo_refhepl6.FileName = path .. "/devices/ammo_refhepl6.lua"
        ammo_refhepl6.BuildTimeComplete = 60
        ammo_refhepl6.Prerequisite = "port"
        ammo_refhepl6.MetalCost = (ammo_thunderbolt.MetalCost + 500)
        ammo_refhepl6.EnergyCost = (ammo_thunderbolt.EnergyCost + 8000)
		ammo_refhepl6.PopulationCap = 3
		ammo_refhepl6.Upgrades = {}

		ammo_lb4 = DeepCopy(ammo_thunderbolt)
        ammo_lb4.Enabled = false
        ammo_lb4.SaveName = "ammo_lb4"
        ammo_lb4.dlc2_BuildQueue = "dzplane"
        ammo_lb4.FileName = path .. "/devices/ammo_lb4.lua"
        ammo_lb4.BuildTimeComplete = 40
        ammo_lb4.Prerequisite = "port"
        ammo_lb4.MetalCost = (ammo_thunderbolt.MetalCost + 300)
        ammo_lb4.EnergyCost = (ammo_thunderbolt.EnergyCost + 6000)
		ammo_lb4.PopulationCap = 3
		ammo_lb4.Upgrades = {}

		ammo_subp4 = DeepCopy(ammo_thunderbolt)
        ammo_subp4.Enabled = false
        ammo_subp4.SaveName = "ammo_subp4"
        ammo_subp4.dlc2_BuildQueue = "dzplane"
        ammo_subp4.FileName = path .. "/devices/ammo_subp4.lua"
        ammo_subp4.BuildTimeComplete = 20
        ammo_subp4.Prerequisite = "munitions"
        ammo_subp4.MetalCost = (ammo_thunderbolt.MetalCost + 300)
        ammo_subp4.EnergyCost = (ammo_thunderbolt.EnergyCost + 6000)
		ammo_subp4.PopulationCap = 4
		ammo_subp4.Upgrades = {}

		table.insert(ammo_thunderbolt.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_rcpl3",
            MetalCost = 500,
            EnergyCost = 6000,
            Button = "hud-rche-upbutton",
    	})
		table.insert(ammo_thunderbolt.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_refhepl6",
            MetalCost = 600,
            EnergyCost = 8000,
            Button = "hud-refhe-upbutton",
    	})
		table.insert(ammo_thunderbolt.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_lb4",
            MetalCost = 100,
            EnergyCost = 3000,
            --Button = nil,
    	})
		table.insert(ammo_thunderbolt.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_subp4",
            MetalCost = 100,
            EnergyCost = 3000,
            --Button = nil,
    	})
		
	

		ammo_sbtopl4 = DeepCopy(ammo_topl4)
		ammo_sbtopl4.Enabled = false
		ammo_sbtopl4.SaveName = "ammo_sbtopl4"
        ammo_sbtopl4.dlc2_BuildQueue = "dzplane"
		ammo_sbtopl4.BuildTimeComplete = 66
        ammo_sbtopl4.FileName = path .. "/devices/ammo_sbtopl4.lua"
		ammo_sbtopl4.Upgrades = nil
        if not ammo_topl.Upgrades then
            ammo_topl.Upgrades={}
        end

		
        table.insert(ammo_topl.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_topl4",
            MetalCost = 500,
            EnergyCost = 8000,
            --Button = nil,
    	})
		
        InsertDeviceBehind("ammo_topl", ammo_topl4)
		InsertDeviceBehind("ammo_topl4", ammo_lb4)
		InsertDeviceBehind("ammo_lb4", ammo_rcpl3)
		InsertDeviceBehind("ammo_rcpl3", ammo_refhepl6)
		InsertDeviceBehind("ammo_refhepl6", ammo_subp4)
		
		if FindDevice("ammo_sbpp_f16")then
		--[[table.insert(ammo_topl.Upgrades,
			{
				Enabled = true,
				SaveName = "ammo_sbtopl4",
				MetalCost = 120,
				EnergyCost = 3200,
				--Button = nil,
			})]]--
		end	
		InsertDeviceBehind("ammo_topl4", ammo_sbtopl4)
   
end
if ammo_nighthawk then
	 ammo_nthk4 = DeepCopy(ammo_nighthawk)
        ammo_nthk4.Enabled = false
        ammo_nthk4.SaveName = "ammo_nthk4"
        ammo_nthk4.dlc2_BuildQueue = "dzplane"
        ammo_nthk4.FileName = path .. "/devices/ammo_nthk4.lua"
        ammo_nthk4.BuildTimeComplete = 80
        ammo_nthk4.Prerequisite = "port"
        ammo_nthk4.MetalCost = (ammo_nighthawk.MetalCost + 250)
        ammo_nthk4.EnergyCost = (ammo_nighthawk.EnergyCost + 10000)
		ammo_nthk4.PopulationCap = 6
		ammo_nthk4.Upgrades = nil

		ammo_sbnthk4 = DeepCopy(ammo_nthk4)
		ammo_sbnthk4.Enabled = false
		ammo_sbnthk4.SaveName = "ammo_sbnthk4"
        ammo_sbnthk4.dlc2_BuildQueue = "dzplane"
		ammo_sbnthk4.BuildTimeComplete = 80
        ammo_sbnthk4.FileName = path .. "/devices/ammo_sbnthk4.lua"
		ammo_sbnthk4.Upgrades = nil

        if not ammo_nighthawk.Upgrades then
            ammo_nighthawk.Upgrades={}
        end
		table.insert(ammo_nighthawk.Upgrades,
    	{
            Enabled = true,
            SaveName = "ammo_nthk4",
            MetalCost = 100,
            EnergyCost = 8000,
			Button = "hud-bombhe-upbutton",
            --Button = nil,
    	})
		if FindDevice("ammo_sbpp_f16")then
			--[[table.insert(ammo_nighthawk.Upgrades,
			{
				Enabled = true,
				SaveName = "ammo_sbnthk4",
				MetalCost = 120,
				EnergyCost = 8800,
				--Button = nil,
			})	]]--
		end
        InsertDeviceBehind("ammo_nighthawk", ammo_nthk4)
		InsertDeviceBehind("ammo_nighthawk", ammo_sbnthk4)
end

------------------------------------------------------------------------------------------------------------------------------


	table.insert(Sprites, ButtonSprite("hud-bchy-icon", "HUD/HUD-hy", nil, ButtonSpriteBottom, nil, nil, path))
	table.insert(Sprites, ButtonSprite("hud-bingbao-icon", "HUD/HUD-bingbao", nil, ButtonSpriteBottom, nil, nil, path))
	BuildQueueConcurrent["ammo_bcdzto"] = 1
	BuildQueueConcurrent["ammo_bcdznest"] = 2
	ammo_nodzto = FindDevice("ammo_nodzto")
	table.insert(Devices,
	{
		SaveName = "ammo_bcdzto",
		dlc2_BuildQueue = "ammo_bcdzto",
		FileName = path .. "/devices/BCdzto/ammo_bcdzto.lua",
		Icon = "hud-ammo_cannon_doubleshot-icon",
		Detail = "hud-detail-ammo_cannon_doubleshot",
		Prerequisite = {{"port","P4Lab"}},
		Enabled = false,
		BuildTimeComplete = 180,
		ScrapPeriod = 30,
		MetalCost = 300,
		EnergyCost = 10000,
		MetalRepairCost = 200,
		EnergyRepairCost = 3000,
		MaxUpAngle = StandardMaxUpAngle,
		PopulationCap = 4,
		BuildOnGroundOnly = false,
		SelectEffect = ammoselect,
	})
	table.insert(ammo_nodzto.Upgrades,
		{
			Enabled = false,
			SaveName = "ammo_bcdzto",
			MetalCost = 200,
			EnergyCost = 5000,
			Button = "hud-upgrade_BC2",
		})
	
	
	table.insert(Devices,
	{
		SaveName = "ammo_bchy",
		dlc2_BuildQueue = "hypersonic",
		FileName = path .. "/devices/BChy/ammo_bchy.lua",
		Icon = "hud-bchy-icon",
		Detail = "hud-detail-ammo_cannon_doubleshot",
		Prerequisite = {{"port","P4Lab"}},
		Enabled = false,
		BuildTimeComplete = 160,
		ScrapPeriod = 30,
		MetalCost = 400,
		EnergyCost = 12000,
		MetalRepairCost = 200,
		EnergyRepairCost = 3000,
		MaxUpAngle = StandardMaxUpAngle,
		PopulationCap = 2,
		BuildOnGroundOnly = false,
		SelectEffect = ammoselect,
	})
