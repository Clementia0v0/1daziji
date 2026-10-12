Scale = 1
SelectionWidth = 80.0
SelectionHeight = 60.0
SelectionOffset = { 0.0, -60.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0
CanFireUnderwater = false
HitPoints = 300
EnergyProductionRate = 0.0---
MetalProductionRate = 0.0---
----------------------------------------------------------------
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
----------------------------------------------------------------
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = "mods/dlc1_weapons/effects/fire_smokebomb.lua"
FireEndEffect = "mods/dlc1_weapons/effects/cooldown_smokebomb.lua"
ShellEffect = "mods/dlc1_weapons/effects/shell_eject_smokebomb.lua"
ConstructEffect = "effects/device_upgrade.lua"
DestroyEffect = "effects/machinegun_explode.lua"
ReloadEffect = "mods/dlc1_weapons/effects/reload_smokebomb.lua"
-----------------------------------------------------------

BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 50---reload
ReloadTimeIncludesBurst = false

FireSpreadMultiplier = 0.1
UniformSpray = true
MinFireSpeed = 6000.0
MaxFireSpeed = 6000.1
MinFireRadius = 300.0
MaxFireRadius = 1400.0
MinFireSpread = 3
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -60
MaxFireAngle = 100
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.0
FireStdDevAuto = 0.0
MaxFireClamp = 0.9
Recoil = 20000
EnergyFireCost = 400
MetalFireCost = 30
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled
ProjectilesEachRound = 1
RetriggerFireEffect = true
RoundsEachBurst = 24
RoundPeriod = 0
TriggerProjectileAgeAction = true
Projectile = "dzsmokebomb"
MinAgeTrigger = 1.2
MaxAgeTrigger = 4.0



-- these values are the defaults for all weapons
-- shown here just to demonstrate how to override them
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

	

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{

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
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0.0 },
	Sprite = "dzmg-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		
			{
				Name = "Head",
				Angle = 0,
				Pivot = { 0.0, -0.1 },--zhou
				PivotOffset = { 0.1, 0 },
				Sprite = "dzmg-head",
				UserData = 50,
	
				ChildrenBehind =
				{
					{
						Name = "Barrel",
						Angle = 0,
						Pivot = { 0.36, 0.1},--x,y
						PivotOffset = { 0.5, 0 },
						Sprite = "dzmg-barrel",
						UserData = 100,
						Visible = true,
						ChildrenInFront =
						{
							{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0.1, -0.1 },
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
					{
						Name = "Barrel",
						Angle = 0,
						Pivot = { 0.36, -0.1},--x,y
						PivotOffset = { 0.5, 0 },
						Sprite = "dzmg-barrel",
						UserData = 100,
						Visible = true,
						
					},
					
				},
				ChildrenInFront = 
				{
					{
						Name = "MuzzleFlash",
						Angle = 0,
						Pivot = { 0.61, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "minigun-spinning-barrel",
						Visible = false,
					},
					{
						Name = "MuzzleFlash",
						Angle = 0,
						Pivot = { 0.61, -0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "minigun-spinning-barrel",
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
