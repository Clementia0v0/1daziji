dzdeckgun = true
Scale = 1.0
SelectionWidth = 140
SelectionHeight = 110
SelectionOffset = { 0.0, -20.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 600.0
HitPoints = 2000
EnergyProductionRate = -100.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 200
IncendiaryRadiusHeated = 200
StructureSplashDamage = 190
StructureSplashDamageMaxRadius = 190

FireEffect = path.."/effects/fire_dzdeckgun5.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = path.."/effects/dzdeckgunreload.lua"
ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 37
ReloadTimeIncludesBurst = false
MinFireSpeed = 4500.0 -- Move to Ammo
MaxFireSpeed = 5600.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -2
MaxFireAngle = 30
KickbackMean = 4.5 -- Move to Ammo
KickbackStdDev = 0.45 -- Move to Ammo
MouseSensitivityFactor = 0.3
PanDuration = 0

MaxBursts = 50
FireStdDev = 0.034		--固定散步
FireStdDevAuto = 0.038	--随即散步
RoundsEachBurst = 2-----bullets after click
RoundPeriod = 0.0--------delay between bullets


ShowFireAngle = true

ShowFireSpeed = true

Recoil = 2400000
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
	Pivot = { 0.1, -0.57 },
	PivotOffset = { 0, 0.5 },
	Sprite = "dzdeckgun-base52",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = {-0.045, 0.18 },
			PivotOffset = { 0, 0 },
			Sprite = "dzdeckgun2-reload",
			UserData = 100,
		},
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.05, -0.12 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
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
					Sprite = "dzdeckgun-barrel52",
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
		StringId = "Weapon.dzdeckgunAP", -- context menu display name
		Sprite = "dzAP",
		Projectile = "dzdeckgunAP5b",
		MetalFireCost = 300,
		EnergyFireCost = 10000,
		Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunHE", -- context menu display name
		Sprite = "dzHE",
		Projectile = "dzdeckgunHE5",
		MetalFireCost = 240,
		EnergyFireCost = 11000,
		Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
		},
	}


