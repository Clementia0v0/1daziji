Scale = 1
SelectionWidth = 50.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0

HitPoints = 1200
EnergyProductionRate = 0.0---
MetalProductionRate = 0.0---
----------------------------------------------------------------
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
----------------------------------------------------------------
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path.."/effects/liziac.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
-----------------------------------------------------------
Projectile = "lizibo"
BarrelLength = 1.0
MinFireClearance = 0
FireClearanceOffsetInner = 0
FireClearanceOffsetOuter = 0
ReloadTime = 30---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 16000.0
MaxFireSpeed = 16000.1
MinFireRadius = 0.1
MaxFireRadius = 0.2
MinFireSpread = 0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -5
MaxFireAngle = 5
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0
HasLaserSight = true
FireStdDev = 0.0
FireStdDevAuto = 0.0
ShowAimingGizmo = false
Recoil = 20000
EnergyFireCost = 8000
MetalFireCost = 0
ShowFireAngle = true
ShowFireSpeed = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled




-- these values are the defaults for all weapons
-- shown here just to demonstrate how to override them
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

	

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter
Sprites =
{
	{
		Name = "lizib-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/lizi/000.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	
	
}


NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "dzmg",
	Angle = 0,
	Pivot = { 0, -0.45 },
	PivotOffset = { 0, 0.19 },
	Sprite = "lizib-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.05, 0.0 },--zhou
			PivotOffset = { 0, 0 },
			Sprite = "lizi-head",
			UserData = 50,

			ChildrenBehind =
			{
				
						{
						Name = "Hardpoint0",
						Angle = 90,
						Pivot = { 0, 0 },
						PivotOffset = { 0, 0 },
						},
						{
						Name = "Chamber",
						Angle = 0,
						Pivot = { -0.8, -0.5 },
						PivotOffset = { 0, 0 },
						},
					
				
			},
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
}
--[[
dlc2_Ammunition =
	{
		{
		StringId = "Weapon.lizib1", -- context menu display name
		Projectile = "lizib1",
		},
		{
		StringId = "Weapon.lizib2", -- context menu display name
		Projectile = "lizib2",
		},
		{
		StringId = "Weapon.lizib3", -- context menu display name
		Projectile = "lizib3",
		},
		{
		StringId = "Weapon.lizib4", -- context menu display name
		Projectile = "lizib4",
		},
		{
		StringId = "Weapon.lizib5", -- context menu display name
		Projectile = "lizib5",
		},
		{
		StringId = "Weapon.lizib6", -- context menu display name
		Projectile = "lizib6",
		},
		{
		StringId = "Weapon.lizib7", -- context menu display name
		Projectile = "lizib7",
		},
	}]]--