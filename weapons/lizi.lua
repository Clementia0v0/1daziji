Scale = 1
SelectionWidth = 44.0
SelectionHeight =40.0
SelectionOffset = { 0.0, -40.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0

HitPoints = 50
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
Projectile = "lizi"
BarrelLength = 1.0
MinFireClearance = 0
FireClearanceOffsetInner = 0
FireClearanceOffsetOuter = 0
ReloadTime = 120---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 2000.0
MaxFireSpeed = 2000.1
MinFireRadius = 0.0
MaxFireRadius = 0.0
MinFireSpread = 0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -45
MaxFireAngle = 45
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.0
FireStdDevAuto = 0.0

Recoil = 20000
EnergyFireCost = 4000
MetalFireCost = 0
ShowFireAngle = true
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
		Name = "lizi-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/lizi/base11.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "lizi-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/hjcf/any.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "lizi-flash",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path.."/weapons/lizi/001.png" },
					{ texture = path.."/weapons/lizi/002.png" },
					{ texture = path.."/weapons/lizi/003.png" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 1.2,
				LoopExitState = "Null",
			},
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
	PivotOffset = { 0, -0.08 },
	Sprite = "lizi-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.4, 0.0 },--zhou
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
			ChildrenInFront =
			{
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.4, 0.0 },
					PivotOffset = { 0, 0 },
					Sprite = "lizi-flash",
					Visible = false,
				},
			},
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
}