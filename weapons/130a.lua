Scale = 1.0
SelectionWidth = 80
SelectionHeight = 40
SelectionOffset = { -10, -40.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 240.0
HitPoints = 300
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 200
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 80
IncendiaryRadiusHeated = 80
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 60
Projectile = "g130HE"
FireEffect = path.."/effects/fire_1302.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = "effects/reload_cannon.lua"
ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 7.5
ReloadTimeIncludesBurst = false
MinFireSpeed = 3800.0 -- Move to Ammo
MaxFireSpeed = 3800.1 -- Move to 
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -10
MaxFireAngle = 55
KickbackMean = 0.01 -- Move to Ammo
KickbackStdDev = 0.001 -- Move to Ammo
MouseSensitivityFactor = 0.4
PanDuration = 0
RetriggerFireEffect = true

FireStdDev = 0.04		--固定散步
FireStdDevAuto = 0.02	--随即散步
ProjectilesEachRound = 2


ShowFireAngle = true

ShowFireSpeed = false
MetalFireCost = 15
EnergyFireCost = 1200
Recoil = 800000







dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter


Root =
{
	Name = "cannon",
	Angle = 0,
	Pivot = { 0.0, -0.5 },
	PivotOffset = { 0.1, 0.0 },
	Sprite = "130a-base",
	UserData = 0,
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.1, 0.0 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { 0.0, 0.0 },--pictre,x,y
			Sprite = "dzdeckgun-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.7, 0.0},--x,y
					PivotOffset = { 0.0, 0 },
					Sprite = "130-barrel",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0.0, -0.0 },---bullets from   x,y
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

	--[[dlc2_Ammunition =
	{
		{
		Sprite = "dzAP",
		Projectile = "dzdeckgunAPb",
		MetalFireCost = 100,
		EnergyFireCost = 3000,
		Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
		},
		{
		Sprite = "dzHE",
		Projectile = "dzdeckgunHE",
		MetalFireCost = 70,
		EnergyFireCost = 3600,
		Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
		{
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP1",
		MetalFireCost = 80,
		EnergyFireCost = 2000,
		Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
		},
	}]]--




