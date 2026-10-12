
table.insert(Sprites,
{
		Name = "hud-dzar-door-icon",
		States =
		{
			Normal = { Frames = {{ texture = path .. "/icons/Materials-dzar-Door-A.tga", bottom = 0.664 },},},
			Rollover = { Frames = {{ texture = path .. "/icons/Materials-dzar-Door-R.tga", bottom = 0.664 },},},
			Pressed = { Frames = {{ texture = path .. "/icons/Materials-dzar-Door-S.tga", bottom = 0.664 },},},
			Disabled = { Frames = {{ texture = path .. "/icons/Materials-dzar-Door-D.tga", bottom = 0.664 },},},
		},
})
table.insert(Sprites,
{
		Name = "hud-dzar-icon",
		States =
		{
			Normal = { Frames = {{ texture = path .. "/icons/Materials-dzar-A.tga", bottom = 0.664 },},},
			Rollover = { Frames = {{ texture = path .. "/icons/Materials-dzar-R.tga", bottom = 0.664 },},},
			Pressed = { Frames = {{ texture = path .. "/icons/Materials-dzar-S.tga", bottom = 0.664 },},},
			Disabled = { Frames = {{ texture = path .. "/icons/Materials-dzar-D.tga", bottom = 0.664 },},},
		},
})
table.insert(Sprites,
{
		Name = "hud-dznc-icon",
		States =
		{
			Normal = { Frames = {{ texture = path .. "/icons/Materials-dznc-A.tga", bottom = 0.664 },},},
			Rollover = { Frames = {{ texture = path .. "/icons/Materials-dznc-R.tga", bottom = 0.664 },},},
			Pressed = { Frames = {{ texture = path .. "/icons/Materials-dznc-S.tga", bottom = 0.664 },},},
			Disabled = { Frames = {{ texture = path .. "/icons/Materials-dznc-D.tga", bottom = 0.664 },},},
		},
})
table.insert(Sprites,
{
		Name = "hud-dznc-door-icon",
		States =
		{
			Normal = { Frames = {{ texture = path .. "/icons/Materials-dznc-Door-A.tga", bottom = 0.664 },},},
			Rollover = { Frames = {{ texture = path .. "/icons/Materials-dznc-Door-R.tga", bottom = 0.664 },},},
			Pressed = { Frames = {{ texture = path .. "/icons/Materials-dznc-Door-S.tga", bottom = 0.664 },},},
			Disabled = { Frames = {{ texture = path .. "/icons/Materials-dznc-Door-D.tga", bottom = 0.664 },},},
		},
})
table.insert(Sprites,
{
    Name = "dzar",
    States =
    {
        Normal =
        {
            Frames =
            {
                -- durations must add up to 1 for the damage keying to work properly
                -- anything beyond 1 will never show
                { texture = path .. "/materials/dzar", duration = 0.15 },
                { texture = path .. "/materials/dzar_1", duration = 0.1 },
                { texture = path .. "/materials/dzar_2", duration = 0.1 },
                { texture = path .. "/materials/dzar_3", duration = 0.1 },
                { texture = path .. "/materials/dzar_4", duration = 0.1 },
                { texture = path .. "/materials/dzar_5", duration = 0.1 },
                { texture = path .. "/materials/dzar_6", duration = 0.1 },
                { texture = path .. "/materials/dzar_7", duration = 0.1 },
                { texture = path .. "/materials/dzar_8", duration = 0.15 },
                mipmap = true,
                repeatS = true,
            },
        },
    },
})
table.insert(Sprites,
{
    Name = "dznc",
    States =
    {
        Normal =
        {
            Frames =
            {
                -- durations must add up to 1 for the damage keying to work properly
                -- anything beyond 1 will never show
                { texture = path .. "/materials/dznc", duration = 0.15 },
                { texture = path .. "/materials/dznc1", duration = 0.1 },
                { texture = path .. "/materials/dznc2", duration = 0.1 },
                { texture = path .. "/materials/dznc3", duration = 0.1 },
                { texture = path .. "/materials/dznc4", duration = 0.1 },
                { texture = path .. "/materials/dznc5", duration = 0.1 },
                { texture = path .. "/materials/dznc6", duration = 0.1 },
                { texture = path .. "/materials/dznc7", duration = 0.1 },
                { texture = path .. "/materials/dznc8", duration = 0.15 },
                mipmap = true,
                repeatS = true,
            },
        },
    },
})
table.insert(Sprites,
{
    Name = "hss",
    States =
    {
        Normal =
        {
            Frames =
            {
                -- durations must add up to 1 for the damage keying to work properly
                -- anything beyond 1 will never show
                { texture = path .. "/materials/hss", duration = 0.2 },
                { texture = path .. "/materials/hss1", duration = 0.25 },
                { texture = path .. "/materials/hss2", duration = 0.25 },
                { texture = path .. "/materials/hss3", duration = 0.3 },
            
                mipmap = true,
                repeatS = true,
            },
        },
    },
})
table.insert(Sprites,
{
    Name = "bghss",
    States =
    {
        Normal =
        {
            Frames =
            {
                -- durations must add up to 1 for the damage keying to work properly
                -- anything beyond 1 will never show
                { texture = path .. "/materials/bghss", duration = 0.2 },
                { texture = path .. "/materials/bghss1", duration = 0.25 },
                { texture = path .. "/materials/bghss2", duration = 0.25 },
                { texture = path .. "/materials/bghss3", duration = 0.3 },
            
                mipmap = true,
                repeatS = true,
            },
        },
    },
})

local hss = InheritMaterial(Bracing,
	{
		
		Context = "context-bracing",

		SaveName = "hss",
		RenderOrder = 9,
		Icon = "hud-dzar-icon",
		Detail = "hud-detail-armor",
		Sprite = "hss",
		KeySpriteByDamage = true,
		Stiffness = 300000,
		MaxCompression = 0.6,
		MaxExpansion = 1.4,
		MetalBuildCost = 0.4,
		MetalRepairCost = 0.1,
		MetalReclaim = 0.05,
		EnergyBuildCost = 2.4,
		EnergyRepairCost = 1.0,
		EnergyReclaim = 0.0,
		MinLength = StandardMinLength,
		MaxLength = 200,
		MaxLinkLength = StandardMaxLinkLength,
		Mass = 0.7,
		AirDrag = 6.4,
		HitPoints = 240,
		--Conversions = MergeLists(DefaultConversions, { "portal", }), -- customise by adding to the default conversions (their Context sprite must be set)
		IsBehindDevices = false,
		AttachesCladding = true,
		FullExtrusion = true,
		RecessionTargetSaveName = "bghss", -- when built on top of with device, converts to background bracing
		DoorTargetSaveName = "dzar_door",
		ArmorTargetSaveName = "dzar",
		FogOfWarTargetSaveName = "bracing",

		SelectEffect = "ui/hud/materials/ui_materials",
		BuildEffect = "effects/build_armor.lua",
		DestroyEffect = "effects/armor_destroy.lua",
	})
local bghss = InheritMaterial(Bracing,
	{
		
		Context = "context-backbracing",
		SaveName = "bghss",
		--Prerequisite = "munitions",
		Icon = "hud-dzar-icon",
		Detail = "hud-detail-bracing",
		Sprite = "bghss",

		MaxLength = 200,

		ShowOnHUD = true,
		MetalBuildCost = 0.4,
		MetalRepairCost = 0.08,
		MetalReclaim = 0.05,
		EnergyBuildCost = 2.3,
		EnergyRepairCost = 1.0,
		EnergyReclaim = 0.0,
		Mass = 0.6,
		AirDrag = 6.4,
		HitPoints = 200,
		Stiffness = 300000,
		MaxCompression = 0.6,
		MaxExpansion = 1.4,
		RenderOrder = 0,
		BuildTime = 8.0,
		ScrapTime = 4.0,
		SupportsDevices = false,
		PoweredByDeviceOverlap = true,
		CollidesWithFriendlyProjectiles = false,
		CollidesWithEnemyProjectiles = false,
		CollidesWithFriendlyBeams = false,
		CollidesWithEnemyBeams = true,
		IsBehindDevices = true,
		AttachesCladding = true,
		BackgroundCladding = true,
		DoorTargetSaveName = "dzar_door",
		ArmorTargetSaveName = "dzar",
		ForegroundTargetSaveName = "hss",
		FogOfWarTargetSaveName = "bracing",
		CollidesWithWind = false,
		ConductsPower = true,
		FullExtrusion = true,
		PostCreateMaterialAlways = false, --
		DegreesPerSecondMin = 64,
		DegreesPerSecondMax = 92,
		SelectEffect = "ui/hud/materials/ui_materials",
		BuildEffect = "effects/build_armor.lua",
		DestroyEffect = "effects/armor_destroy.lua",
	})
local dzar = InheritMaterial(Armor,
	{
		SaveName = "dzar",
	
		Prerequisite = "munitions",
		Icon = "hud-dzar-icon",
		Detail = "hud-detail-armor",
		Sprite = "dzar",
		Stiffness = 600000,
		MaxCompression = 0.6,
		MaxExpansion = 1.4,
		RenderOrder = 5,
		MetalBuildCost = 2.7,
		MetalRepairCost = 0.57,
		MetalReclaim = 1.55,
		EnergyBuildCost = 3.0,
		EnergyRepairCost = 0.63,
		EnergyReclaim = 0.63,
		ReflectionMomentumThreshold = 50000,
		BuildTime = 12.0,
		ScrapTime = 4.0,
		RepairRateMultiplier = 1.2,
		Mass = 1.1,
		AirDrag = 6.4,
		HitPoints = 900,
		DoorTargetSaveName = "dzar_door",
		ArmorRemovalTargetSaveName = "hss",
		ForegroundTargetSaveName = "hss",
		FogOfWarTargetSaveName = "bracing",
		PostCreateMaterialAlways = true, -- usually only want to place one door at a time, can drag if not
		PostCreateTargetSaveName = "hss",
		RecessionTargetSaveName = "bghss",
		WeaponRecession = true, -- only recess the armor into a door when in the way of a weapon
		DoorOnClearanceOverlap = true,
		SelectEffect = "ui/hud/materials/ui_materials",
	})

local dznc = InheritMaterial(Armor,
	{
		SaveName = "dznc",
		Prerequisite = "munitions",
		Icon = "hud-dznc-icon",
		Detail = "hud-detail-armor",
		Sprite = "dznc",
		Stiffness = 600000,
		MaxCompression = 0.6,
		MaxExpansion = 1.4,
		RenderOrder = 5,
		MetalBuildCost = 2.5,
		MetalRepairCost = 0.57,
		MetalReclaim = 1.4,
		EnergyBuildCost = 3.8,
		EnergyRepairCost = 0.63,
		EnergyReclaim = 0.63,
		ReflectionMomentumThreshold = 2000,
		BuildTime = 12.0,
		ScrapTime = 4.0,
		RepairRateMultiplier = 1.2,
		Mass = 1.1,
		AirDrag = 6.4,
		HitPoints = 200,
		DoorTargetSaveName = "dznc_door",
		ArmorRemovalTargetSaveName = "hss",
		ForegroundTargetSaveName = "hss",
		FogOfWarTargetSaveName = "bracing",
		PostCreateMaterialAlways = true, -- usually only want to place one door at a time, can drag if not
		PostCreateTargetSaveName = "hss",
		RecessionTargetSaveName = "bghss",
		WeaponRecession = true, -- only recess the armor into a door when in the way of a weapon
		DoorOnClearanceOverlap = true,
		SelectEffect = "ui/hud/materials/ui_materials",
	})

local dzar_door = InheritMaterial(Armor,
	{
		
		Context = "context-door",
		SaveName = "dzar_door",
		Prerequisite = "munitions",
		Icon = "hud-dzar-door-icon",
		Detail = "hud-detail-door",
		Sprite = path .. "/materials/dzar_rail.tga",
		SpriteDoor = "dzar",
		IsDoor = true,
		RenderOrder = 6,
		DoorSpeed = 42,
		DoorCap = path .. "/materials/dzar1_cap.tga",
		DoorCapWidth = 25,
		DoorCapLength = 20,
		DoorCapOffset = 7,
		MinLength = 49,

		BackgroundCladding = true,
		IsBehindDevices = false,

		ReflectionMomentumThreshold = 56000,
		HitPoints = 800,
		Mass = 1.7,
		KeySpriteByDamage = true,
		Stiffness = 600000,
		MaxCompression = 0.6,
		MaxExpansion = 1.4,


		MetalBuildCost = 2.8,
		MetalRepairCost = 2.2,
		MetalReclaim = 1.65,
		EnergyBuildCost = 3.5,
		EnergyRepairCost = 0.75,
		BuildTime = 16.0,
		ScrapTime = 4.5,
		RepairRateMultiplier = 1.5, -- doors can take too long to repair (they block shooting), so repair faster (uses resources at faster rate too)

		PostCreateMaterialAlways = true, -- usually only want to place one door at a time, can drag if not
		PostCreateTargetSaveName = "hss",
		RecessionTargetSaveName = "bghss",

		-- this is needed so that doors are reported to the weapon recession call,
		-- so the door is recognised and to avoid making some other structure into a door
		DoorTargetSaveName = "dzar_door",
		WeaponRecession = true, -- only recess the armor into a door when in the way of a weapon

		ArmorRemovalTargetSaveName = "hss",
		FogOfWarTargetSaveName = "bracing",
		BuildEffect = "effects/build_door.lua",
		OpenEffect = "effects/operate_door.lua",
		CloseEffect = "effects/operate_door.lua",
		SelectEffect = "ui/hud/materials/ui_materials",
	})
local dznc_door = InheritMaterial(Armor,
	{
		SaveName = "dznc_door",
		Prerequisite = "munitions",
		Icon = "hud-dznc-door-icon",
		Detail = "hud-detail-door",
		Sprite = path .. "/materials/dzar_rail.tga",
		SpriteDoor = "dznc",
		RenderOrder = 14,
		IsDoor = true,
		DoorSpeed = 36,
		DoorCap = path .. "/materials/dzar1_cap.tga",
		DoorCapWidth = 25,
		DoorCapLength = 20,
		DoorCapOffset = 7,
		Context = "context-door",

		HitPoints = 240,
		Mass = 1.2,
		KeySpriteByDamage = true,
		Stiffness = 600000,
		MaxCompression = 0.6,
		MaxExpansion = 1.4,
		MinLength = 49,
		MaxLength = 200,
		MaxLinkLength = StandardMaxLinkLength,
		Node = StandardNode,
		MetalBuildCost = 2.6,
		MetalRepairCost = 2.2,
		MetalReclaim = 1.65,
		EnergyBuildCost = 3.3,
		EnergyRepairCost = 0.75,
		BuildTime = 18.0,
		ScrapTime = 4.5,
		RepairRateMultiplier = 1.5, -- doors can take too long to repair (they block shooting), so repair faster (uses resources at faster rate too)
		BackgroundCladding = true,
		IsBehindDevices = false,

		ReflectionMomentumThreshold = 56000,
		

		PostCreateMaterialAlways = true, -- usually only want to place one door at a time, can drag if not
		PostCreateTargetSaveName = "hss",
		RecessionTargetSaveName = "bghss",

		-- this is needed so that doors are reported to the weapon recession call,
		-- so the door is recognised and to avoid making some other structure into a door
		DoorTargetSaveName = "dznc_door",
		WeaponRecession = true, -- only recess the armor into a door when in the way of a weapon

		ArmorRemovalTargetSaveName = "hss",
		FogOfWarTargetSaveName = "bracing",
		BuildEffect = "effects/build_door.lua",
		OpenEffect = "effects/operate_door.lua",
		CloseEffect = "effects/operate_door.lua",
		SelectEffect = "ui/hud/materials/ui_materials",
	})

table.insert(Materials,hss)
table.insert(Materials,bghss)
table.insert(Materials,dzar)
table.insert(Materials,dznc)
table.insert(Materials,dzar_door)
table.insert(Materials,dznc_door)

--[[local bracing = FindMaterial("bracing")
bracing.Stiffness = bracing.Stiffness*1.5
bracing.HitPoints = bracing.HitPoints*1.2

local backbracing = FindMaterial("backbracing")
backbracing.Stiffness = backbracing.Stiffness*1.5
backbracing.HitPoints = backbracing.HitPoints*1.2]]--