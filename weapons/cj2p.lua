Scale = 1
SelectionWidth = 80.0
SelectionHeight = 60.0
SelectionOffset = { 0.0, -60.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}
CanFlip = false

WeaponMass = 100.0
HitPoints = 250.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true


FireEffect = path.."/effects/liziac.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/beam_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"


Projectile = "firebeam"
BarrelLength = 58.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
RoundsEachBurst = 1
RoundPeriod = 1
ReloadTime = 20.0
ReloadTimeIncludesBurst = false
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.0
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = 15
MaxFireAngle = 135
KickbackMean = 0
KickbackStdDev = 0
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0.0
FireStdDev = 0.0
FireStdDevAuto = 0.015
Recoil = 0
BeamDuration = 3.5
EnergyFireCost = 2400
MetalFireCost = 0.0
BeamEndEffectTime = 3
BeamThicknessMultiplier = 1.2
BeamDamageMultiplier = 1
BeamsCutOffEffects = true
BeamsRecycleEffects = true

ShowFireAngle = true

-- first column is time keypoint
-- second coloumn is thickness at that keypoint
-- third column is damage at that keypoint
BeamTable =
{
	{ 0,	1,	1, },
	{ 0.1, 3,  1, },
	{ 0.2,	20, 1, },
	{ 0.3,	30, 1, },
	{ 2.6,	30, 1, },
	{ 2.8,	16, 1, }, -- 1000
	{ 3.0,	0,	1, },
}

--[[
BeamTable =
{
	{ 0,   1,  0, },
	{ 0.01, 1,  0, },
}
]]


dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "cj2p-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/cj/cj1.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "cj-barrel",
		States =
		{
			Normal = { Frames = { { texture = path.. "/weapons/cj/cj1p.png" }, mipmap = true, }, },
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
	Name = "cj",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0.322 },
	Sprite = "cj-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, -0.1 },--zhou
			PivotOffset = { 0.1, 0 },
			Sprite = "dzelc-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},--x,y
					PivotOffset = { 0.1, 0.1 },
					Sprite = "cj-barrel",
					UserData = 100,
					Visible = true,
					ChildrenInFront =
					{
						{
						Name = "Hardpoint0",
						Angle = 90,
						Pivot = { -0.1, -0.1 },
						PivotOffset = { 0, 0 },
						},
						{
						Name = "Chamber",
						Angle = 0,
						Pivot = { -1, -1 },
						PivotOffset = { 0, 0 },
						},
					},
				},
				
				
			},
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
}
