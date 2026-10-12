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
WeaponMass = 360.0
HitPoints = 770
EnergyProductionRate = -50.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 140
IncendiaryRadiusHeated = 140
StructureSplashDamage = 130
StructureSplashDamageMaxRadius = 130

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
ReloadTime = 5
ReloadTimeIncludesBurst = false
MinFireSpeed = 4000.0 -- Move to Ammo
MaxFireSpeed = 5300.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 60
KickbackMean = 0.2 -- Move to Ammo
KickbackStdDev = 0.02 -- Move to Ammo
MouseSensitivityFactor = 0.3
PanDuration = 0


FireStdDev = 0.022		--固定散步
FireStdDevAuto = 0.22	--随即散步
RoundsEachBurst = 2-----bullets after click
RoundPeriod = 0.0--------delay between bullets
MaxBursts = 90


ShowFireAngle = true

ShowFireSpeed = true

Recoil = 800000
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
	Sprite = "dzdeckgun157-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { -0.12, 0.18 },
			PivotOffset = { 0, 0 },
			Sprite = "dzdeckgun2-reload",
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
					Sprite = "dzdeckgun-barrel11",
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
		Sprite = "dzSAP",
		Projectile = "dzdeckgunSAPb",
		MetalFireCost = 40,
		EnergyFireCost = 1000,
		Devices = { { Name = "ammo_dzdeckgunSAPc", Consume = true } },
		},
		{
			Sprite = "dzHE",
			Projectile = "dzdeckgunHE",
			MetalFireCost = 40,
			EnergyFireCost = 2000,
			Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
		
	}




