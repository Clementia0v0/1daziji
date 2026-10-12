Scale = 1
SelectionWidth = 180
SelectionHeight = 120
SelectionOffset = { -100, -80 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -70 },
}
CanFlip = true
WeaponMass = 400.0
HitPoints = 800.0
EnergyProductionRate = 0.0
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
Projectile = "kuangdunHE"
FireEffect = path.."/effects/fire_kd.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/cannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = path.."/effects/kdreload.lua"
ReloadEffectOffset = -1.5
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 240
ReloadTimeIncludesBurst = false
MinFireSpeed = 1000.0 -- Move to Ammo
MaxFireSpeed = 4000.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 40
KickbackMean = 0.05 -- Move to Ammo
KickbackStdDev = 0.1 -- Move to Ammo
MouseSensitivityFactor = 0.8
PanDuration = 0
RetriggerFireEffect = true
FireStdDev = 0.02		--固定散步
FireStdDevAuto = 0.2	--随即散步
FireSpreadMultiplier = 0.035
MaxBursts = 720
ShowFireAngle = true
Recoil = 24000
BarrelRecoilLimit = -0.05
BarrelRecoilSpeed = -2.2
BarrelReturnForce = 5
EnergyFireCost = 600
MetalFireCost = 10
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

MinFireClearance = 0

Sprites =
{
	{
		Name = "kuangdun-spinning-barrel",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path.."/weapons/mtl/bar0.png" },
					{ texture = path.."/weapons/mtl/bar1.png" },
					{ texture = path.."/weapons/mtl/bar2.png" },
					{ texture = path.."/weapons/mtl/bar3.png" },
					{ texture = path.."/weapons/mtl/bar4.png" },
					{ texture = path.."/weapons/mtl/bar5.png" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 2.8,
				LoopExitState = "Null",
			},
		},
	},
	{
		Name = "kd-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/mtl/basekd.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "kd-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/mtl/headkd.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	
	
}

Root =
{
	Name = "cannon",
	Angle = 0,
	Pivot = { 0.2, -0.75 },
	PivotOffset = { 0, 0.5 },
	Sprite = "kd-base",
	UserData = 0,
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.06, -0.24 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { 0.2, -0.15 },--pictre,x,y
			Sprite = "kd-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.3, 0.15},--x,y
					PivotOffset = { 0.2, 0 },
					Sprite = path.."/weapons/mtl/bar0.png",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.2, 0.0 },---bullets from   x,y
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
							Angle = 120,
							Pivot = { -0.32, -0.15 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "MuzzleFlash",
							Angle = 0,
							Pivot = { 0.0, 0.0 },
							PivotOffset = { 0, 0 },
							Sprite = "kuangdun-spinning-barrel",
							Visible = false,
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

	--[[dlc2_Ammunition =
	{
		{
		StringId = "Weapon.mtl1", -- context menu display name
		Sprite = path.."/weapons/media/mtl.png",
		Projectile = "mtl",
		},
		
		{
		StringId = "Weapon.mtl2", -- context menu display name
		Sprite = path.."/weapons/media/mtlhe.png",
		Projectile = "mtlhe",
		},
	}]]--
	



