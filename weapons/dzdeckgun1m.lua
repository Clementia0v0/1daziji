dzdeckgun = true
Scale = 1
SelectionWidth = 80
SelectionHeight = 80
SelectionOffset = { -10, -10.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 300.0
HitPoints = 700.0
EnergyProductionRate = -160.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 130
IncendiaryRadiusHeated = 130
StructureSplashDamage = 120
StructureSplashDamageMaxRadius = 120

FireEffect = path.."/effects/fire_dzdeckgun.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = path.."/effects/dzdeckgunreloadlite.lua"
ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5

ReloadTimeIncludesBurst = false
MinFireSpeed = 4500.0-- Move to Ammo
MaxFireSpeed = 5500.0-- Move to Ammo


--MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 2000.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 85

KickbackMean = 0.2 -- Move to Ammo
KickbackStdDev = 0.02 -- Move to Ammo

MouseSensitivityFactor = 0.4
PanDuration = 0
RetriggerFireEffect = true

FireStdDev = 0.008		--
FireStdDevAuto = 0.008	--
MaxBursts = 200
RoundsEachBurst = 1-----bullets after click
--------delay between bullets

TriggerProjectileAgeAction = true
			MinAgeTrigger = 0.5
			MaxAgeTrigger = 5


ShowFireAngle = true

ShowFireSpeed = true
Recoil = 600000
BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.7





dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	
	
}

Root =
{
	Name = "cannon",
	Angle = 0,
	Pivot = { 0.2, -0.57 },
	PivotOffset = { 0, 0.5 },
	Sprite = "dzdeckgun1m-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { -0.12, 0.18 },
			PivotOffset = { 0, 0 },
			Sprite = "dzdeckgun-reload",
			UserData = 100,
		},
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, -0.1 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { -0.1, 0.0 },--pictre,x,y
			Sprite = "dzdeckgun-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.2, 0.1},--x,y
					PivotOffset = { 0.4, 0 },
					Sprite = "dzdeckgun-barrel1",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.2, -0.06 },---bullets from   x,y
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { 0.18, -0.35 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",---shell
							Angle = 0,
							Pivot = { -0.32, -0.15 },
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

dofile("ui/uihelper.lua")

dlc2_Ammunition =
	{
		{
		StringId = "Weapon.dzdeckgunEmptyMag", -- context menu display name
		Sprite = path.."/weapons/media/nomagazine.tga",
		Projectile = "dzempty",
		ReloadTime = 2,
		MetalFireCost = 0,
		EnergyFireCost = 0,
		},
		{
		StringId = "Weapon.dzdeckgunHE", -- context menu display name
		Sprite = "dzHE",
		Projectile = "dzdeckgunHEm",
		MinFireSpeed = 4500.0, -- Move to Ammo
		MaxFireSpeed = 5500.0, -- Move to Ammo
		ReloadTime = 8.0,
		MetalFireCost = 40,
		EnergyFireCost = 2600,
		ReloadBank =
		{
			Max = 11,
			ReloadTime = 2,
			BaseMult = 0.2,
			IndexMult = 0.0,
			EnergyMult = 1,
			MetalMult = 1,
		},
		Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunEMP", -- context menu display name
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP1",
		ReloadTime = 8.0,
		MinFireSpeed = 4500.0, -- Move to Ammo
		MaxFireSpeed = 5500.0, -- Move to Ammo
		MetalFireCost = 60,
		EnergyFireCost = 4000,
		ReloadBank =
		{
			Max = 11,
			ReloadTime = 2,
			BaseMult = 0.2,
			IndexMult = 0.0,
			EnergyMult = 1,
			MetalMult = 1,
		},
		Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
		},
		{
			StringId = "Weapon.dzdeckgunAA", -- context menu display name
			Sprite = "dzAA",
			Projectile = "dzdeckgunAA",
			ReloadTime = 4,
			MinFireSpeed = 7500.0, -- Move to Ammo
			MaxFireSpeed = 8500.0, -- Move to Ammo
			MetalFireCost = 24,
			EnergyFireCost = 1000,
			ReloadBank =
		{
			Max = 20,
			ReloadTime = 1.0,
			BaseMult = 3/4,
			IndexMult = 0.0,
			EnergyMult = 1,
			MetalMult = 1,
		},
		},
	}
	



