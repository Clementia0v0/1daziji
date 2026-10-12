
-- this is used to allow Weapons to have common parameters defined in one location
-- and then over-ride some parameters as a specialisation
BuildQueueConcurrent["lizi"] = 2

BuildQueueConcurrent["g76"] = 2
BuildQueueConcurrent["p76"] = 2
BuildQueueConcurrent["hjcf"] = 4
dzmg =
{
	Name = "hud-dzmg-icon",
	States =
	{
		Normal = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-dzmg" .."-A.tga", bottom = ButtonSpriteBottom, right = nil, },},},
		Rollover = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-dzmg" .."-R.tga", bottom = ButtonSpriteBottom, right = nil },},},
		Pressed = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-dzmg" .."-S.tga", bottom = ButtonSpriteBottom, right = nil },},},
		Disabled = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-dzmg" .."-D.tga", bottom = ButtonSpriteBottom, right = nil },},},
	},
}
local oldwp = DeepCopy(Weapons)




table.insert(Sprites, ButtonSprite("hud-dzmg-icon", "HUD/HUD-dzmg", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-dzmg", "HUD-Details-dzmg", path))
-------HUD
table.insert(Sprites, ButtonSprite("hud-dzcannon-icon", "HUD/HUD-unb", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-dzcannon", "HUD-Details-dzcannon", path))
table.insert(Sprites, ButtonSprite("hud-dznest-icon", "HUD/HUD-dznest", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-hjcf-icon", "HUD/HUD-hjcf", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-dzto-icon", "HUD/HUD-dzto", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-dzsniper-icon", "HUD/HUD-dzsniper", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-dzelc-icon", "HUD/HUD-dzelc", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-lizi-icon", "HUD/HUD-lizi", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-dzdeckgun-icon", "HUD/HUD-dzdeckgun", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-cj-icon", "HUD/HUD-cj", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-mtl-icon", "HUD/HUD-MTL", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-submine-icon", "HUD/HUD-submine", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-dzhardpoint-icon", "HUD/HUD-dzhardpoint", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-rls-icon", "HUD/HUD-rls", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-hjcfspace-icon", "HUD/HUD-hjcfspace", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-g130-icon", "HUD/HUD-g130", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-defgun-icon", "HUD/HUD-defgun", nil, ButtonSpriteBottom, nil, nil, path))


--button
table.insert(Sprites, ButtonSprite("hud-sec-calibre", "context/HUD-SEC-CALIBRE", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-mai-calibre", "context/HUD-MAI-CALIBRE", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-burst", "context/HUD-burst", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-secburst", "context/HUD-secburst", nil, nil, nil, nil, path))

table.insert(Weapons,IndexOfWeapon("dzdeckgun2")+1,
{
	Enabled = false,
	SaveName = "weaponsrpites",
	FileName = path .. "/weapons/weaponsprites.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	BuildTimeComplete = 120,
	ScrapPeriod = 12,
	MetalCost = 1800,
	EnergyCost = 18000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Weapons,IndexOfWeapon("mortar2")+1,
{
	Enabled = false,
	SaveName = "dzmt",
	FileName = path .. "/weapons/dzmt.lua",
	Icon = "hud-mortar-icon",
	Detail = "hud-detail-mortar",
	Prerequisite = "munitions",
	GroupButton = "hud-group-mortar",
	BuildTimeComplete = 60,
	ScrapPeriod = 6,
	MetalCost = 300,
	EnergyCost = 3000,
	MetalRepairCost = 30,
	EnergyRepairCost = 200,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})
mortar2 = FindWeapon("mortar2")
if mortar2 then
	if not mortar2.Upgrades then
		mortar2.Upgrades={}
	end
	table.insert(mortar2.Upgrades,
	{
	Enabled = true,
	SaveName = "dzmt",
	MetalCost = 200,
	EnergyCost = 1600,
	}
	)	
end
table.insert(Weapons,IndexOfWeapon("laser")+1,
{
	Enabled = true,
	SaveName = "dzsniper",
	FileName = path .. "/weapons/dzsniper.lua",
	Icon = "hud-dzsniper-icon",
	Detail = "hud-detail-sniper",
	Prerequisite = "factory",
	GroupButton = "hud-group-laser",
	BuildTimeComplete = 40,
	ScrapPeriod = 6,
	MetalCost = 500,
	EnergyCost = 4000,
	MetalRepairCost = 30,
	EnergyRepairCost = 200,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	SpotterFactor = 0.25,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 6,
	SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Weapons, IndexOfWeapon("dzsniper") + 1,
{
	Enabled = true,
	SaveName = "rls",
	FileName = path .. "/weapons/rls.lua",
	Icon = "hud-rls-icon",
	--dlc2_BuildQueue = "hjcf",
	GroupButton = "hud-group-missile",
	Detail = "hud-detail-missile",
	AnimationScript = path.."/weapons/rls/rls_ani.lua",
	Prerequisite = "factory",
	BuildTimeComplete = 120,
	ScrapPeriod = 30,
	MetalCost = 700,
	EnergyCost = 6000,
	MetalRepairCost = 80,
	EnergyRepairCost = 1250,
	SpotterFactor = 0.0, -- can't spot for itself (need a sniper with LOS)
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxSpotterAssistance = 0,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	RequiresWater = true,
	AlignToCursorNormal = false,
	RequiresSpotterToFire = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
		
	CompatibleGroupTypes =
	{
		"missile",
		"missileinv",
		"missile2",
		"missile2inv",
	},
})
table.insert(Weapons,IndexOfWeapon("rls")+1,
{
	Enabled = true,
	SaveName = "dzhardpoint",
	FileName = path .. "/weapons/dzhardpoint.lua",
	Icon = "hud-dzhardpoint-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "factory",
	BuildTimeComplete = 70,
	ScrapPeriod = 30,
	MetalCost = 600,
	EnergyCost = 4000,
	MetalRepairCost = 100,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	CanMove = true,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzelc",
			MetalCost = 100,
			EnergyCost = 1000,
		},
		{
			Enabled = true,
			SaveName = "dzdeckgun384",
			MetalCost = 540,
			EnergyCost = 5400,
		},
		{
			Enabled = true,
			SaveName = "dzdeckgun32",
			MetalCost = 500,
			EnergyCost = 5000,
		},
		{
			Enabled = true,
			SaveName = "dzdeckgun3",
			MetalCost = 600,
			EnergyCost = 6000,
		},
		{
			Enabled = true,
			SaveName = "plm1",
			MetalCost = 400,
			EnergyCost = 4000,
		},
		{
			Enabled = true,
			SaveName = "leo",
			MetalCost = 1400,
			EnergyCost = 16000,
		},
	},
})
table.insert(Weapons,IndexOfWeapon("dzniper")+1,
{
	Enabled = false,
	SaveName = "dznest",
	FileName = path .. "/weapons/dznest.lua",
	Icon = "hud-dznest-icon",
	Detail = "hud-detail-sniper",
	Prerequisite = "factory",
	GroupButton = "hud-group-missile",
	BuildTimeComplete =	80 ,
	ScrapPeriod = 6,
	MetalCost = 800,
	EnergyCost = 6000,
	MetalRepairCost = 30,
	EnergyRepairCost = 200,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 3,
	SelectEffect = "ui/hud/devices/ui_devices",
})
smokebomb = FindWeapon("smokebomb")
table.insert(Weapons,IndexOfWeapon("machinegun")+1,
{
	Enabled = true,
	SaveName = "flakold",
	FileName = path .. "/weapons/flakold.lua",
	Icon = "hud-dzmg-icon",
	Detail = "hud-detail-dzmg",
	Prerequisite = {{"munitions","armoury"}},
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 30,
	ScrapPeriod = 6,
	MetalCost = 200,
	EnergyCost = 1400,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 10,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades = --升级
	{
		{
			Enabled = true,
			SaveName = "dzmg",
			MetalCost = 200,
			EnergyCost = 2000,
			
		},
		{
			Enabled = true,
			SaveName = "smokewall",
			MetalCost = 180,
			EnergyCost = 3000,
		},
		{
			Enabled = true,
			SaveName = "tieqiong",
			MetalCost = 300,
			EnergyCost = 5000,
		},
		{
			Enabled = true,
			SaveName = "dzmgcom",
			MetalCost = 10,
			EnergyCost = 227,
		},
	},
})
table.insert(Weapons,IndexOfWeapon("flakold")+1,
{
	Enabled = false,
	SaveName = "dzmg",
	FileName = path .. "/weapons/dzmg.lua",
	Icon = "hud-dzmg-icon",
	Detail = "hud-detail-dzmg",
	Prerequisite = {{"munitions","upgrade"}},
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 12,
	ScrapPeriod = 4,
	MetalCost = 420,
	EnergyCost = 2000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 6,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades = --升级
	{
		{
			Enabled = true,
			SaveName = "hdzmg",
			MetalCost = 100,
			EnergyCost = 1000,
			
		},
		{
			Enabled = true,
			SaveName = "tieqiong",
			MetalCost = 200,
			EnergyCost = 3000,
			
		},
		{
			Enabled = true,
			SaveName = "smokewall",
			MetalCost = 180,
			EnergyCost = 3000,
		},
		{
			Enabled = true,
			SaveName = "dzmgcom",
			MetalCost = 10,
			EnergyCost = 227,
		},
	},
})
table.insert(Weapons,IndexOfWeapon("dzmg")+1,
{
	Enabled = true,
	SaveName = "uwdzmg",
	FileName = path .. "/weapons/uwdzmg.lua",
	Icon = "hud-dzmg-icon",
	Detail = "hud-detail-dzmg",
	Prerequisite = "munitions",
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 25,
	ScrapPeriod = 6,
	MetalCost = 320,
	EnergyCost = 2000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	RequiresWater = true,
    MinBuildDepth = 0.01,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades = --升级
	{
		{
			Enabled = true,
			SaveName = "uwhdzmg",
			MetalCost = 50,
			EnergyCost = 200,
			
		},
	},
})
table.insert(Weapons,IndexOfWeapon("uwdzmg")+1,
{
	Enabled = false,
	SaveName = "uwhdzmg",
	FileName = path .. "/weapons/uwhdzmg.lua",
	Icon = "hud-dzmg-icon",
	Detail = "hud-detail-dzmg",
	Prerequisite = "munitions",
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 2,
	ScrapPeriod = 6,
	MetalCost = 320,
	EnergyCost = 2000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	RequiresWater = true,
    MinBuildDepth = 0.01,
	SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Weapons,IndexOfWeapon("dzmg")+1,
{
	Enabled = false,
	SaveName = "hdzmg",
	FileName = path .. "/weapons/hdzmg.lua",
	--AnimationScript = path.."/weapons/dzmg/hdzmg_swp.lua",
	Prerequisite = {{"munitions","armoury"}},
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 2,
	ScrapPeriod = 6,
	MetalCost = 100,
	EnergyCost = 2400,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "tieqiong",
			MetalCost = 200,
			EnergyCost = 3000,
			
		},
		{
			Enabled = true,
			SaveName = "smokewall",
			MetalCost = 180,
			EnergyCost = 3000,
		},
		{
			Enabled = true,
			SaveName = "dzmgcom",
			MetalCost = 10,
			EnergyCost = 227,
	},
	},
})
table.insert(Weapons,IndexOfWeapon("dzmg")+1,
{
	Enabled = false,
	SaveName = "dzmgcom",
	FileName = path .. "/weapons/dzmgcom.lua",
	Prerequisite = "port",
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 0.01,
	ScrapPeriod = 0.01,
	MetalCost = 100,
	EnergyCost = 2400,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	PopulationCap = 1,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	
	SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Weapons,IndexOfWeapon("hdzmg")+1,
{
	Enabled = false,
	SaveName = "tieqiong",
	FileName = path .. "/weapons/tieqiong.lua",
	Prerequisite = {{"port","upgrade"}},
	AnimationScript = path.."/weapons/dzmg/tq_swp.lua",
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 60,
	ScrapPeriod = 6,
	MetalCost = 200,
	EnergyCost = 2000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 2,
	SelectEffect = "ui/hud/devices/ui_devices",
	
})
if smokebomb then
		smokewall = DeepCopy(smokebomb)
		smokewall.Enabled = false
		smokewall.SaveName = "smokewall"
		smokewall.FileName = path .. "/weapons/smokewall.lua"
		smokewall.Prerequisite = {{"armoury","upgrade","port"}}
		smokewall.BuildTimeComplete = 40
		smokewall.PopulationCap = 5
		smokewall.MetalCost = (smokebomb.MetalCost + 400)
		smokewall.EnergyCost = (smokebomb.EnergyCost + 2000)
		InsertWeaponBehind("uwhdzmg",smokewall)
end	


table.insert(Weapons,IndexOfWeapon("cannon")-1,
{
	Enabled = true,
	SaveName = "dzcannon",
	FileName = path .. "/weapons/dzcannon.lua",
	Icon = "hud-dzcannon-icon",
	Detail = "hud-detail-dzcannon",
	Prerequisite = "munitions",
	GroupButton = "hud-group-cannon",
	BuildTimeComplete = 80,
	ScrapPeriod = 8,
	MetalCost = 600,
	EnergyCost = 4500,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

table.insert(Weapons,IndexOfWeapon("dzcannon")+1,
{
	Enabled = true,
	SaveName = "dzsubmine",
	FileName = path .. "/weapons/dzsubmine.lua",
	Icon = "hud-submine-icon",
	Detail = "hud-detail-dzcannon",
	Prerequisite = {{"munitions","upgrade"}},
	GroupButton = "hud-group-cannon",
	BuildTimeComplete = 100,
	ScrapPeriod = 16,
	MetalCost = 800,
	EnergyCost = 7200,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
})
table.insert(Weapons,IndexOfWeapon("dzsubmine")+1,
{
	Enabled = false,
	SaveName = "dzelc",
	FileName = path .. "/weapons/dzelc.lua",
	Icon = "hud-dzelc-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-cannon",
	Prerequisite = "factory",
	BuildTimeComplete = 10,
	ScrapPeriod = 10,
	MetalCost = 600,
	EnergyCost = 4000,
	MetalRepairCost = 100,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzelch",
			MetalCost = 800,
			EnergyCost = 10000,
			
		},
	},
})
table.insert(Weapons,IndexOfWeapon("dzelc")+1,
{
	Enabled = false,
	SaveName = "dzelch",
	FileName = path .. "/weapons/dzelch.lua",
	Icon = "hud-dzelc-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-cannon",
	Prerequisite = "port",
	BuildTimeComplete = 150,
	ScrapPeriod = 10,
	MetalCost = 1400,
	EnergyCost = 15000,
	MetalRepairCost = 100,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	PopulationCap = 3,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
})
table.insert(Weapons, IndexOfWeapon("dzelc") + 1,
{
	Enabled = true,
	SaveName = "dzto",
	FileName = path .. "/weapons/dzto.lua",
	Prerequisite = "munitions",
	Icon = "hud-dzto-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-rocket",
	BuildTimeComplete = 110,
	ScrapPeriod = 5,
	MetalCost = 600,
	EnergyCost = 6000,
	MetalRepairCost = 400,
	EnergyRepairCost = 4000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	RequiresWater = true,
    MinBuildDepth = 0.01,

	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzto1",
			MetalCost = 450,
			EnergyCost = 4500,
			
		},
	},
})table.insert(Weapons, IndexOfWeapon("dzto") + 1,
{
	Enabled = false,
	SaveName = "dzto1",
	FileName = path .. "/weapons/dzto1.lua",
	Prerequisite = "munitions",
	Icon = "hud-rocket-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-rocket",
	BuildTimeComplete = 60.0,
	ScrapPeriod = 5,
	MetalCost = 1400,
	EnergyCost = 14000,
	MetalRepairCost = 400,
	EnergyRepairCost = 4000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",

	RequiresWater = true,
    MinBuildDepth = 0.01,

	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzto2",
			MetalCost = 450,
			EnergyCost = 4500,
			
		},
		{
			Enabled = true,
			SaveName = "dzto3",
			MetalCost = 1000,
			EnergyCost = 24000,
			
		},
	},
})
table.insert(Weapons, IndexOfWeapon("dzto1") + 1,
{
	Enabled = false,
	SaveName = "dzto2",
	FileName = path .. "/weapons/dzto2.lua",
	Prerequisite = "port",
	Icon = "hud-rocket-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-rocket",
	BuildTimeComplete = 120.0,
	ScrapPeriod = 5,
	MetalCost = 2000,
	EnergyCost = 20000,
	MetalRepairCost = 600,
	EnergyRepairCost = 6000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	PopulationCap = 3,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",

	RequiresWater = true,
    MinBuildDepth = 0.01,
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzto3",
			MetalCost = 1000,
			EnergyCost = 24000,
			
		},
		{
			Enabled = true,
			SaveName = "dzto2r",
			MetalCost = 200,
			EnergyCost = 2000,
			
		},
	},
})
table.insert(Weapons, IndexOfWeapon("dzto2") + 1,
{
	Enabled = false,
	SaveName = "dzto2r",
	FileName = path .. "/weapons/dzto2r.lua",
	Prerequisite = "port",
	Icon = "hud-rocket-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-rocket",
	BuildTimeComplete = 40.0,
	ScrapPeriod = 5,
	MetalCost = 2000,
	EnergyCost = 20000,
	MetalRepairCost = 600,
	EnergyRepairCost = 6000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	PopulationCap = 3,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",

	RequiresWater = true,
    MinBuildDepth = 0.01,
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzto3",
			MetalCost = 1000,
			EnergyCost = 24000,
			
		},
	},
})
table.insert(Weapons,IndexOfWeapon("dzto2")+1,
{
	Enabled = false,
	SaveName = "dzto3",
	FileName = path .. "/weapons/dzto3.lua",
	Prerequisite = "port",
	Icon = "hud-rocket-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-rocket",
	BuildTimeComplete = 200.0,
	ScrapPeriod = 30,
	MetalCost = 3000,
	EnergyCost = 40000,
	MetalRepairCost = 600,
	EnergyRepairCost = 6000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",

	RequiresWater = true,
    MinBuildDepth = 0.01,
	Upgrades =nil,
})


table.insert(Weapons,IndexOfWeapon("dzhardpoint")+1,
{
	Enabled = true,
	SaveName = "lizi",
	dlc2_BuildQueue = "lizi",
	FileName = path .. "/weapons/lizi.lua",
	Icon = "hud-lizi-icon",
	Detail = "hud-detail-cannon",
	Prerequisite = "port",
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 180,
	ScrapPeriod = 6,
	MetalCost = 600,
	EnergyCost = 6000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SpotterFactor = 0.0,
	RequiresSpotterToFire = false,
	AlignToCursorNormal = false,
	CanMove = true,
	--PopulationCap = 16,
	SelectEffect = "ui/hud/devices/ui_devices",
	tech = true,
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "lizia",
			MetalCost = 1000,
			EnergyCost = 10000,
			
		},
		{
			Enabled = true,
			SaveName = "lizib",
			MetalCost = 1000,
			EnergyCost = 10000,
			
		},
	},
	
})
table.insert(Weapons,IndexOfWeapon("machinegun")+1,
{
	Enabled = false,
	CanMove = true,
	SaveName = "lizia",
	FileName = path .. "/weapons/lizia.lua",
	
	Prerequisite = "port",
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 180,
	ScrapPeriod = 6,
	MetalCost = 1000,
	EnergyCost = 10000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 1,
	SelectEffect = "ui/hud/devices/ui_devices",
	tech = true,
	
})
table.insert(Weapons,IndexOfWeapon("machinegun")+1,
{
	Enabled = false,
	CanMove = true,
	SaveName = "lizib",
	FileName = path .. "/weapons/lizib.lua",
	
	Prerequisite = "port",
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 180,
	ScrapPeriod = 6,
	MetalCost = 1000,
	EnergyCost = 10000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	Selectable = false,
	--SpotterFactor = 0.0,
	RequiresSpotterToFire = false,
	AlignToCursorNormal = false,	
	PopulationCap = 1,
	SelectEffect = "ui/hud/devices/ui_devices",
	tech = true,
})


table.insert(Weapons, IndexOfWeapon("dzto") + 1,
{
	Enabled = true,
	SaveName = "hjcf",
	FileName = path .. "/weapons/hjcf.lua",
	Icon = "hud-hjcf-icon",
	dlc2_BuildQueue = "hjcf",
	GroupButton = "hud-group-missile",
	Detail = "hud-detail-missile",
	AnimationScript = path.."/weapons/missilelauncher_anim.lua",
	Prerequisite = {{"port","upgrade"}},
	BuildTimeComplete = 270,
	ScrapPeriod = 60,
	MetalCost = 1250,
	EnergyCost = 12000,
	MetalRepairCost = 80,
	EnergyRepairCost = 1250,
	SpotterFactor = 0.0, -- can't spot for itself (need a sniper with LOS)
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxSpotterAssistance = 0,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	RequiresWater = true,
	AlignToCursorNormal = false,
	RequiresSpotterToFire = true,
	PopulationCap = 9,
	SelectEffect = "ui/hud/weapons/ui_weapons",
		
	CompatibleGroupTypes =
	{
		"missile",
		"missileinv",
		"missile2",
		"missile2inv",
	},
})
table.insert(Weapons, IndexOfWeapon("hjcf") + 1,
{
	Enabled = true,
	SaveName = "hjcfspace",
	FileName = path .. "/weapons/hjcfspace.lua",
	Icon = "hud-hjcfspace-icon",
	GroupButton = "hud-group-missile",
	Detail = "hud-detail-missile",
	AnimationScript = path.."/weapons/missilelauncher_anim.lua",
	Prerequisite = {{"port","upgrade"}},
	BuildTimeComplete = 60,
	ScrapPeriod = 60,
	MetalCost = 1000,
	EnergyCost = 16000,
	MetalRepairCost = 80,
	EnergyRepairCost = 1250,
	--SpotterFactor = 0.0, -- can't spot for itself (need a sniper with LOS)
	--MaxSpotterAssistance = 0,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	RequiresWater = true,
	AlignToCursorNormal = false,
	RequiresSpotterToFire = false,
	PopulationCap = 1,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
	{
		{
			Enabled = false,
			SaveName = "groundstation",
			MetalCost = 100,
			EnergyCost = 1000,
		},
	},
})
table.insert(Weapons, IndexOfWeapon("hjcfspace") + 1,
{
	Enabled = false,
	SaveName = "groundstation",
	FileName = path .. "/weapons/groundstation.lua",
	Icon = "hud-hjcf-icon",
	GroupButton = "hud-group-missile",
	Detail = "hud-detail-missile",
	BuildTimeComplete = 24,
	ScrapPeriod = 60,
	MetalCost = 100,
	EnergyCost = 1000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 10000,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	RequiresWater = false,
	AlignToCursorNormal = false,
	PopulationCap = 1,
	tech = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun3")+1,
{
	Enabled = false,
	SaveName = "mtl",
	FileName = path .. "/weapons/mtl.lua",
	Icon = "hud-mtl-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = {{"munitions","factory"}},
	BuildTimeComplete = 240,
	ScrapPeriod = 12,
	MetalCost = 1600,
	EnergyCost = 20000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap = 1,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	--[[CompatibleGroupTypes =
	{
		"dzdeckgun1",
		"dzdeckgun2",
		"dzdeckgun3",
		"dzdeckgun11",
		"dzdeckgun21",
		"dzdeckgun23",
		"dzdeckgun32",
		"dzdeckgun13",
	},]]--
	Upgrades = 
	{
		{
			Enabled = true,
			SaveName = "kuangdun",
			MetalCost = 3400,
			EnergyCost = 40000,	
		},
	}
	
	
})
table.insert(Weapons,IndexOfWeapon("mtl")+1,
{
	Enabled = false,
	SaveName = "kuangdun",
	FileName = path .. "/weapons/kuangdun.lua",
	Icon = "hud-mtl-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "port",
	BuildTimeComplete = 600,
	ScrapPeriod = 60,
	MetalCost = 1600,
	EnergyCost = 20000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap = 1,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	--[[CompatibleGroupTypes =
	{
		"dzdeckgun1",
		"dzdeckgun2",
		"dzdeckgun3",
		"dzdeckgun11",
		"dzdeckgun21",
		"dzdeckgun23",
		"dzdeckgun32",
		"dzdeckgun13",
	},]]--
})
---------------------------------------------------------------------------------------
table.insert(Weapons,IndexOfWeapon("dzcannon")+1,
{
	Enabled = true,
	SaveName = "g76",
	FileName = path .. "/weapons/76.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "workshop",
	BuildTimeComplete = 60,
	ScrapPeriod = 16,
	MetalCost = 400,
	EnergyCost = 3000,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		
	},
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun1",
			MetalCost = 240,
			EnergyCost = 2400,
			
		},
		{
			Enabled = true,
			SaveName = "p76",
			MetalCost = 200,
			EnergyCost = 2000,
			
		},
		{
			Enabled = true,
			SaveName = "130",
			MetalCost = 100,
			EnergyCost = 1000,
			
		},
	},
})

table.insert(Weapons,IndexOfWeapon("g76")+1,
{
	Enabled = false,
	SaveName = "p76",
	FileName = path .. "/weapons/762.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "upgrade",
	BuildTimeComplete = 60,
	ScrapPeriod = 16,
	MetalCost = 400,
	EnergyCost = 3000,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		
	},
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun1",
			MetalCost = 300,
			EnergyCost = 3000,
			
		},
		{
			Enabled = true,
			SaveName = "p762",
			MetalCost = 240,
			EnergyCost = 2400,
			
		},
	},
})
table.insert(Weapons,IndexOfWeapon("p76")+1,
{
	Enabled = false,
	SaveName = "p762",
	FileName = path .. "/weapons/7622.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "upgrade",
	BuildTimeComplete = 80,
	ScrapPeriod = 16,
	MetalCost = 400,
	EnergyCost = 3000,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		
	},
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun1",
			MetalCost = 200,
			EnergyCost = 2000,
			
		},
	},
})
table.insert(Weapons,IndexOfWeapon("p76")+1,
{
	Enabled = true,
	SaveName = "g130",
	FileName = path .. "/weapons/130.lua",
	Icon = "hud-g130-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-flak",
	Prerequisite = "workshop",
	BuildTimeComplete = 30,
	ScrapPeriod = 16,
	MetalCost = 300,
	EnergyCost = 2400,
	MetalRepairCost = 220,
	EnergyRepairCost = 1600,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
	Upgrades =
	{
		["g130a"] = 
		{
			Enabled = true,
			SaveName = "g130a",
			Prerequisite = nil,
			MetalCost = 0,
			EnergyCost = 200,
			BuildTimeComplete = 5,
		},
	},
})
table.insert(Weapons,IndexOfWeapon("p76")+1,
{
	Enabled = false,
	SaveName = "g130a",
	FileName = path .. "/weapons/130a.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-flak",
	--Prerequisite = "workshop",
	BuildTimeComplete = 10,
	ScrapPeriod = 16,
	MetalCost = 300,
	EnergyCost = 2400,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
	Upgrades =
	{
		["g130"] = 
		{
			Enabled = true,
			SaveName = "g130",
			Prerequisite = nil,
			MetalCost = 0,
			EnergyCost = 200,
			BuildTimeComplete = 5,
		},
	},
})

--[[table.insert(Weapons,IndexOfWeapon("p76")+1,
{
	Enabled = false,
	SaveName = "g130beta",
	FileName = path .. "/weapons/130.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-flak",
	Prerequisite = "workshop",
	BuildTimeComplete = 10,
	ScrapPeriod = 16,
	MetalCost = 300,
	EnergyCost = 2400,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		"g130",
		"g130beta",
	},
	
	Upgrades =
	{
		["g130a"] = 
		{
			Enabled = true,
			SaveName = "g130a",
			MetalCost = 0,
			EnergyCost = 200,
			BuildTimeComplete = 10,
		},
	},
})]]--
table.insert(Weapons,IndexOfWeapon("dzcannon")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun1",
	FileName = path .. "/weapons/dzdeckgun1.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "munitions",
	BuildTimeComplete = 60,
	ScrapPeriod = 12,
	MetalCost = 1200,
	EnergyCost = 12000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		"dzdeckgun1",
		"dzdeckgun2",
		"dzdeckgun3",
		"dzdeckgun11",
		"dzdeckgun21",
		"dzdeckgun23",
		"dzdeckgun32",
		"dzdeckgun13",
		"dzdeckgun43",
		"dzdeckgun384",
	},
	
	Upgrades =
	{
		
		{
			Enabled = true,
			SaveName = "dzdeckgun11",
			MetalCost = 100,
			EnergyCost = 1000,
			
		},
		{
			Enabled = true,
			SaveName = "dzdeckgun13",
			MetalCost = 200,
			EnergyCost = 2000,
			
		},
		{
			Enabled = true,
			SaveName = "dzdeckgun1m",
			MetalCost = 200,
			EnergyCost = 2000,
			
		},
	},
	
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun1")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun1m",
	FileName = path .. "/weapons/dzdeckgun1m.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "port",
	BuildTimeComplete = 80,
	ScrapPeriod = 12,
	MetalCost = 1200,
	EnergyCost = 12000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap= 2,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",	
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun1")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun11",
	FileName = path .. "/weapons/dzdeckgun11.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "munitions",
	BuildTimeComplete = 24,
	ScrapPeriod = 12,
	MetalCost = 1200,
	EnergyCost = 12000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		"dzdeckgun1",
		"dzdeckgun11",
		"dzdeckgun13",
	},
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun2",
			MetalCost = 300,
			EnergyCost = 3000,
			
		},
		
	},
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun1")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun157",
	FileName = path .. "/weapons/dzdeckgun157.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "munitions",
	BuildTimeComplete = 30,
	ScrapPeriod = 12,
	MetalCost = 1200,
	EnergyCost = 12000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap = 2,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun2",
			MetalCost = 300,
			EnergyCost = 3000,
			
		},
		
	},
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun11")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun13",
	FileName = path .. "/weapons/dzdeckgun13.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "munitions",
	BuildTimeComplete = 24,
	ScrapPeriod = 12,
	MetalCost = 200,
	EnergyCost = 2000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		"dzdeckgun1",
		"dzdeckgun11",
		"dzdeckgun13",
	},
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun23",
			MetalCost = 400,
			EnergyCost = 4000,
			
		},
		{
			Enabled = false,
			SaveName = "dzdeckgun21",
			MetalCost = 220,
			EnergyCost = 2200,
			
		},
	},
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun13")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun2",
	FileName = path .. "/weapons/dzdeckgun2.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "upgrade",
	BuildTimeComplete = 80,
	ScrapPeriod = 12,
	MetalCost = 1800,
	EnergyCost = 18000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		"dzdeckgun2",
		"dzdeckgun21",
		"dzdeckgun23",
	},
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun2")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun23",
	FileName = path .. "/weapons/dzdeckgun23.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "upgrade",
	BuildTimeComplete = 120,
	ScrapPeriod = 12,
	MetalCost = 1800,
	EnergyCost = 18000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		"dzdeckgun2",
		"dzdeckgun21",
		"dzdeckgun23",
	},
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun23")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun21",
	FileName = path .. "/weapons/dzdeckgun21.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "upgrade",
	BuildTimeComplete = 60,
	ScrapPeriod = 12,
	MetalCost = 1800,
	EnergyCost = 18000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		"dzdeckgun2",
		"dzdeckgun21",
		"dzdeckgun23",
	},
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun21")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun384",
	FileName = path .. "/weapons/dzdeckgun384.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "munitions",
	BuildTimeComplete = 150,
	ScrapPeriod = 12,
	MetalCost = 2400,
	EnergyCost = 24000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun34",
			MetalCost = 600,
			EnergyCost = 6000,
			
		},
	},
	
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun21")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun3",
	FileName = path .. "/weapons/dzdeckgun3.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "munitions",
	BuildTimeComplete = 160,
	ScrapPeriod = 12,
	MetalCost = 2400,
	EnergyCost = 24000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		
		"dzdeckgun3",
		"dzdeckgun32",
		"dzdeckgun34",
	},
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun43",
			MetalCost = 600,
			EnergyCost = 6000,
			
		},
	},
	
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun3")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun32",
	FileName = path .. "/weapons/dzdeckgun32.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "munitions",
	BuildTimeComplete = 100,
	ScrapPeriod = 12,
	MetalCost = 2400,
	EnergyCost = 24000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		
		"dzdeckgun3",
		"dzdeckgun32",
		"dzdeckgun34",
	},
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "dzdeckgun52",
			MetalCost = 600,
			EnergyCost = 6000,
			
		},
	},
	
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun384")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun34",
	FileName = path .. "/weapons/dzdeckgun34.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "port",
	BuildTimeComplete = 160,
	ScrapPeriod = 12,
	MetalCost = 2800,
	EnergyCost = 28000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	CompatibleGroupTypes =
	{
		
		"dzdeckgun3",
		"dzdeckgun32",
		"dzdeckgun34",
	},
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun32")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun43",
	FileName = path .. "/weapons/dzdeckgun43.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "port",
	BuildTimeComplete = 120,
	ScrapPeriod = 12,
	MetalCost = 3000,
	EnergyCost = 30000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,

	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun43")+1,
{
	Enabled = false,
	SaveName = "dzdeckgun52",
	FileName = path .. "/weapons/dzdeckgun52.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "port",
	BuildTimeComplete = 140,
	ScrapPeriod = 12,
	MetalCost = 3000,
	EnergyCost = 30000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap = 3,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
	
	
})
table.insert(Weapons,IndexOfWeapon("dzdeckgun52")+1,
{
	Enabled = false,
	SaveName = "leo",
	FileName = path .. "/weapons/leo.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-cannon",
	Prerequisite = "port",
	BuildTimeComplete = 140,
	ScrapPeriod = 12,
	MetalCost = 3000,
	EnergyCost = 30000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap = 3,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
	
	
})
table.insert(Weapons,IndexOfWeapon("dzhardpoint")+1,
{
	Enabled = true,
	SaveName = "defgun",
	FileName = path .. "/weapons/defgun.lua",
	AnimationScript = path.."/weapons/defgun/defgun_anim.lua",
	Icon = "hud-defgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-cannon",
	Prerequisite = "factory",
	BuildTimeComplete = 180,
	ScrapPeriod = 12,
	MetalCost = 1400,
	EnergyCost = 20000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	
	
	
})
table.insert(Weapons,IndexOfWeapon("defgun")+1,
{	
	Enabled = false,
	SaveName = "plm1",
	FileName = path .. "/weapons/plm1.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "port",
	BuildTimeComplete = 60,
	ScrapPeriod = 10,
	MetalCost = 3000,
	EnergyCost = 30000,
	MetalRepairCost = 1000,
	nergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap = 3,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades = 
	{
		{
			Enabled = false,
			SaveName = "plm2",
			MetalCost = 1000,
			EnergyCost = 10000,
		}
	}
})


table.insert(Weapons,IndexOfWeapon("plm1")+1,
{
	Enabled = false,
	SaveName = "plm2",
	FileName = path .. "/weapons/plm2.lua",
	Icon = "hud-dzdeckgun-icon",
	Detail = "hud-detail-dzcannon",
	GroupButton = "hud-group-turret",
	Prerequisite = "port",
	BuildTimeComplete = 140,
	ScrapPeriod = 12,
	MetalCost = 3000,
	EnergyCost = 30000,
	MetalRepairCost = 1000,
	EnergyRepairCost = 5000,
	MetalReclaimMin = 0.4,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.4,
	EnergyReclaimMax = 0.5,
	PopulationCap = 3,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
	--[[CompatibleGroupTypes =
	{
		"dzdeckgun1",
		"dzdeckgun2",
		"dzdeckgun3",
		"dzdeckgun11",
		"dzdeckgun21",
		"dzdeckgun23",
		"dzdeckgun32",
		"dzdeckgun13",
		"dzdeckgun43",
		
	},]]--
	
	
})
table.insert(Weapons,IndexOfWeapon("smokewall")+1,
{
	Enabled = true,
	SaveName = "cj1",
	FileName = path .. "/weapons/cj1.lua",
	Icon = "hud-cj-icon",
	AnimationScript = path.."/weapons/cj/cj_swp.lua",
	Detail = "hud-detail-dzmg",
	Prerequisite = {{"factory","armoury"}},
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 60,
	ScrapPeriod = 30,
	MetalCost = 400,
	EnergyCost = 2400,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 2,
	SelectEffect = "ui/hud/devices/ui_devices",
	Upgrades = --升级
	{
		{
			Enabled = false,
			SaveName = "cj2",
			MetalCost = 50,
			EnergyCost = 200,
			
		},
		
	},
})
table.insert(Weapons,IndexOfWeapon("machinegun")+1,
{
	Enabled = false,
	SaveName = "cj2",
	FileName = path .. "/weapons/cj2p.lua",
	Icon = "hud-dzmg-icon",
	Detail = "hud-detail-dzmg",
	Prerequisite = {{"factory","armoury","upgrade"}},
	GroupButton = "hud-group-flak",
	BuildTimeComplete = 25,
	ScrapPeriod = 6,
	MetalCost = 420,
	EnergyCost = 2000,
	MetalRepairCost = 3,
	EnergyRepairCost = 20,
	MetalReclaimMin = 0.6,
	MetalReclaimMax = 0.8,
	EnergyReclaimMin = 0.6,
	EnergyReclaimMax = 0.8,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	HasDummy = false,
	PopulationCap = 6,
	SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Weapons,IndexOfWeapon("plm2")+1,
{
	MetalReclaimMax = 0,
	--Prerequisite = "hidetech",
	--HideFromEditor = true,
	IsFloatingDevice = true,
	MetalReclaimMin = 0,
	MaxUpAngle = 90,
	EnergyRepairCost = 0,
	BuildTimeComplete = 0,
	dlc2_BuildAnywhere = true,
	Icon = "hud-orbital_laser-icon",
	BuildTimeIntermediate = 0,
	Enabled = false,
	BuildOnGroundOnly = true,
	MaxSpotterAssistance = 0,
	GroupButton = "hud-group-orbital_laser",
    --ExcludeUnlockAll = true,
	EnergyReclaimMin = 0,
	FileName = path.."/weapons/hjcf/sat.lua",
	SelectEffect = "ui/hud/weapons/ui_weapons",
	MetalRepairCost = 0,
	EnergyCost = 3000,
	SaveName = "sat",
	MetalCost = 0,
	ScrapPeriod = 0,
	Detail = "hud-detail-orbital_laser",
	--Selectable = false,
	EnergyReclaimMax = 0,
	PopulationCap = 1,
	--SavedInEditor = false,
	
})




local secondary_caliber = {"1","11","13","2","23"}
for k,v in pairs(secondary_caliber) do
	table.insert(Weapons,IndexOfWeapon("dzdeckgun52")+1,
	{
		Enabled = false,
		SaveName = "dzdeckgun"..v.."_sec",
		FileName = path .. "/weapons/dzdeckgun_temps/secondary_calibre/dzdeckgun"..v.."_sec.lua",
		Icon = "hud-dzdeckgun-icon",
		Detail = "hud-detail-dzcannon",
		GroupButton = "hud-group-turret",
		Prerequisite = "munitions",
		BuildTimeComplete = 5,
		ScrapPeriod = 12,
		MetalCost = 0,
		EnergyCost = 2000,
		MetalRepairCost = 500,
		EnergyRepairCost = 5000,
		MetalReclaimMin = 0.4,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.4,
		EnergyReclaimMax = 0.5,

		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		HasDummy = false,
		SelectEffect = "ui/hud/devices/ui_devices",
		CompatibleGroupTypes =
		{
			"dzdeckgun1_sec",
			"dzdeckgun2_sec",
			"dzdeckgun13_sec",
			"dzdeckgun11_sec",
			"dzdeckgun23_sec",
		
		},
		Upgrades =
		{
			{
				Enabled = true,
				SaveName = "dzdeckgun"..v,
				Button = "hud-mai-calibre",
				MetalCost = 0,
				EnergyCost = 2000,
				BuildDuration = 5,
			},
		},
		
	})
	local sec = "dzdeckgun"..v
	local dzsec = FindWeapon(sec)
	if dzsec.Upgrades == nil then
		dzsec.Upgrades = {}
	end
	table.insert(dzsec.Upgrades,
	{
		
			Enabled = true,
			SaveName = "dzdeckgun"..v.."_sec",
			Button = "hud-sec-calibre",
			MetalCost = 0,
			EnergyCost = 2000,
			BuildDuration = 5,
			TransferReloadProgress = true,
		
	})
end
local rage_dzdkgs = {"3","32","34","384","43","52"}
for k,v in pairs(rage_dzdkgs) do
	table.insert(Weapons,IndexOfWeapon("dzdeckgun52")+1,
	{
		Enabled = false,
		SaveName = "dzdeckgun"..v.."_ac",
		FileName = path .. "/weapons/dzdeckgun_temps/rage_temps/dzdeckgun"..v.."_ac.lua",
		Icon = "hud-dzdeckgun-icon",
		Detail = "hud-detail-dzcannon",
		GroupButton = "hud-group-turret",
		Prerequisite = "munitions",
		BuildTimeComplete = 0,
		ScrapPeriod = 12,
		MetalCost = 0,
		EnergyCost = 2000,
		MetalRepairCost = 500,
		EnergyRepairCost = 5000,
		MetalReclaimMin = 0.4,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.4,
		EnergyReclaimMax = 0.5,

		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		HasDummy = false,
		SelectEffect = "ui/hud/devices/ui_devices",
		CompatibleGroupTypes =
		{
			"dzdeckgun"..v
		
		},
		Upgrades =
		{
			["dzdeckgun"..v] = 
			{
				Enabled = false,
				SaveName = "dzdeckgun"..v,
				--Button = "hud-mai-calibre",
				MetalCost = 0,
				EnergyCost = 0,
				BuildDuration = 0,
				TransferReloadProgress = true,
			},
		},
		
	})
	local dkg = "dzdeckgun"..v
	
	local dzdkg = FindWeapon(dkg)
	if dzdkg.Upgrades == nil then
		dzdkg.Upgrades = {}
	end
	dzdkg.Upgrades["dzdeckgun"..v.."_ac"] =
	{
		
			Enabled = false,
			SaveName = "dzdeckgun"..v.."_ac",
			--Button = "hud-sec-calibre",
			MetalCost = 0,
			EnergyCost = 0,
			BuildDuration = 0,
			TransferReloadProgress = true,
		
	}
end

local secrl_dzdkgs = {"11","13","2","23","32","3"}
for k,v in pairs(secrl_dzdkgs) do
	table.insert(Weapons,IndexOfWeapon("dzdeckgun52")+1,
	{
		Enabled = false,
		SaveName = "dzdeckgun"..v.."_secrl",
		FileName = path .. "/weapons/dzdeckgun_temps/secrl_temps/dzdeckgun"..v.."_secrl.lua",
		Icon = "hud-dzdeckgun-icon",
		Detail = "hud-detail-dzcannon",
		GroupButton = "hud-group-turret",
		Prerequisite = "munitions",
		BuildTimeComplete = 0,
		ScrapPeriod = 12,
		MetalCost = 0,
		EnergyCost = 2000,
		MetalRepairCost = 500,
		EnergyRepairCost = 5000,
		MetalReclaimMin = 0.4,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.4,
		EnergyReclaimMax = 0.5,

		MaxUpAngle = StandardMaxUpAngle,
		BuildOnGroundOnly = false,
		HasDummy = false,
		SelectEffect = "ui/hud/devices/ui_devices",
		CompatibleGroupTypes =
		{
			"dzdeckgun"..v
		
		},
		Upgrades =
		{
			["dzdeckgun"..v] = 
			{
				Enabled = true,
				SaveName = "dzdeckgun"..v,
				Button = "hud-burst",
				MetalCost = 0,
				EnergyCost = 0,
				BuildDuration = 10*(1+k/8),
				TransferReloadProgress = true,
			},
		},
		
	})
	local dkg = "dzdeckgun"..v
	
	local dzdkg = FindWeapon(dkg)
	if dzdkg.Upgrades == nil then
		dzdkg.Upgrades = {}
	end
	dzdkg.Upgrades["dzdeckgun"..v.."_secrl"] =
	{
		
			Enabled = false,
			SaveName = "dzdeckgun"..v.."_secrl",
			Button = "hud-secburst",
			MetalCost = 0,
			EnergyCost = 0,
			BuildDuration = 10*(1+k/8),
			TransferReloadProgress = true,
		
	}
end






function isainb(a,b)
	for k,v in pairs(b) do
		if a==v then
			return true
		end
	end
	return false
end

