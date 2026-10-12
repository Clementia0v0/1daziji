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
WeaponMass = 700.0
HitPoints = 900.0
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
IncendiaryRadius = 130
IncendiaryRadiusHeated = 130
StructureSplashDamage = 120
StructureSplashDamageMaxRadius = 120
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
ReloadTime = 60
ReloadTimeIncludesBurst = false
MinFireSpeed = 2000.0 -- Move to Ammo
MaxFireSpeed = 3000.0 -- Move to Ammo
MaxFireClamp = 0.9
MinFireRadius = 500.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -5
MaxFireAngle = 60

KickbackMean = 0.2 -- Move to Ammo
KickbackStdDev = 0.02 -- Move to Ammo

MouseSensitivityFactor = 0.4
PanDuration = 0
RetriggerFireEffect = true

FireStdDev = 0.008		--固定散步
FireStdDevAuto = 0.08	--随即散步
MaxBursts = 100
RoundsEachBurst = 1-----bullets after click
--------delay between bullets




ShowFireAngle = true

ShowFireSpeed = true
Recoil = 3000000
BarrelRecoilLimit = -0.4
BarrelRecoilSpeed = -2
BarrelReturnForce = 0.4
Sprites = 
{
	{
		Name = "leo-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/leo/loader/leo000.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/leo/loader/leo001.png" },
					{ texture = path.."/weapons/leo/loader/leo002.png" },
					{ texture = path.."/weapons/leo/loader/leo003.png" },
					{ texture = path.."/weapons/leo/loader/leo004.png" },
					{ texture = path.."/weapons/leo/loader/leo005.png" },
					{ texture = path.."/weapons/leo/loader/leo006.png" },
					{ texture = path.."/weapons/leo/loader/leo007.png" },
					{ texture = path.."/weapons/leo/loader/leo008.png" },
					{ texture = path.."/weapons/leo/loader/leo009.png" },
					{ texture = path.."/weapons/leo/loader/leo010.png" },
					{ texture = path.."/weapons/leo/loader/leo011.png" },
					{ texture = path.."/weapons/leo/loader/leo012.png" },
					{ texture = path.."/weapons/leo/loader/leo013.png" },
					{ texture = path.."/weapons/leo/loader/leo014.png" },
					{ texture = path.."/weapons/leo/loader/leo015.png" },
					{ texture = path.."/weapons/leo/loader/leo016.png" },
					{ texture = path.."/weapons/leo/loader/leo017.png" },
					{ texture = path.."/weapons/leo/loader/leo018.png" },
					{ texture = path.."/weapons/leo/loader/leo019.png" },
					{ texture = path.."/weapons/leo/loader/leo020.png" },
					{ texture = path.."/weapons/leo/loader/leo021.png" },
					{ texture = path.."/weapons/leo/loader/leo022.png" },
					{ texture = path.."/weapons/leo/loader/leo023.png" },
					{ texture = path.."/weapons/leo/loader/leo024.png" },
					{ texture = path.."/weapons/leo/loader/leo025.png" },
					{ texture = path.."/weapons/leo/loader/leo026.png" },
					{ texture = path.."/weapons/leo/loader/leo027.png" },
					{ texture = path.."/weapons/leo/loader/leo028.png" },
					{ texture = path.."/weapons/leo/loader/leo029.png" },
					{ texture = path.."/weapons/leo/loader/leo030.png" },
					{ texture = path.."/weapons/leo/loader/leo031.png" },
					{ texture = path.."/weapons/leo/loader/leo032.png" },
					{ texture = path.."/weapons/leo/loader/leo033.png" },
					{ texture = path.."/weapons/leo/loader/leo034.png" },
					{ texture = path.."/weapons/leo/loader/leo035.png" },
					{ texture = path.."/weapons/leo/loader/leo036.png" },
					{ texture = path.."/weapons/leo/loader/leo037.png" },
					{ texture = path.."/weapons/leo/loader/leo038.png" },
					{ texture = path.."/weapons/leo/loader/leo039.png" },
					{ texture = path.."/weapons/leo/loader/leo040.png" },
					{ texture = path.."/weapons/leo/loader/leo041.png" },
					{ texture = path.."/weapons/leo/loader/leo042.png" },
					{ texture = path.."/weapons/leo/loader/leo043.png" },
					{ texture = path.."/weapons/leo/loader/leo044.png" },
					{ texture = path.."/weapons/leo/loader/leo045.png" },
					{ texture = path.."/weapons/leo/loader/leo046.png" },
					{ texture = path.."/weapons/leo/loader/leo047.png" },
					{ texture = path.."/weapons/leo/loader/leo048.png" },
					{ texture = path.."/weapons/leo/loader/leo049.png" },
					{ texture = path.."/weapons/leo/loader/leo050.png" },
					{ texture = path.."/weapons/leo/loader/leo051.png" },
					{ texture = path.."/weapons/leo/loader/leo052.png" },
					{ texture = path.."/weapons/leo/loader/leo053.png" },
					{ texture = path.."/weapons/leo/loader/leo054.png" },
					{ texture = path.."/weapons/leo/loader/leo055.png" },
					{ texture = path.."/weapons/leo/loader/leo056.png" },
					{ texture = path.."/weapons/leo/loader/leo057.png" },
					{ texture = path.."/weapons/leo/loader/leo058.png" },
					{ texture = path.."/weapons/leo/loader/leo059.png" },
					{ texture = path.."/weapons/leo/loader/leo060.png" },
					{ texture = path.."/weapons/leo/loader/leo061.png" },
					{ texture = path.."/weapons/leo/loader/leo062.png" },
					{ texture = path.."/weapons/leo/loader/leo063.png" , duration = ReloadTime - 39.4 },
					--{ texture = path.."/weapons/leo/loader/leo000.png" , duration = ReloadTime - 3.0 },
					mipmap = true,
					duration = 0.1,
				},
				--NextState = "ReloadEnd",
			},
			ReloadEnd =
			{
				Frames =
				{
					----------------------------------------------------------------------
					{ texture = path.."/weapons/leo/loader_empty/eleo000.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo001.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo002.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo003.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo004.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo005.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo006.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo007.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo008.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo009.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo010.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo011.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo012.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo013.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo014.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo015.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo016.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo017.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo018.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo019.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo020.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo021.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo022.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo023.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo024.png" },
					{ texture = path.."/weapons/leo/loader/leo064.png" },
					{ texture = path.."/weapons/leo/loader/leo065.png" },
					{ texture = path.."/weapons/leo/loader/leo066.png" },
					{ texture = path.."/weapons/leo/loader/leo067.png" },
					{ texture = path.."/weapons/leo/loader/leo068.png" },
					{ texture = path.."/weapons/leo/loader/leo069.png" },
					{ texture = path.."/weapons/leo/loader/leo070.png" },
					{ texture = path.."/weapons/leo/loader/leo071.png" },
					{ texture = path.."/weapons/leo/loader/leo072.png" },
					{ texture = path.."/weapons/leo/loader/leo073.png" },
					{ texture = path.."/weapons/leo/loader/leo074.png" },
					{ texture = path.."/weapons/leo/loader/leo075.png" },
					{ texture = path.."/weapons/leo/loader/leo076.png" },
					{ texture = path.."/weapons/leo/loader/leo077.png" },
					{ texture = path.."/weapons/leo/loader/leo078.png" },
					{ texture = path.."/weapons/leo/loader/leo079.png" },
					{ texture = path.."/weapons/leo/loader/leo080.png" },
					{ texture = path.."/weapons/leo/loader/leo081.png" },
					{ texture = path.."/weapons/leo/loader/leo082.png" },
					{ texture = path.."/weapons/leo/loader/leo083.png" },
					{ texture = path.."/weapons/leo/loader/leo084.png" },
					{ texture = path.."/weapons/leo/loader/leo085.png" },
					{ texture = path.."/weapons/leo/loader/leo086.png" },
					{ texture = path.."/weapons/leo/loader/leo087.png" },
					{ texture = path.."/weapons/leo/loader/leo088.png" },
					{ texture = path.."/weapons/leo/loader/leo089.png" },
					{ texture = path.."/weapons/leo/loader/leo090.png" },
					{ texture = path.."/weapons/leo/loader/leo091.png" },
					{ texture = path.."/weapons/leo/loader/leo092.png" },
					{ texture = path.."/weapons/leo/loader/leo093.png" },
					{ texture = path.."/weapons/leo/loader/leo094.png" },
					{ texture = path.."/weapons/leo/loader/leo095.png" },
					{ texture = path.."/weapons/leo/loader/leo096.png" },
					{ texture = path.."/weapons/leo/loader/leo097.png" },
					{ texture = path.."/weapons/leo/loader/leo098.png" },
					{ texture = path.."/weapons/leo/loader/leo099.png" },
					{ texture = path.."/weapons/leo/loader/leo100.png" },
					{ texture = path.."/weapons/leo/loader/leo101.png" },
					{ texture = path.."/weapons/leo/loader/leo102.png" },
					{ texture = path.."/weapons/leo/loader/leo103.png" },
					{ texture = path.."/weapons/leo/loader/leo104.png" },
					{ texture = path.."/weapons/leo/loader/leo105.png" },
					{ texture = path.."/weapons/leo/loader/leo106.png" },
					{ texture = path.."/weapons/leo/loader/leo107.png" },
					{ texture = path.."/weapons/leo/loader/leo108.png" },
					{ texture = path.."/weapons/leo/loader/leo109.png" , duration = 0.3 },
				--------------------------------------------------------------------------------
					{ texture = path.."/weapons/leo/loader_empty/eleo000.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo001.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo002.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo003.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo004.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo005.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo006.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo007.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo008.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo009.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo010.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo011.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo012.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo013.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo014.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo015.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo016.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo017.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo018.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo019.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo020.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo021.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo022.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo023.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo024.png" },
					{ texture = path.."/weapons/leo/loader/leo064.png" },
					{ texture = path.."/weapons/leo/loader/leo065.png" },
					{ texture = path.."/weapons/leo/loader/leo066.png" },
					{ texture = path.."/weapons/leo/loader/leo067.png" },
					{ texture = path.."/weapons/leo/loader/leo068.png" },
					{ texture = path.."/weapons/leo/loader/leo069.png" },
					{ texture = path.."/weapons/leo/loader/leo070.png" },
					{ texture = path.."/weapons/leo/loader/leo071.png" },
					{ texture = path.."/weapons/leo/loader/leo072.png" },
					{ texture = path.."/weapons/leo/loader/leo073.png" },
					{ texture = path.."/weapons/leo/loader/leo074.png" },
					{ texture = path.."/weapons/leo/loader/leo075.png" },
					{ texture = path.."/weapons/leo/loader/leo076.png" },
					{ texture = path.."/weapons/leo/loader/leo077.png" },
					{ texture = path.."/weapons/leo/loader/leo078.png" },
					{ texture = path.."/weapons/leo/loader/leo079.png" },
					{ texture = path.."/weapons/leo/loader/leo080.png" },
					{ texture = path.."/weapons/leo/loader/leo081.png" },
					{ texture = path.."/weapons/leo/loader/leo082.png" },
					{ texture = path.."/weapons/leo/loader/leo083.png" },
					{ texture = path.."/weapons/leo/loader/leo084.png" },
					{ texture = path.."/weapons/leo/loader/leo085.png" },
					{ texture = path.."/weapons/leo/loader/leo086.png" },
					{ texture = path.."/weapons/leo/loader/leo087.png" },
					{ texture = path.."/weapons/leo/loader/leo088.png" },
					{ texture = path.."/weapons/leo/loader/leo089.png" },
					{ texture = path.."/weapons/leo/loader/leo090.png" },
					{ texture = path.."/weapons/leo/loader/leo091.png" },
					{ texture = path.."/weapons/leo/loader/leo092.png" },
					{ texture = path.."/weapons/leo/loader/leo093.png" },
					{ texture = path.."/weapons/leo/loader/leo094.png" },
					{ texture = path.."/weapons/leo/loader/leo095.png" },
					{ texture = path.."/weapons/leo/loader/leo096.png" },
					{ texture = path.."/weapons/leo/loader/leo097.png" },
					{ texture = path.."/weapons/leo/loader/leo098.png" },
					{ texture = path.."/weapons/leo/loader/leo099.png" },
					{ texture = path.."/weapons/leo/loader/leo100.png" },
					{ texture = path.."/weapons/leo/loader/leo101.png" },
					{ texture = path.."/weapons/leo/loader/leo102.png" },
					{ texture = path.."/weapons/leo/loader/leo103.png" },
					{ texture = path.."/weapons/leo/loader/leo104.png" },
					{ texture = path.."/weapons/leo/loader/leo105.png" },
					{ texture = path.."/weapons/leo/loader/leo106.png" },
					{ texture = path.."/weapons/leo/loader/leo107.png" },
					{ texture = path.."/weapons/leo/loader/leo108.png" },
					{ texture = path.."/weapons/leo/loader/leo109.png"  , duration = 0.3 },
				--------------------------------------------------------------------------------
					{ texture = path.."/weapons/leo/loader_empty/eleo000.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo001.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo002.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo003.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo004.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo005.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo006.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo007.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo008.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo009.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo010.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo011.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo012.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo013.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo014.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo015.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo016.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo017.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo018.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo019.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo020.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo021.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo022.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo023.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo024.png" },
					{ texture = path.."/weapons/leo/loader/leo064.png" },
					{ texture = path.."/weapons/leo/loader/leo065.png" },
					{ texture = path.."/weapons/leo/loader/leo066.png" },
					{ texture = path.."/weapons/leo/loader/leo067.png" },
					{ texture = path.."/weapons/leo/loader/leo068.png" },
					{ texture = path.."/weapons/leo/loader/leo069.png" },
					{ texture = path.."/weapons/leo/loader/leo070.png" },
					{ texture = path.."/weapons/leo/loader/leo071.png" },
					{ texture = path.."/weapons/leo/loader/leo072.png" },
					{ texture = path.."/weapons/leo/loader/leo073.png" },
					{ texture = path.."/weapons/leo/loader/leo074.png" },
					{ texture = path.."/weapons/leo/loader/leo075.png" },
					{ texture = path.."/weapons/leo/loader/leo076.png" },
					{ texture = path.."/weapons/leo/loader/leo077.png" },
					{ texture = path.."/weapons/leo/loader/leo078.png" },
					{ texture = path.."/weapons/leo/loader/leo079.png" },
					{ texture = path.."/weapons/leo/loader/leo080.png" },
					{ texture = path.."/weapons/leo/loader/leo081.png" },
					{ texture = path.."/weapons/leo/loader/leo082.png" },
					{ texture = path.."/weapons/leo/loader/leo083.png" },
					{ texture = path.."/weapons/leo/loader/leo084.png" },
					{ texture = path.."/weapons/leo/loader/leo085.png" },
					{ texture = path.."/weapons/leo/loader/leo086.png" },
					{ texture = path.."/weapons/leo/loader/leo087.png" },
					{ texture = path.."/weapons/leo/loader/leo088.png" },
					{ texture = path.."/weapons/leo/loader/leo089.png" },
					{ texture = path.."/weapons/leo/loader/leo090.png" },
					{ texture = path.."/weapons/leo/loader/leo091.png" },
					{ texture = path.."/weapons/leo/loader/leo092.png" },
					{ texture = path.."/weapons/leo/loader/leo093.png" },
					{ texture = path.."/weapons/leo/loader/leo094.png" },
					{ texture = path.."/weapons/leo/loader/leo095.png" },
					{ texture = path.."/weapons/leo/loader/leo096.png" },
					{ texture = path.."/weapons/leo/loader/leo097.png" },
					{ texture = path.."/weapons/leo/loader/leo098.png" },
					{ texture = path.."/weapons/leo/loader/leo099.png" },
					{ texture = path.."/weapons/leo/loader/leo100.png" },
					{ texture = path.."/weapons/leo/loader/leo101.png" },
					{ texture = path.."/weapons/leo/loader/leo102.png" },
					{ texture = path.."/weapons/leo/loader/leo103.png" },
					{ texture = path.."/weapons/leo/loader/leo104.png" },
					{ texture = path.."/weapons/leo/loader/leo105.png" },
					{ texture = path.."/weapons/leo/loader/leo106.png" },
					{ texture = path.."/weapons/leo/loader/leo107.png" },
					{ texture = path.."/weapons/leo/loader/leo108.png" },
					{ texture = path.."/weapons/leo/loader/leo109.png"  , duration = 0.3 },
				--------------------------------------------------------------------------------	
					{ texture = path.."/weapons/leo/loader_empty/eleo000.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo001.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo002.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo003.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo004.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo005.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo006.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo007.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo008.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo009.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo010.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo011.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo012.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo013.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo014.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo015.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo016.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo017.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo018.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo019.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo020.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo021.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo022.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo023.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo024.png" },
					{ texture = path.."/weapons/leo/loader/leo064.png" },
					{ texture = path.."/weapons/leo/loader/leo065.png" },
					{ texture = path.."/weapons/leo/loader/leo066.png" },
					{ texture = path.."/weapons/leo/loader/leo067.png" },
					{ texture = path.."/weapons/leo/loader/leo068.png" },
					{ texture = path.."/weapons/leo/loader/leo069.png" },
					{ texture = path.."/weapons/leo/loader/leo070.png" },
					{ texture = path.."/weapons/leo/loader/leo071.png" },
					{ texture = path.."/weapons/leo/loader/leo072.png" },
					{ texture = path.."/weapons/leo/loader/leo073.png" },
					{ texture = path.."/weapons/leo/loader/leo074.png" },
					{ texture = path.."/weapons/leo/loader/leo075.png" },
					{ texture = path.."/weapons/leo/loader/leo076.png" },
					{ texture = path.."/weapons/leo/loader/leo077.png" },
					{ texture = path.."/weapons/leo/loader/leo078.png" },
					{ texture = path.."/weapons/leo/loader/leo079.png" },
					{ texture = path.."/weapons/leo/loader/leo080.png" },
					{ texture = path.."/weapons/leo/loader/leo081.png" },
					{ texture = path.."/weapons/leo/loader/leo082.png" },
					{ texture = path.."/weapons/leo/loader/leo083.png" },
					{ texture = path.."/weapons/leo/loader/leo084.png" },
					{ texture = path.."/weapons/leo/loader/leo085.png" },
					{ texture = path.."/weapons/leo/loader/leo086.png" },
					{ texture = path.."/weapons/leo/loader/leo087.png" },
					{ texture = path.."/weapons/leo/loader/leo088.png" },
					{ texture = path.."/weapons/leo/loader/leo089.png" },
					{ texture = path.."/weapons/leo/loader/leo090.png" },
					{ texture = path.."/weapons/leo/loader/leo091.png" },
					{ texture = path.."/weapons/leo/loader/leo092.png" },
					{ texture = path.."/weapons/leo/loader/leo093.png" },
					{ texture = path.."/weapons/leo/loader/leo094.png" },
					{ texture = path.."/weapons/leo/loader/leo095.png" },
					{ texture = path.."/weapons/leo/loader/leo096.png" },
					{ texture = path.."/weapons/leo/loader/leo097.png" },
					{ texture = path.."/weapons/leo/loader/leo098.png" },
					{ texture = path.."/weapons/leo/loader/leo099.png" },
					{ texture = path.."/weapons/leo/loader/leo100.png" },
					{ texture = path.."/weapons/leo/loader/leo101.png" },
					{ texture = path.."/weapons/leo/loader/leo102.png" },
					{ texture = path.."/weapons/leo/loader/leo103.png" },
					{ texture = path.."/weapons/leo/loader/leo104.png" },
					{ texture = path.."/weapons/leo/loader/leo105.png" },
					{ texture = path.."/weapons/leo/loader/leo106.png" },
					{ texture = path.."/weapons/leo/loader/leo107.png" },
					{ texture = path.."/weapons/leo/loader/leo108.png" },
					{ texture = path.."/weapons/leo/loader/leo109.png" , duration = 0.3  },
				--------------------------------------------------------------------------------
					{ texture = path.."/weapons/leo/loader_empty/eleo000.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo001.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo002.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo003.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo004.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo005.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo006.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo007.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo008.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo009.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo010.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo011.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo012.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo013.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo014.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo015.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo016.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo017.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo018.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo019.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo020.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo021.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo022.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo023.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo024.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo025.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo026.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo027.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo028.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo029.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo030.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo031.png" },
					{ texture = path.."/weapons/leo/loader_empty/eleo032.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},

}





dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter



Root =
{
	Name = "leo",
	Angle = 0,
	Pivot = { 0.0, -0.57 },
	PivotOffset = { 0, 0.5 },
	Sprite = "leo-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { -0.233, 0.0 },
			PivotOffset = { 0, 0 },
			Sprite = "leo-reload",
			UserData = 100,
		},
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.2, -0.16 },---spin harpoint    x(zhengxiang) . -y(fanxiang)
			PivotOffset = { 0.0, 0.0 },--pictre,x,y
			Sprite = "leo-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.8, -0.05},--x,y
					PivotOffset = { 0.0, 0 },
					Sprite = "leo-barrel",
					UserData = 100,

					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { -0.6, 0.0 },---bullets from   x,y
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
		StringId = "Weapon.leoHE", -- context menu display name
		Sprite = "leoHE",
		Projectile = "leoHE",
		MetalFireCost = 200,
		EnergyFireCost = 10000,
		Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
	}
	



