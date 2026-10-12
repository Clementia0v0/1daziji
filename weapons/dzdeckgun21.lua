dzdeckgun = true
Scale = 1.0
SelectionWidth = 80
SelectionHeight = 80
SelectionOffset = { -10, -10.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 400.0
HitPoints = 600
EnergyProductionRate = -80.0
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
StructureSplashDamage = 300
StructureSplashDamageMaxRadius = 300
Projectile = "dzempty"
FireEffect = path.."/effects/fire_dzdeckgun21.lua"
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
ReloadTime = 18.5
ReloadTimeIncludesBurst = false
MinFireSpeed = 6000.0-- Move to Ammo
MaxFireSpeed = 7500.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 15
KickbackMean = 3.0-- Move to Ammo
KickbackStdDev = 0.3 -- Move to Ammo
MouseSensitivityFactor = 0.3
PanDuration = 0


FireStdDev = 0.025		--固定散步
FireStdDevAuto = 0.03	--随即散步
RoundsEachBurst = 3-----bullets after click
RoundPeriod = 0.0--------delay between bullets

MaxBursts = 100
ShowFireAngle = true

ShowFireSpeed = true

Recoil = 400000
BarrelRecoilLimit = -0.3
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.7
ReloadBank =
	{
		Max = 2,
		ReloadTime = 3,
		BaseMult = 1.5,
		IndexMult = 0.2,
		EnergyMult = 1,
		MetalMult = 1,
	}






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
	Sprite = "dzdeckgun-base",
	UserData = 0,
	ChildrenBehind =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { -0.12, 0.18 },
			PivotOffset = { 0, 0 },
			Sprite = "dzdeckgun3-reload",
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
					Sprite = "dzdeckgun-barrel21",
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
		Projectile = "dzdeckgunAP21b",
	
		MetalFireCost = 220,
		EnergyFireCost = 7200,
		Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunHE", -- context menu display name
		Sprite = "dzHE",
		Projectile = "dzdeckgunHE21",
		MetalFireCost = 180,
		EnergyFireCost = 6000,
		Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunEMP", -- context menu display name
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP1",
		MetalFireCost = 180,
		EnergyFireCost = 6000,
		Devices = { { Name = "ammo_dzdeckgunEMP1", Consume = false } },
		},
	}




