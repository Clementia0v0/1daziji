--- forts API ---
-- necessary to access script functions, plus basic functions, types and variables
dofile("scripts/forts.lua")
dofile(path.."/scripts/lib.lua")
dofile(path.."/scripts/tips.lua")
--dofile(path.."/scripts/orbitalstrike.lua")
--dofile(path.."/scripts/console.lua")
local config = {}
local debug = false
local rageplusdkg = 6
local rageplustpd = 10

local Gamemode = ""
data.registeredteams = {}

if debug then
	rageplusdkg = 100
	rageplustpd = 100
end
--------------------------------------------------------------

function rageswitch(on)--作战指令启用控件
	if on == true or on == "true" then
		EnableDevice("rage",true,1)
		EnableDevice("rage",true,2)
	end
	if on == false or on == "false" then
		EnableDevice("rage",false,1)
		EnableDevice("rage",false,2)
	end
end	


function PreMatchMode(tranteam) --注册队伍
	--Log("Onregistered")
	local nteam = tonumber(tranteam)
	if isainb(nteam,data.registeredteams) == false then
		table.insert(data.registeredteams,nteam)
	end
	--Log("registered")
end
function RegisterTeam()--上传队伍
	local teamId = GetLocalTeamId()
	Log("teamId"..tostring(teamId))
	if  teamId == -3 then
	else
		--SendScriptEvent("PreMatchMode",tostring(teamId),"script.lua",true)
		SendScriptEvent("PreMatchMode", [["]] .. tostring(teamId) .. [["]], "mods/2869755294/script.lua", true)
		SendScriptEvent("PreMatchMode", [["]] .. tostring(teamId) .. [["]],"", true)
		Log("Preregister")
	end	
end




function MatchMode()--分辨游戏模式，输出TDM/COP,初始化战斗指令数据
	--checktable(data.registeredteams)
	for k,v in pairs(data.registeredteams) do
		data.ragepoints[v] =0
		data.ragechoosed[v] = false
		data.ragemodeactivated[v] = false
		data.ragemodeselected[v] = "none"

		for i,j in pairs(data.registeredteams) do
			if v == j and k ~= i then
				Gamemode = "COP"
				return "COP"
			end
		end
		
	end
	Gamemode = "TDM"
	return "TDM"
end	


--------------------------------------------------------------
---Rage lists
local rage_6 = {"dzdeckgunAP38b","dzdeckgunAP3b","dzdeckgunAPHEV3b","dzdeckgunAP4b","dzdeckgunAP5b","dzdeckgunSAP3b","dzdeckgunHE38","dzdeckgunHE3","dzdeckgunHE4","dzdeckgunHE5","dzdeckgunEMP3"}
local rage_8 = {"dztouw","dzto"}
local rage_3 = {"dzdeckgunAP2","dzdeckgunHE2","dzdeckgunSAP2","g130HE","g130SAP"}
local rage_dzdkgs = {"dzdeckgun3","dzdeckgun43","dzdeckgun52","dzdeckgun384","dzdeckgun32","dzdeckgun34",}
--------------------------------------------------------------
local mpA= nil
local mpB = nil
local satEftId = nil
local scbpos = {Vec3(900,10,0),Vec3(840,10,0),Vec3(780,10,0),Vec3(720,10,0),Vec3(660,10,0),Vec3(600,10,0),Vec3(900,34.4,0),Vec3(840,34.4,0),Vec3(780,34.4,0),Vec3(720,34.4,0),Vec3(660,34.4,0),Vec3(600,34.4,0)}
local consumablespos = {Vec3(20,240,0),Vec3(60,240,0)}
local scblist = {}
local initdkgs = {"dzdeckgun11","dzdeckgun13","dzdeckgun2","dzdeckgun23","dzdeckgun3","dzdeckgun32","dzdeckgun11_secrl","dzdeckgun13_secrl","dzdeckgun2_secrl","dzdeckgun23_secrl","dzdeckgun34","dzdeckgun43","dzdeckgun384","dzdeckgun52","dzdeckgun3_secrl","dzdeckgun32_secrl",}
local dzdkgs = {"dzdeckgunAPb","dzdeckgunAP2b","dzdeckgunAP38b","dzdeckgunAP3b","dzdeckgunAPHEV3b","dzdeckgunAP4b","dzdeckgunAP5b","dzdeckgunSAP2b","dzdeckgunSAP3b","dzdeckgunSAPb","dzdeckgunHE","dzdeckgunHE2","dzdeckgunHE38","dzdeckgunHE3","dzdeckgunHE4","dzdeckgunHE5","dzdeckgunEMP","dzdeckgunEMP2","dzdeckgunEMP3","76"}
local scoreboard = {"crit","dbomb","dbomb_mine","frag","secondary_caliber","torpedo","bomb","main_caliber","citadel","rocket"}
local dztor={"nudztouw","nudzto","dzto","bcdztouw","bcdzto","dztouw","uuv2","uuv1"}-- 
local bombs = {"bomb","dzhevbomb","paveway","fab9000"}
local citadel = {"reactor","hualong","exbatt","cangku","workshop","factory","munitions","port","upgrade","armoury","barrel"} --计分板
local sbm = {"atkdzsubmine","dzsubmine","fldzsubmine"}
local crit = {"dzdeckgun1","dzdeckgun1m","dzdeckgun2","dzdeckgun3","dzdeckgun11","dzdeckgun13","dzdeckgun21","dzdeckgun23","dzdeckgun32","dzdeckgun43","dzdeckgun52","dzdeckgun157","dzelc","dzelch","dzto","dzto1","dzto2","dzto2r","dzto3","groundstation","hjcf","hjcfspace","kuangdun","lizi","lizia","lizib","mtl","plm1","plm2","sheng"}
local sig = {"u","d","l","r"}
local outlist = {"MFthrusterair"}
local loopfire = {"g130a","dzdeckgun1_sec","dzdeckgun2_sec","dzdeckgun11_sec","dzdeckgun13_sec","dzdeckgun23_sec"}

data.stDrawRage = false
data.ragepoints = --战斗指令进度 int
{
	[1]=0,
	[2]=0,
	[-1] = -1000000;
	[0]  = -1000000;
	[-3] = -1000000,
}	
local rage = {}
local rage_button = {}
data.ragemodeselected = --选择的战斗指令 默认“none”
{
	[1] ="none",
	[2] ="none",
	[-1] = "none",
	[-3] = "none",
} 
local ragemodepointed = "none"
data.ragechoosed = --是否选择战斗指令t/f
{
	[1] = false,
	[2] = false,
	[-1] = false,
	[-3] = false,
}	--ragechoosed
data.ragemodeactivated =  --战斗指令是否开启t/f
{
	[-1] = false,
	[1] = false,
	[2] = false,
	[-3] = false,
}






data.opf=0--核心时钟 
data.subind=0--水雷检测刷新指数
data.ind4 = 0 -- 每秒执行25次
data.tspeed1 =0--team 1 加速器能量计数
data.tspeed2 =0--team 2 加速器能量计数
data.lizibon1 =0--team 1 加速器启动指数
data.lizibon2 =0--team 2 加速器启动指数
data.lizibid1 =0--team 1 加速器释放单元id
data.lizibid2 =0--team 2 加速器释放单元id
data.dzsubmine1={}--team 1 水雷id
data.dzsubmine2={}--team 2 水雷id
data.fldzsubmine1={}--team 1 悬浮水雷id
data.fldzsubmine2={}--team 2 悬浮水雷id
data.desprjid={}	--摧毁弹射物id
data.comableAAid={}--全面戒备防空单位id
data.dzmgcom={}--全面戒备雷达id
data.uuv2id ={}
data.uuv2fired={}
data.lizib1tar = nil
data.lizib2tar = nil
data.liziowner1 = 0
data.liziowner2 = 0
data.solaron1 = false
data.solaron2 = false
data.teams = {1,2,101,201,301,401,102,202,302,402}
data.GSOn = {[1] = false,[2] = false,}--基站记录
data.lfId = {} --循环开火武器id
data.lfct = {}--循环开火武器当前轮数
data.kdfired = {}

data.satId = {}
data.dctcount = {}
data.dztos={"nudztouw","bcdztouw","dzto","uuv2","uuv1","dztoplup"}--
data.comableAA={"hdzmg","shotgun","g130","flak","g130beta","dzmg"}
local BCHHdisabled = {"bchy","bcdzto"}

local recordedProjectileList = {"dzsubmine","fldzsubmine","atkdzsubmine","uuv2","uuvbomb","cannon20mm","dzshield"}
local recordedDeviceList = {"lizib","sat","emgsheng","dzshield"}
local overWLDesPrjlist = {"atkdzsubmine","uuvbomb","uuv2"}
data.recordedProjectileId = {}	--记录的弹射物id
data.recordedDeviceId = {}	--记录的装置id
data.playerSelectedWDId ={}

data.shieldToDevice = {}--链接盾弹射物与其装置 k装置id v盾弹射物id
data.shieldHpToDevice = {}--连接盾的血量显示control与其装置，k装置id，v control id
data.shieldRecoverRate = {}--盾的恢复速度：装置id=》恢复速度
local defaultShieldRecoverRate = 10
local regenPunishRate = 0.3


data.magtogun = {}--链接武器与弹药库，形如t[武器id] = 弹药库id
local HLcase = {} --显示放置范围的武器的id
local HLCauseDevice = {}
local localSelectedDeviceIdHUD = 0
local localSelectedStructureId = 0



local tiplist = {"ap","aa","aauw","tech-aa","tech-deckgun","tech-dzto","tech-sat"}
local tippage = 1
local helperpos = Vec3(0,120,-101)
local tippos = Vec3(110,120,-101)
local tipcontrol = {"Tip-key_arrowleft-icon","Tip-key_arrowright-icon","Tip-key_close-icon","Tip-helper-icon"}

function linkShieldToDevice(deviceId,prjId,add,regen) -- 将盾弹射物和装置连接，空参数填0
	if GetDeviceType(deviceId) == "dzshield" or GetNodeProjectileSaveName(prjId) == "dzshield" then
		if add then
			--Log("addshield")
			local pos = GetDevicePosition(deviceId)
			local shieldId = dlc2_CreateProjectile("dzshield","dzto",GetDeviceTeamIdActual(deviceId),Vec3(pos.x,pos.y-200,pos.z),Vec3(0,0,0),3500)
			dlc3_AttachProjectileToDevice(prjId, deviceId)
			AddTextControl("HUD", tostring(deviceId), "0%", ANCHOR_TOP_LEFT, GetDevicePosition(deviceId), false, "Normal")
			ShowControl("HUD",tostring(deviceId),true)
			data.shieldToDevice[deviceId] = shieldId
			data.shieldRecoverRate[deviceId] = 10
			if regen then
				local hp = GetNodeProjectileHitPoints(shieldId)
				SetProjectileAntiAirHitpoints(shieldId, regenPunishRate*hp)
			end
		else -- 注销护盾
			if deviceId ~= 0 then
				--Log("shield device lost")
				DeleteControl("HUD", tostring(deviceId))
				if data.shieldToDevice[deviceId] then
					DestroyProjectile(data.shieldToDevice[deviceId])
				end
				data.shieldToDevice[deviceId] = nil
				data.shieldRecoverRate[deviceId] = nil
			else
				for k,v in pairs(data.shieldToDevice) do 
					if v == prjId then 
						data.shieldToDevice[k] = nil 
						data.shieldRecoverRate[k] = nil
						DeleteControl("HUD",tostring(k))
						ScheduleCall(40,shieldRegen,k)
					end 
				end	
				--Log("shield broken")
			end
		end
	end
end

function shieldRegen(deviceId)
	if DeviceExists(deviceId) then
		linkShieldToDevice(deviceId,0,true,true)
		Log("Regen")
	end
end









function linkMagToGun(deviceId,saveName,add) 
	for k,v in pairs(config.CombinedRequirement) do--k弹药库savename，v武器savename
		if isainb(saveName,v) then --是使用弹药库的武器
			local offsetbelow = config.CombinedRequirement[k].Properties.offsetbelow
			local range = config.CombinedRequirement[k].Properties.range
			if add then
				
				table.insert(data.magtogun[k],deviceId,0)
				table.insert(HLcase,deviceId)
				if data.recordedDeviceId[k] then
					for i,j in pairs(data.recordedDeviceId[k])  do --n范围内同结构上弹药库
						local magpos = GetDevicePosition(j)
						local wpnpos = GetDevicePosition(deviceId)
						local detpos = Vec3(wpnpos.x,wpnpos.y+offsetbelow,0)
						
						if IsInSameStr(deviceId,j) and IsAInRangeB(detpos,magpos,range,"SQR") then
							if GetDeviceTeamIdActual(deviceId) == GetDeviceTeamIdActual(j) then
								--Log("mag in range")
								data.magtogun[k][deviceId] = j
							end
						end
					end
				end
			end --记录需要弹药库的武器的id
			if not add then 
				data.magtogun[k][deviceId] = nil 
				table.remove(HLcase,deviceId)
				SetWeaponSelectedAmmo(deviceId,"dzempty")
			end

			local wpnpos = GetDevicePosition(deviceId)
			local detpos = Vec3(wpnpos.x,wpnpos.y+offsetbelow,0)
			
			--checktable(data.magtogun)
		end

		if saveName == k then --是弹药库,deviceId 为弹药库的
			local offsetbelow = config.CombinedRequirement[k].Properties.offsetbelow
			local range = config.CombinedRequirement[k].Properties.range
			for i,j in pairs(data.magtogun[k]) do-- i所有武器id，j对应弹药库id
				if add then
					local magpos = GetDevicePosition(deviceId)
					local wpnpos = GetDevicePosition(i)
					local detpos = Vec3(wpnpos.x,wpnpos.y+offsetbelow,0)
					

					if IsAInRangeB(detpos,magpos,range,"SQR") and not config.SupportMulti[saveName] then
						data.magtogun[k][i] = deviceId
						
						--Log("add magl"..tostring(deviceId).." to weapon "..tostring(i).."--LargeMag")
						--checktable(data.magtogun)
					end
					if IsAInRangeB(magpos,wpnpos,range,"SQR") and config.SupportMulti[k] then
						data.magtogun[k][i] = deviceId
						
						--Log("add magl"..tostring(deviceId).." to weapon "..tostring(i).."--SmallMag")
						--checktable(data.magtogun)
					end
				else --弹药库删除
					if not config.SupportMulti[saveName] then -- 唯一弹药库
						if data.magtogun[k][i] == deviceId then
							data.magtogun[k][i] = 0 -- 让武器没有弹药库
						end
					else	--共享弹药库
						if data.magtogun[k][i] == deviceId then
							for m,n in pairs(data.recordedDeviceId[k]) do --n范围内同结构上弹药库
								local magpos = GetDevicePosition(n)
								local wpnpos = GetDevicePosition(deviceId)
								if IsInSameStr(deviceId,n) and IsAInRangeB(magpos,wpnpos,range,"SQR") then
									data.magtogun[k][i] = n
								else
									data.magtogun[k][i] = 0 -- 让武器没有弹药库
								end
							end
						end
					end
					--checktable(data.magtogun)
				end	
				if not DeviceExists(i) then
					data.magtogun[k][i] = nil
				end
			end
		end
	end
end


function OnContextButtonDevice(script, name, deviceTeamId, deviceId, saveName)


end



local loopfirecap = --循环开火武器单次轮数
{
}
local loopdev = --循环开火武发射间隔
{
}
local rage_bg = 
	{
		["mgreload"] = path.."/scripts/media/ragemodes/rageMode_main_gun_reload_consumables_reload_preview.png",
		["hepenetrarion"] =  path.."/scripts/media/ragemodes/rageMode_he_penetration_boost_preview.png",
		["mgdistaccuracy"] =  path.."/scripts/media/ragemodes/rageMode_main_gun_dist_accuracy_preview.png",
	}

local ragecd = 
	{
		["mgreload"] = 16,
		["hepenetrarion"] = 30,
		["mgdistaccuracy"] = 60,
	}

for k,v in pairs(sig) do
	table.insert(crit,"MFthruster1"..v)
	table.insert(crit,"MFthruster2"..v)
	table.insert(crit,"MFthruster1_inv"..v)
	table.insert(crit,"MFthruster2_inv"..v)
end
local scoreboard_point = {}
function scbQuere(ribbon) -- 显示计分项
	for i=1,12,1 do
		if scblist[i] == nil then
			scblist[i] = ribbon
			SetControlAbsolutePos("HUD",ribbon,scbpos[i])
			SetControlAbsolutePos("HUD",ribbon.."_point",Vec3(scbpos[i].x+48,scbpos[i].y+15.4,-102))
			ShowControl("HUD",ribbon,true)
			ShowControl("HUD",ribbon.."_point",true)
			Log(ribbon)
			return 0
		end 
	end
end
function scbAdd(ribbon) -- 计分板加分
	scoreboard_point[ribbon] = scoreboard_point[ribbon] +1
	SetControlText("HUD",ribbon.."_point","x"..tostring(scoreboard_point[ribbon]))
end





--------------------------------------------------------------


function OnKey(key, down)
	local teamId = GetLocalTeamId()
    if (down == true) then
       
		if (key == "f") then
			if data.ragemodeselected[teamId] ~= "none" then
				
				if data.ragemodeactivated[teamId] == false and data.ragepoints[teamId] >= 100 then
					if data.ragemodeselected[teamId] == "mgdistaccuracy" then
						SendScriptEvent("RageModeActive",[["]]..data.ragemodeselected[teamId]..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]].."0"..[["]]..','..[["]].."0"..[["]]..','..[["]].."0"..[["]]..','..[["]].."0"..[["]],"",true)
						--SendScriptEvent("RageModeActive",[["]]..data.ragemodeselected[teamId]..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]].."0"..[["]]..','..[["]].."0"..[["]]..','..[["]].."0"..[["]]..','..[["]].."0"..[["]],"mods/2859755294/script.lua",true)
					
					end
						Log([["]]..data.ragemodeselected[teamId]..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]].."-1"..[["]]..','..[["]].."0"..[["]])
						SendScriptEvent("RageCool",[["]]..data.ragemodeselected[teamId]..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]].."-1"..[["]]..','..[["]].."0"..[["]],"",true)		
						--SendScriptEvent("RageCool",[["]]..data.ragemodeselected[teamId]..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]].."-1"..[["]]..','..[["]].."0"..[["]],"mods/2869755294/script.lua",true)	
				end
			end
		end
    end
end


--------------------

---------------------------------------------------------


function Init() --初始化
	ControlInit(tiplist,helperpos,tippos)
	config = DeepCopy(GetProjectileValue("config", 1, COMMANDER_INACTIVE, "Config", nil))
	for k,v in pairs(config.CombinedRequirement) do
		for i,j in pairs(config.CombinedRequirement[k])do
			table.insert(recordedDeviceList,j)
			
		end
		table.insert(recordedDeviceList,k)
		table.insert(HLCauseDevice,k)
		data.magtogun[k] = {}--
	end
	for k,v in pairs(recordedDeviceList) do
		local i = tostring(v)
		data.recordedDeviceId[i] = {}
	end
	for k,v in pairs(recordedProjectileList) do
		data.recordedProjectileId[v] = {}
	end
	--checktable(data.recordedDeviceId)
	AddTextControl("HUD","oprec","",ANCHOR_TOP_LEFT,Vec3(60,100,0),false,"Normal")
	AddSpriteControl("HUD","dmg",path.."/scripts/media/ribbons/dmg.png",ANCHOR_TOP_LEFT,Vec3(20,20,1),Vec3(960,10,-101),false)
	AddTextControl("HUD","Damage","计分板awa",ANCHOR_TOP_LEFT,Vec3(980,14,-101),false,"Normal")
	--AddButtonControl("HUD","satFire",path.."/scripts/media/aim.png",ANCHOR_TOP_LEFT,Vec3(40,40,1),Vec3(10,240,-101),"normal")
	AddTextControl("HUD","satfailed","发射失败",ANCHOR_TOP_LEFT,Vec3(10,220,-101),false,"Normal")
	--ribbons勋带
	
	--consumable消耗品
	AddSpriteControl("HUD","CrashCrew",path.."/scripts/media/consumables/consumable_PCY009_CrashCrew_Limited_Premium.png",ANCHOR_TOP_LEFT,Vec3(40,40,1),consumablespos[1],false)
	AddSpriteControl("HUD","ADD",path.."/scripts/media/consumables/consumable_PCY011_AirDefenseDispPremium.png",ANCHOR_TOP_LEFT,Vec3(40,40,1),consumablespos[2],false)
	AddTextControl("HUD","CrashCrew_point","5",ANCHOR_TOP_LEFT,consumablespos[1],false,"Normal")
	AddTextControl("HUD","ADD_point","3",ANCHOR_TOP_LEFT,consumablespos[2],false,"Normal")
	if data.dctcount[teamId] ~= nil then
		if data.dctcount[teamId] >=6 then
			ShowControl("HUD","CrashCrew_point",false)
			ShowControl("HUD","ADD_point",false)
		end
		if data.dzmgcom >=3 then
			SetControlSprite("CrashCrew",path.."/scripts/media/consumables/consumable_PCY009_CrashCrew_Limited_Premium_empty.png" )
			SetControlSprite("ADD",path.."/scripts/media/consumables/consumable_PCY011_AirDefenseDispPremium_empty.png" )
		end
	end	
	for k,v in pairs(scoreboard) do
		AddTextControl("HUD",v.."_point","0",ANCHOR_TOP_LEFT,Vec3(0,0,0),false,"Normal")
		scoreboard_point[v] = 0
	end
	for k,v in pairs(scoreboard) do 
		ShowControl("HUD",v,false)
		ShowControl("HUD",v.."_point",false)
	end	
	---------------------
	ShowControl("HUD","CrashCrew",true)
	ShowControl("HUD","CrashCrew_point",true)
	ShowControl("HUD","AAD",true)
	ShowControl("HUD","AAD_point",true)
	ShowControl("HUD","oprec",true)
	ShowControl("HUD","satFire",true)
	ShowControl("HUD","satfailed",false)
	-----------------------------
	
	satEnable(false,1)
	satEnable(false,2)
	for k,v in pairs(data.teams) do
		data.dzmgcom[v] = 0
		data.dctcount[v] = 0
	end

	
end

function Load(gameStart)
	
	Init()
	
	if Language() == "Chinese" then --加载提示文本
		AddStrings(path .. "/string/Chinese/tips_strings.lua")
	else
		AddStrings(path .. "/string/English/tips_strings.lua")
	end
	--local result = StartStream(path.."/music/1.flac", 0.3)
	--local result = StartMusic(path.."/music/1.flac", true, false)
	
	data.bcon = ModActive("2924814105")
	if data.bcon then
		EnableDeviceUpgrade("ammo_nodzto","ammo_bcdzto",1,true)
		EnableDeviceUpgrade("ammo_nodzto","ammo_bcdzto",2,true)
	end
	
	
end

function OnRestart()
    --Log("Hello from OnRestart")
end


--------------------------------------------------------------------------------------------
function OnControlActivated(name, code, doubleClick)
	if isainb(name,tipcontrol) then
		tippage = AOBtip(name,tippage,tiplist)
	end
	local teamId = GetLocalTeamId()
	if name == "satFire" then
		if data.satId[teamId] == nil then
			ShowControl("HUD","satfailed",true)
			ScheduleCall(3,ShowControl,"HUD","satfailed",false)
		elseif data.satId[teamId] ~=nil and mpA~= nil and mpB ~= nil then
			local teamId = GetLocalTeamId()
			SendScriptEvent("firesat",[["]]..tostring(teamId)..[["]]..","..[["]]..tostring(mpA)..[["]]..","..[["]]..tostring(mpB)..[["]],"",true)
			--SendScriptEvent("firesat",[["]]..tostring(teamId)..[["]]..","..[["]]..tostring(mpA)..[["]]..","..[["]]..tostring(mpB)..[["]],"mods/2869755294/script.lua",true)
		end	
	end
	
	if isainb(name,rage_button) then--显示rage mod指针
		if ragemodepointed == "none" and ragemodepointed == "none" then
			AddSpriteControl("HUD","rage_pointer",path.."/scripts/media/pointer.png",ANCHOR_TOP_LEFT,Vec3(10,10,1),GetControlAbsolutePos("HUD",name),false)
			ShowControl("HUD","rage_pointer",true)
		end
		if name == ragemodepointed and data.ragemodeselected[teamId] == "none" then				--确定rage模式
			SendScriptEvent("InitRageUI",[["]]..name..[["]]..","..[["]].."true"..[["]]..","..[["]]..tostring(teamId)..[["]]..","..[["]]..data.ragemodeselected[teamId]..[["]],"",true)
		else	
			local btpos = GetControlAbsolutePos("HUD",name)
			local pointerpos = Vec3(btpos.x+10,btpos.y+30,btpos.z)
			SetControlAbsolutePos("HUD","rage_pointer",pointerpos)
			PanelToWord(name)
			ragemodepointed = name
		end
	end
end

--------------------------------------------------------------------------------------------
function OnDeviceCompleted(teamId, deviceId, saveName, nodeA, nodeB, t, upgradedId)
	linkShieldToDevice(deviceId,0,true,false)




	linkMagToGun(deviceId,saveName,true)
	if isainb(saveName,initdkgs) then
		SetWeaponReloadTime(deviceId, 0)
	end
	RecordDevice(deviceId,true)
	

	if saveName == "rage" and data.ragechoosed[teamId] == false and teamId == GetLocalTeamId() then
		data.ragechoosed[teamId] = true
		RageModePanel(Vec3(20,320,0),true)
	end
	


	if	GetDeviceTeamId(deviceId) == 1 and GetDeviceType(deviceId) == "lizib" then
		data.lizibid1=deviceId
		data.lizibon1 =1
		--Log("lizib1 on")
	end	
	if saveName == "sat" then
		data.satId[teamId] =deviceId
	end
	if	GetDeviceTeamId(deviceId) == 2 and GetDeviceType(deviceId) == "lizib" then
		data.lizibid2=deviceId
		data.lizibon2 =1
		--Log("lizib2 on")
	end
	if isainb(saveName,data.comableAA) then
		data.comableAAid[deviceId] = deviceId
		--Log("added")
	end
	if isainb(saveName,loopfire) then
		data.lfId[deviceId] = deviceId
	end	


	if saveName == "lizi" then
		if teamId%100 ==1 and data.liziowner1 ==0 then
			data.liziowner1 = teamId
			Log("team1 lizi detected")
		end
		if teamId%100 ==2 and data.liziowner2 ==0 then
			data.liziowner2 = teamId
		end
		ScheduleCall(2,checkliziteam,teamId,deviceId)
	end
	if	GetDeviceType(deviceId) == "groundstation" then
		local sideId = teamId%100
		data.GSOn[sideId] = true
	end
	if saveName == "dct" then
		data.dctcount[teamId] = data.dctcount[teamId] +1
		if teamId == GetLocalTeamId() then
			SetControlText("HUD","CrashCrew_point",tostring(5-data.dctcount[teamId]))
		end	
		if data.dctcount[teamId] ==5 then
			ShowControl("HUD","CrashCrew_point",false)
			SetControlSprite("CrashCrew",path.."/scripts/media/consumables/consumable_PCY009_CrashCrew_Limited_Premium_empty.png" )
		end
		if data.dctcount[teamId] >=6 then
			checkkill(deviceId)
		else	
			ScheduleCall(60,checkkill,deviceId)
		end
	end
	if saveName =="dzmgcom" then
		data.dzmgcom[teamId] = data.dzmgcom[teamId] +1
		if teamId == GetLocalTeamId() then
			SetControlText("HUD","ADD_point",tostring(3-data.dzmgcom[teamId]))
		end
		if data.dzmgcom[teamId] ==3 then
			ShowControl("HUD","ADD_point",false)
			SetControlSprite("ADD",path.."/scripts/media/consumables/consumable_PCY011_AirDefenseDispPremium_empty.png" )
		end
		if  data.dzmgcom[teamId] >= 4 then
			checkkill(deviceId)
			--Log("ERROR:AntiAir guncrew on full alert has run out of usage")
		else
			ScheduleCall(100,checkkill,deviceId)
		end
	end
end

function OnDeviceDeleted(teamId, deviceId, saveName, nodeA, nodeB, t, upgradedId)
	linkMagToGun(deviceId,saveName,false)
	linkShieldToDevice(deviceId,0,false,false)
	RecordDevice(deviceId,false)

	if	GetDeviceTeamId(deviceId) == 1 and GetDeviceType(deviceId) == "lizib" then
		data.lizibon1=0
		data.lizibid1=0
		--Log("lizib1 off")
	end	
	
	if	GetDeviceTeamId(deviceId) == 2 and GetDeviceType(deviceId) == "lizib" then
		data.lizibon2=0
		data.lizibid2=0
		--Log("lizib2 off")
	end
	if	GetDeviceType(deviceId) == "groundstation" then
		local sideId = teamId%100
		data.GSOn[sideId] = false
	end
	if isainb(saveName,data.comableAA) then
		table.remove(data.comableAAid,deviceId)
	end
	if isainb(SaveName,loopfire) then
		data.lfId[deviceId] = nil
	end	
end
function OnDeviceDestroyed(teamId, deviceId, saveName, nodeA, nodeB, t)
	linkMagToGun(deviceId,saveName,false)
	linkShieldToDevice(deviceId,0,false,false)
	RecordDevice(deviceId,false)


	if	GetDeviceTeamId(deviceId) == 1 and GetDeviceType(deviceId) == "lizib" then
		data.lizibon1=0
		data.lizibid1=0
		--Log("lizib1 off")
	end	
	
	if	GetDeviceTeamId(deviceId) == 2 and GetDeviceType(deviceId) == "lizib" then
		data.lizibon2=0
		data.lizibid2=0
		--Log("lizib2 off")
	end
	if	GetDeviceType(deviceId) == "groundstation" then
		local sideId = teamId%100
		Log("ERROR:solar weapon disabled,groundstation lost")
		data.GSOn[sideId] = false
	end
	if isainb(saveName,data.comableAA) then
		table.remove(data.comableAAid,deviceId)
	end
	if isainb(SaveName,loopfire) then
		data.lfId[deviceId] = nil
	end	
	if saveName == "sat" then
		data.satId[teamId] =nil
	end
end
function OnDeviceMoved(teamId, deviceId, temporaryDeviceId, saveName)
	if	GetDeviceTeamId(deviceId) == 1 and GetDeviceType(deviceId) == "lizib" then
		data.lizibid1=deviceId
		data.lizibon1 =1
		--Log("lizib1 on")
	end	
	
	if	GetDeviceTeamId(deviceId) == 2 and GetDeviceType(deviceId) == "lizib" then
		data.lizibid2=deviceId
		data.lizibon2 =1
		--Log("lizib2 on")
	end
	if isainb(saveName,data.comableAA) then
		table.insert(data.comableAAid,deviceId)
	end
	
end
function OnDeviceCreated(teamId, deviceId, saveName, nodeA, nodeB, t, upgradedId)
	if upgradedId ~= 0 then
		RecordDevice(deviceId,true)
		RecordDevice(upgradedId,false)
		--linkMagToGun(deviceId,GetDeviceType(deviceId),true)
		--linkMagToGun(upgradedId,GetDeviceType(upgradedId),false)
	end
end

function OnProjectileDestroyed(nodeId, teamId, saveName, structureIdHit, destroyType)
	linkShieldToDevice(0,nodeId,false,false)
	if isainb(saveName,recordedProjectileList) then
		for k,v in pairs(data.recordedProjectileId[saveName]) do
			if v == nodeId then
				data.recordedProjectileId[saveName][k] = nil
				--checktable(data.recordedProjectileId[saveName])
			end
		end
	end
	
	if saveName == "dzsubmine"  then
		if teamId%100 ==1 then
		table.remove(data.dzsubmine1,nodeId)
		end
		if teamId%100 ==2 then
		table.remove(data.dzsubmine2,nodeId)
		end
		--Log("logout")
	end
	if saveName == "fldzsubmine"  then
		if teamId%100 ==1 then
		table.remove(data.fldzsubmine1,nodeId)
		end
		if teamId%100 ==2 then
		table.remove(data.fldzsubmine2,nodeId)
		end
		--Log("logout")
	end
	if saveName == "atkdzsubmine" or saveName == "uuv2" or saveName == "uuvbomb" then
		table.remove(data.desprjid,nodeId)
		--Log("logout")
	end
	if isainb(saveName,outlist) == false then
		if structureIdHit ~= nil and GetStructureTeam(structureIdHit)%100 ~= teamId %100 and GetLocalTeamId() ~= -3 then
			if destroyType == DESTROYTYPE_HITSTRUCTURE or destroyType == DESTROYTYPE_HITDEVICE then
				if isainb(saveName,dzdkgs) then
					scbAdd("main_caliber")
				end
				if isainb(saveName,dztor) then
					scbAdd("torpedo")
				end
				if saveName == "g130HE" or saveName == "g130SAPb" then
					scbAdd("secondary_caliber")
				end
				if isainb(saveName,bombs) then
					scbAdd("bomb")
				end
				if isainb(saveName,sbm) then
					scbAdd("dbomb_mine")
				end
				if saveName == "dzcannonuw"  then
					scbAdd("dbomb")
				end
				if saveName == "sbrc" then
					scbAdd("rocket")
				end
				
					--Log("BEFORE:"..data.ragemodeselected[teamId]..tostring(data.ragepoints[teamId]))
					
					if isainb(saveName,rage_6) and data.ragemodeselected[teamId] ~= "none" and data.ragemodeactivated[teamId] == false then
						if data.ragepoints[teamId] <100 then
							data.ragepoints[teamId] = data.ragepoints[teamId]+rageplusdkg
							if data.ragepoints[teamId] >100 then
								data.ragepoints[teamId] = 100
							end
							
						end
						--Log("AFTER:"..data.ragemodeselected[teamId]..tostring(data.ragepoints[teamId]))
					end

					if isainb(saveName,rage_8) and data.ragemodeselected[teamId] ~= "none" and data.ragemodeactivated[teamId] == false then
						if data.ragepoints[teamId] <100 then
							data.ragepoints[teamId] = data.ragepoints[teamId]+rageplustpd
							if data.ragepoints[teamId] >100 then
								data.ragepoints[teamId] = 100
							end
							
						end
					end
				if isainb(saveName,rage_3) and data.ragemodeselected[teamId] ~= "none" and data.ragemodeactivated[teamId] == false then
					if data.ragepoints[teamId] <100 then
						data.ragepoints[teamId] = data.ragepoints[teamId]+3
						if data.ragepoints[teamId] >100 then
							data.ragepoints[teamId] = 100
						end
					end
				end
			end
		end	
	end
end
function OnGroupMemberSelected(deviceId)
	for k,v in pairs(config.CombinedRequirement) do
		local offsetbelow = config.CombinedRequirement[k].Properties.offsetbelow
		local range = config.CombinedRequirement[k].Properties.range
		local wpnpos = GetDevicePosition(deviceId)
		local drawpos = Vec3(wpnpos.x,wpnpos.y+offsetbelow,0)
		if data.magtogun[k][deviceId] == 0 then 
			SendScriptEvent("RegChosen",[["]]..tostring(deviceId)..[["]]..','..[["]]..tostring(1)..[["]],"",true)
			DrawSquare(drawpos,range)
		end
	end
end
function OnGroupMemberDeselected(deviceId)
	for k,v in pairs(config.CombinedRequirement) do
		if data.magtogun[k][deviceId] == 0 then 
			SendScriptEvent("RegChosen",[["]]..tostring(deviceId)..[["]]..','..[["]]..tostring(0)..[["]],"",true)
		end
	end
end
function RegChosen(pdeviceId,preg)
	local deviceId = tonumber(pdeviceId)
	local reg = tonumber(preg)
	if reg ==1 then
		for k,v in pairs(config.CombinedRequirement) do
			if isainb(GetDeviceType(deviceId),v) then
				table.insert(data.playerSelectedWDId,deviceId)
				--checktable(data.playerSelectedWDId)
			end
		end
	end
	if reg == 0 then
		for k,v in pairs(config.CombinedRequirement) do
			if isainb(GetDeviceType(deviceId),v) then
				table.remove(data.playerSelectedWDId,deviceId)
				--checktable(data.playerSelectedWDId)
			end
		end
	end
end
--检测释放单元
function RecordDevice(deviceId,record)--记录装置，装置id，是否记录（false为清除）
	--Log("Id:"..tostring(deviceId).." detected")
	local saveName = GetDeviceType(deviceId)
	if isainb(saveName,recordedDeviceList)  then
		if record then
			table.insert(data.recordedDeviceId[saveName],deviceId)
			--Log("record "..saveName.." in Id:"..tostring(deviceId))
		else
			table.remove(data.recordedDeviceId[saveName],deviceId)
		end
		--checktable(data.recordedDeviceId[saveName])
	end
end
-----------------------------------------------------------------------\
function Update(frame)

	if frame==50 then
        RegisterTeam()  
		for i = 1,2,1 do
			local wpncnt = GetDeviceCountSide(i)
			for j=0,wpncnt,1 do

				local deviceId = GetDeviceId(i,j)
				local saveName = GetDeviceType(deviceId)
				if isainb(saveName,recordedDeviceList) then
					RecordDevice(deviceId,true)
				end
				linkMagToGun(deviceId,saveName,true)
				
			end
		end
    end
	if frame == 150 then
		
		MatchMode()
		Log("registered teams count : "..tostring(#data.registeredteams))
		--checktable(data.registeredteams)
		Log("Welcome from Typewriter's mod os")
		Log("We are loading to a >>"..Gamemode.."<< game")
		Log("Find what you need in discribtions")
		Log("We wish you a good day...")
		data.stDrawRage = true

		--checktable(config)
		
		--checktable(data.recordedDeviceId)
	end


	data.opf=data.opf+1
	if data.opf>=FrameRate/100 then
		data.opf =0
		data.subind=data.subind+1 
	end
	if data.subind>20 then
		data.subind =0
	end
		
		
		
	-------------------------
	if data.tspeed1<4 and data.lizibon1 ==1 then
		
		EMPDevice(data.lizibid1, 0.2)
		--Log("Side 1 Firing program failed")
	end
	if data.tspeed2<4 and data.lizibon2 ==1 then
		EMPDevice(data.lizibid2, 0.2)
		--Log("Side 2Firing program failed")
	end

	if data.subind == 1 then
	
		for i,j in pairs(data.playerSelectedWDId) do	
			for k,v in pairs(config.CombinedRequirement) do
				local saveName = GetDeviceType(j)
				if isainb(saveName,v) then
					if data.magtogun[k][j] == 0 then
						EMPDevice(j,2.5)
						SetWeaponSelectedAmmo(j,"dzempty")
						linkMagToGun(j,saveName,true)
					end
				end
			end
		end


		satEnable(data.GSOn[1],1)
		satEnable(data.GSOn[2],2)
		for k,v in pairs(data.shieldToDevice) do
			local shieldhp = GetNodeProjectileHitPoints(v)
			if  shieldhp < config.ShieldMaxHP then
				local nhp = shieldhp + data.shieldRecoverRate[k]
				SetProjectileAntiAirHitpoints(v, nhp)
				
				--Log(tostring(v).."hp"..tostring(nhp))
			end
			dlc3_AttachProjectileToDevice(v, k)
		end
		
		if data.recordedDeviceId["emgsheng"] ~= nil then
			for k,v in pairs(data.recordedDeviceId["emgsheng"]) do
				if not DeviceExists(v) then
					data.recordedDeviceId["emgsheng"][k] = nil
				end
				if DeviceExists(v) and GetDeviceHitpoints(v) > 40 then
					ApplyDamageToDevice(v, 10)
				end
			end
		end
		if data.recordedProjectileId["dzsubmine"] then
			for k,v in ipairs(data.recordedProjectileId["dzsubmine"]) do
				local possub = NodePosition(v)
				local wtl = GetWaterLevel(possub.x)
				if possub.y >= wtl +1500 then
					local result = dlc2_CreateProjectile("fldzsubmine","dzsubmine",NodeTeam(v),possub,Vec3(0,0,0),300)
					DestroyProjectile(v)
					--Log("submine floating t1")
				end	
			end
		end
		if data.recordedProjectileId["fldzsubmine"] then
			for k,v in ipairs(data.recordedProjectileId["fldzsubmine"]) do
				local rayp1 = NodePosition(v)
				local result = CastRay(rayp1, Vec3(rayp1.x,GetWaterLevel(rayp1.x),rayp1.z),RAY_EXCLUDE_NEUTRAL,FIELD_DISRUPT_BUILDING)
				local prjteam = NodeTeam(v)
				if result == RAY_HIT_STRUCTURE then
					
						if GetRayHitTeamId() ~= 0 then
							if GetRayHitTeamId()%MAX_SIDES ~= prjteam%MAX_SIDES  then
								ScheduleCall(0,submineatk,v,prjteam)
							end
						end
					
				end	
			end
		end
		for i,j in ipairs(overWLDesPrjlist) do
			if data.recordedProjectileId[j] then
				for k,v in pairs(data.recordedProjectileId[j])do
					local posatk = NodePosition(v)
					local wtl = GetWaterLevel(posatk.x)
							if posatk.y <wtl+100 then
								DestroyProjectile(v)
							end
				end
			end	
		end
		if data.recordedProjectileId["uuv2"] then	
			for k,v in ipairs(data.recordedProjectileId["uuv2"]) do
				local rayp1 = NodePosition(v)
				local result = CastRay(rayp1, Vec3(rayp1.x,GetWaterLevel(rayp1.x)-800,rayp1.z),RAY_EXCLUDE_NEUTRAL,FIELD_DISRUPT_BUILDING)
				local prjteam = NodeTeam(v)
					
						
					
				if result == RAY_HIT_STRUCTURE then
						
						if GetRayHitTeamId()%100 ~= prjteam%100 then
							
							ScheduleCall(0.1,uuv2atk,v,prjteam)
						end
					
				end	
			end
		end
	end
		
		
	
end
--禁用释放单元
----------------------------------------------------------------------




function OnWeaponFired(teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)
	local projectileNodeSaveName = GetNodeProjectileSaveName(projectileNodeId)
	if isainb(projectileNodeSaveName,recordedProjectileList) then
		if data.recordedProjectileId[projectileNodeSaveName] == nil then
			data.recordedProjectileId[projectileNodeSaveName] = {}
		end
		table.insert(data.recordedProjectileId[projectileNodeSaveName],projectileNodeId)
	end
	--[[for k,v in pairs(ppcrew) do
		if saveName == k then 
			data.renderingcrew[projectileNodeId] = 
			{
				crewId = projectileNodeId,
				crewMaxHP =  GetProjectileAntiAirHitpoints(projectileNodeId),
				crewLifeSpan = 0,
				crewMenEffId = {}
			}
			
			ScheduleCall(3,RenderCrew,projectileNodeId)
			
		end
	end	]]--


	if GetNodeProjectileSaveName(projectileNodeId) == "mark_orbitalstrike" then
        data.obMarkPosFrom[projectileNodeId] = GetDevicePosition(weaponId)
		Log(tostring( data.obMarkPosFrom[projectileNodeId]))
    end
	if data.ragemodeselected[teamId] ~="none" and data.ragemodeactivated[teamId] == true and teamId == GetLocalTeamId() then
		if data.ragemodeselected[teamId] == "mgreload" then
			SendScriptEvent("RageModeActive",[["]]..tostring(data.ragemodeselected[teamId])..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]]..saveName..[["]]..','..[["]]..tostring(weaponId)..[["]]..','..[["]]..tostring(projectileNodeId)..[["]]..','..[["]]..tostring(projectileNodeIdFrom)..[["]],"",true)
			--SendScriptEvent("RageModeActive",[["]]..tostring(data.ragemodeselected[teamId])..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]]..saveName..[["]]..','..[["]]..tostring(weaponId)..[["]]..','..[["]]..tostring(projectileNodeId)..[["]]..','..[["]]..tostring(projectileNodeIdFrom)..[["]],"mods/2869755294/script.lua",true)
		end
		local hes = {"dzdeckgunHE_p","dzdeckgunHE2_p","dzdeckgunHE3_p","dzdeckgunHE4_p","dzdeckgunHE5_p",}
		if isainb(GetNodeProjectileSaveName(projectileNodeId),hes) == false and data.ragemodeselected[teamId] == "hepenetrarion" then
			SendScriptEvent("RageModeActive",[["]]..tostring(data.ragemodeselected[teamId])..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]]..saveName..[["]]..','..[["]]..tostring(weaponId)..[["]]..','..[["]]..tostring(projectileNodeId)..[["]]..','..[["]]..tostring(projectileNodeIdFrom)..[["]],"",true)
			--SendScriptEvent("RageModeActive",[["]]..tostring(data.ragemodeselected[teamId])..[["]]..','..[["]]..tostring(teamId)..[["]]..','..[["]]..saveName..[["]]..','..[["]]..tostring(weaponId)..[["]]..','..[["]]..tostring(projectileNodeId)..[["]]..','..[["]]..tostring(projectileNodeIdFrom)..[["]],"mods/2869755294/script.lua",true)
		end
	end
	--FireTip(teamId, saveName, weaponId, projectileNodeId)
	--[[if isainb(saveName,loopfire) then
		loopf(saveName,weaponId,projectileNodeId,loopfirecap[saveName],0)
	end]]--
	if saveName == "kuangdun" then
		if data.kdfired[weaponId] == nil then
			data.kdfired[weaponId] = 0
			local kdpos = GetDevicePosition(weaponId)
			local tgtpos = GetProjectileTarget(projectileNodeId)
			local deltaX = tgtpos.x-kdpos.x
			local deltaY = tgtpos.y-kdpos.y	
			for i = 1, 5, 1 do
				ScheduleCall(i*1.5,firekd,weaponId,deltaX,deltaY)
			end
			for i = 1, 15, 1 do
				ScheduleCall(7.5+i*1,firekd,weaponId,deltaX,deltaY)
			end
			for i = 1, 30, 1 do
				ScheduleCall(22.5+i*0.5,firekd,weaponId,deltaX,deltaY)
			end
			for i = 1, 230, 1 do
				ScheduleCall(37.5+i*0.25,firekd,weaponId,deltaX,deltaY)
			end
		end
	end
	
	if GetNodeProjectileSaveName(projectileNodeId)== "uuv2" then
		table.insert(data.uuv2id,projectileNodeId)
		data.uuv2fired[projectileNodeId] = 0
	end
	if GetNodeProjectileSaveName(projectileNodeId)== "uuvbomb" then
		table.insert(data.desprjid,projectileNodeId)
		--Log("uuvbomb")
	end
	if saveName == "hjcfspace" then
		ScheduleCall(2,HideUpgrade,weaponId,"groundstation",true)
	end
	
	-------------------------------------------------------------------------------------------
	if projectileNodeIdFrom ~=0 then
		local saveNamep = GetNodeProjectileSaveName(projectileNodeId)
		if isainb(saveNamep,data.dztos) then
	
			local posp = NodePosition(projectileNodeId)
				
				ScheduleCall(0.1,dztodebug,projectileNodeId,saveName,saveNamep,teamId,posp,projectileNodeIdFrom)
			--Log("f")
        end
	end	
	if GetNodeProjectileSaveName(projectileNodeId)=="dzsubmine" then
		if teamId%100 ==1 then
		table.insert(data.dzsubmine1,projectileNodeId)
		--Log("submine fired t1")
		end
		if teamId%100 ==2 then
		table.insert(data.dzsubmine2,projectileNodeId)
		--Log("submine fired t2")
		end
	end
	if GetNodeProjectileSaveName(projectileNodeId)=="fldzsubmine" then
		--Log("submine 1")
		if teamId%100 ==1 then
		table.insert(data.fldzsubmine1,projectileNodeId)
		--Log("submine settled t1")
		end
		if teamId%100 ==2 then
		table.insert(data.fldzsubmine2,projectileNodeId)
		--Log("submine settled t2")
		end
		ScheduleCall(300,submineatk,projectileNodeId,teamId)
		
		
	end
	if GetNodeProjectileSaveName(projectileNodeId)=="atkdzsubmine" then
		
		table.insert(data.desprjid,projectileNodeId)
		
		
	end
	if saveName == "dzmgcom" then
		--Log("aa target detected")
		ScheduleCall(0,comAA,teamId,projectileNodeId)
	end
	-------------------------------------------------------------------------------------------------
	if saveName == "lizia" then
		if teamId%100 ==1 then
			data.lizib1tar =GetProjectileTarget(projectileNodeId)
		end
		if teamId%100 ==2 then
			data.lizib2tar =GetProjectileTarget(projectileNodeId)
		end
	end
	if GetNodeProjectileSaveName(projectileNodeId)=="lizibo" then
		if teamId %100 == 1 and data.tspeed1>=6 then
			local times = math.ceil((data.tspeed1-4)/2-0.5)
			ScheduleCall(0.08,fenhua,projectileNodeId,teamId,saveName,times,1,nil,nil)
		end
		if teamId %100 == 2 and data.tspeed2>=6 then
			local times = math.ceil((data.tspeed2-4)/2-0.5)
			ScheduleCall(0.08,fenhua,projectileNodeId,teamId,saveName,times,1,nil,nil)
		end
	end
end
-------------------------------




function OnLinkHit(nodeIdA, nodeIdB, objectId, objectTeamId, objectSaveName, damage, pos, reflectedByEnemy)
	
	if objectSaveName == "mark_orbitalstrike" then
			Log("obhit")
			orbitalstrike(objectId, objectTeamId, objectSaveName)
			
	end	
	if objectTeamId == GetLocalTeamId() and NodeTeam(nodeIdA)%100 ~= GetLocalTeamId()%100 and GetLocalTeamId() ~= -3 and isainb(objectSaveName,outlist) == false then
		if isainb(objectSaveName,dzdkgs)  then
			if isainb("main_caliber",scblist) == false then
				scbQuere("main_caliber")
		 	end	
		end
		if isainb(objectSaveName,dztor) then
			if isainb("torpedo",scblist) == false then
				scbQuere("torpedo")
			end	
		end
		if objectSaveName == "g130HE" or objectSaveName == "g130SAPb" then
			if objectSaveName == "g130SAPb"  then
				return 0
			end
			if isainb("secondary_caliber",scblist) == false then
				scbQuere("secondary_caliber")
			end	
		end
		if isainb(objectSaveName,bombs)then
			if isainb("bomb",scblist) == false then
				scbQuere("bomb")
			end	
		end
		if isainb(objectSaveName,sbm)then
			if isainb("dbomb_mine",scblist) == false then
				scbQuere("dbomb_mine")
			end
		end
		if objectSaveName == "dzcannonuw" then
			if isainb("dbomb",scblist) == false then
				scbQuere("dbomb")
			end
		end
		if objectSaveName == "sbrc" then
			if isainb("rocket",scblist) == false then
				scbQuere("rocket")
			end	
		end
	end
end


function OnDeviceHit(teamId, deviceId, saveName, newHealth, projectileNodeId, projectileTeamId, pos, reflectedByEnemy)
    --Log("1")
	if GetNodeProjectileSaveName(projectileNodeId) == "mark_orbitalstrike" then
			Log("obhit")
			orbitalstrike(projectileNodeId, projectileTeamId, GetNodeProjectileSaveName(projectileNodeId))
			
	end	


	local prjName = GetNodeProjectileSaveName(projectileNodeId)
	if isainb(GetNodeProjectileSaveName(projectileNodeId),outlist) == false then
		if teamId%100 ~= GetLocalTeamId()%100 and projectileTeamId == GetLocalTeamId() and GetLocalTeamId() ~= -3  then
			if isainb(saveName,citadel) then
				if isainb("citadel",scblist) == false then
					scbQuere("citadel")
				end	
				scbAdd("citadel")
			end
			if saveName == "reactor" and newHealth == 0  then
				if isainb("frag",scblist) == false  then
					scbQuere("frag")
				end	
				scbAdd("frag")
			end
			if saveName == "barrel" and newHealth == 0  then
				if isainb("frag",scblist) == false  then
					scbQuere("frag")
				end	
				scbAdd("frag")
			end
			if isainb(saveName,crit) and newHealth == 0 then
				if isainb("crit",scblist) == false then
					scbQuere("crit")
				end	
				scbAdd("crit")
			end
			if isainb(prjName,dzdkgs)  then
				if isainb("main_caliber",scblist) == false then
					scbQuere("main_caliber")
				end	
			end
			if isainb(prjName,dztor) then
				if isainb("torpedo",scblist) == false then
					scbQuere("torpedo")
				end	
			end
			if prjName == "g130HE" or prjName == "g130SAPb"then
				if isainb("secondary_caliber",scblist) == false then
					scbQuere("secondary_caliber")
				end	
			end
			if isainb(prjName,bombs)then
				if isainb("bomb",scblist) == false then
					scbQuere("bomb")
				end	
			end
			if prjName == "dzcannonuw" then
				if isainb("dbomb",scblist) == false then
					scbQuere("dbomb")
				end	
			end
			if prjName == "sbrc" then
				if isainb("rocket",scblist) == false then
					scbQuere("rocket")
				end	
			end
		end
	end
	if GetNodeProjectileSaveName(projectileNodeId)== "lizi"  and teamId==projectileTeamId and GetDeviceType(deviceId) == "lizi"  then
		--Log("2")				
		if GetDeviceTeamId(deviceId) == 1 then
		data.tspeed1=data.tspeed1+1
		local target = GetProjectileTarget(projectileNodeId)
		speedplus(deviceId,target,projectileNodeId)
		target = nil
		--Log("team 1 +1")
		end
		if GetDeviceTeamId(deviceId) == 2 then
		data.tspeed2=data.tspeed2+1
		local target = GetProjectileTarget(projectileNodeId)
		speedplus(deviceId,target,projectileNodeId)
		target = nil
		--Log("team 2 +1")
		end
	end	
	if	GetNodeProjectileSaveName(projectileNodeId)== "lizi"  and teamId==projectileTeamId and GetDeviceType(deviceId) == "lizib" then
		if GetDeviceTeamId(deviceId) ==1 then
			
			speedplus(deviceId,data.lizib1tar,projectileNodeId)
			target = nil
			
		end
		if GetDeviceTeamId(deviceId) ==2 then
			
			speedplus(deviceId,data.lizib2tar,projectileNodeId)
			target = nil
			
		end
	
	end
--粒子加速器部分（以上）
	
end


function loopf(saveName,weaponId,projectileNodeId,loopcap,index) -- 使循环开火武器开火,录入开火参数
	if data.lfct[weaponId] == nil then
		local lfpos = GetDevicePosition(weaponId)
		local tgtpos = GetProjectileTarget(projectileNodeId)
		local deltaX = tgtpos.x-lfpos.x
		local deltaY = tgtpos.y-lfpos.y	
		data.lfct[weaponId] = 0
		for i = index,loopcap, 1 do
			ScheduleCall(i*loopdev[saveName],firelp,saveName,weaponId,deltaX,deltaY)
			--Log(tostring(i))
		end
	end
end

function firelp(saveName,weaponId,deltaX,deltaY)	-- 使循环开火武器开火,执行开火指令
	if DeviceExists(weaponId) == false or data.lfct[weaponId] == loopfirecap[saveName] then
		data.lfct[weaponId] = nil
		--Log("130a off")
	end
	if DeviceExists(weaponId) and data.lfct[weaponId] ~= nil then
		local weaponpos = GetDevicePosition(weaponId)
		local tgt = Vec3(weaponpos.x+deltaX,weaponpos.y+deltaY,0)
		local result = FireWeapon(weaponId,tgt,0.5,FIREFLAG_DIRECTAIM)
		--Log(tostring(data.lfct[weaponId]))
		
			data.lfct[weaponId] = data.lfct[weaponId] +1
		
		--Log(tostring(data.g130act[weaponId]))
	end
	
	
end

function fireSat(teamId)	--废弃
	FireWeapon(data.satId[teamId],data.mousePosA[teamId],0.001,FIREFLAG_NORMAL)
	Log("fired")
end
function satEnable(enabled,side)	--卫星记录
	local rev = not enabled
		if side == 1 then
			data.solaron1 = enabled
		end
		if side ==2 then
			data.solaron1 = enabled
		end
		EnableWeaponUpgrade("hjcfspace","groundstation",side,enabled)
		EnableDevice("ammo_hypersonic",enabled,side)
		EnableDevice("ammo_orbitalstrike",enabled,side)
		EnableWeaponUpgrade("hjcf","hjcfspace",side,rev)
		EnableWeaponUpgrade("plm1","plm2",side,enabled)
		if data.bcon then
			EnableDevice("ammo_bchy",enabled,side)
		end
end



function firesat(id,a,b)	--废弃
	local mpa = strToVec(a)
	local mpb =	strToVec(b)
	local teamId = tonumber(id)
	local x = formy(mpa,mpb)
	dlc2_SetDevicePosition(data.satId[teamId],Vec3(x,-4000,0))
	FireWeapon(data.satId[teamId],mpa,0.0,FIREFLAG_DIRECTAIM)
end	
function resethit(deviceId)		--粒子加速器重置
	
	if GetDeviceTeamId(deviceId) ==1  then
	data.tspeed1=0
	--Log("Team 1 reset")
	end
	if GetDeviceTeamId(deviceId) ==2  then
	data.tspeed2=0
	--Log("Team 2 reset")
	end

end
function speedplus(deviceId,target,projectileNodeId)	--粒子加速器记速
	local result = FireWeaponWithPower(deviceId,target,0.0,0,FIREFLAG_DIRECTAIM,0.001)	
	ScheduleCall(4, resethit,deviceId)--蓄力重置
end
--加速器启动过程
-----------------------------------------------------------------------------------------------	


function fenhua(projectileNodeId,teamId,saveName,times,k,tobpos,tobvel)--粒子加速器最终弹射物生成
	local bpos,bvel
	if tobpos==nil and tobvel == nil then
		local rate = 10
		bpos = NodePosition(projectileNodeId)
		bvel = Vec3(NodeVelocity(projectileNodeId).x*rate,NodeVelocity(projectileNodeId).y*rate,NodeVelocity(projectileNodeId).z*rate)
		local result = dlc2_CreateProjectile("lizib",saveName,teamId,bpos,bvel,10)
	else
		bpos = tobpos
		bvel = tobvel
		local result = dlc2_CreateProjectile("lizib",saveName,teamId,bpos,bvel,10)	
	end
	local rek = k+1
	if times>k then
		Log("fired"..tostring(k))
		ScheduleCall(0.02,fenhua, prjNodeId,teamId,saveName,times,rek,bpos,bvel)
	end	
	if times <= k then
		if teamId%100 ==1 then
			data.lizib1tar = nil
		end
		if teamId%100 ==2 then
			data.lizib2tar = nil
		end
	end
end
------------------------------

function firekd(weaponId,deltaX,deltaY) --狂墩开火控件
	if DeviceExists(weaponId) == false or data.kdfired[weaponId] == 279 then
		data.kdfired[weaponId] = nil
		--Log("log out")
	end
	if DeviceExists(weaponId) and data.kdfired[weaponId] ~= nil then
		local weaponpos = GetDevicePosition(weaponId)
		local tgt = Vec3(weaponpos.x+deltaX,weaponpos.y+deltaY,0)
		---ReloadWeapon(weaponId)
		ReloadWeapon(weaponId)
		local result = FireWeapon(weaponId,tgt,0.01,FIREFLAG_DIRECTAIM)
		data.kdfired[weaponId] = data.kdfired[weaponId] +1
		
		if result ~= 0 then
			data.kdfired[weaponId] = nil
			SetWeaponReloadTime(weaponId, 1)
		end
		
	end
end
--------------------------------------------------------------------------------------


function submineatk(projectileNodeId,teamId)	--水雷攻击
	local posatk = NodePosition(projectileNodeId)
	dlc2_CreateProjectile("atkdzsubmine","fldzsubmine",teamId,posatk,Vec3(0,0,0),300)
	--Log("submine atk ")
	DestroyProjectile(projectileNodeId)
end
-----------------------------------------------------------------------------------

function uuv2atk(projectileNodeId,teamId)		--uuv攻击
	if data.uuv2fired[projectileNodeId] <20 then
		local posatk = NodePosition(projectileNodeId)
		dlc2_CreateProjectile("uuvbomb","uuv2",teamId,Vec3(posatk.x+90,posatk.y-400,posatk.z),Vec3(140,0,0),25000)
		dlc2_CreateProjectile("uuvbomb","uuv2",teamId,Vec3(posatk.x+30,posatk.y-400,posatk.z),Vec3(80,0,0),25000)
		dlc2_CreateProjectile("uuvbomb","uuv2",teamId,Vec3(posatk.x-30,posatk.y-400,posatk.z),Vec3(-80,0,0),25000)
		dlc2_CreateProjectile("uuvbomb","uuv2",teamId,Vec3(posatk.x-90,posatk.y-400,posatk.z),Vec3(-140,0,0),25000)
		
		--Log("uuv atk ")
		data.uuv2fired[projectileNodeId] = data.uuv2fired[projectileNodeId] +1
	end
end
-----------------------------------------------------------------------------------

function comAA(teamId,projectileNodeId)			--全面戒备控件（装填）
	--Log("target sended")
	--Log("dzmgcom team:"..tostring(teamId))
	local target = GetProjectileTarget(projectileNodeId)
	for k,v in pairs(data.comableAAid) do
		--Log("AA team:"..tostring(GetDeviceTeamIdActual(v)))
		if GetDeviceTeamIdActual(v) == teamId and GetDeviceType(v) ~= "g130"    then
			FireWeaponWithPower(v,target,0.0,0,FIREFLAG_NORMAL,0.6)	
			ScheduleCall(2,ReloadWeapon,v)
		end
		if GetDeviceTeamIdActual(v) == teamId and GetDeviceType(v) == "g130"    then
			FireWeaponWithPower(v,target,0.0,0,FIREFLAG_NORMAL,0.99)	
			ScheduleCall(2,ReloadWeapon,v)
		end
	end
end
-------------------------------------------------------------------------------------
function checkliziteam(teamId,deviceId)			--粒子加速器发射单元记录
	if teamId%100 ==1 then
		if  teamId ~= data.liziowner1 then
			DestroyDeviceById(deviceId)
		end
	end
	if teamId%100 ==2 then
		if  teamId ~= data.liziowner2 then
			DestroyDeviceById(deviceId)
		end
	end
end

----------------------------------------------------------------------------------
function dztodebug (projectileNodeId,saveName,saveNamep,teamId,posp,projectileNodeIdFrom)--鱼雷重定向
	local pos = NodePosition(projectileNodeId)
	local V = NodeVelocity(projectileNodeId)
	local wl = GetWaterLevel(pos.x)
	--Log("1")
		
		--if pos.y < wl+200 then
		--Log("debug")
			
				if posp.x <= pos.x then
					SetMissileTarget(projectileNodeId, Vec3(45000,wl+40,0))
					ApplyForce(projectileNodeId,Vec3(8000,0,0),5,0.1,0)
					--Log("dztouw targeting right")
				end		
				if posp.x > pos.x then
					SetMissileTarget(projectileNodeId, Vec3(-45000,wl+40,0))
					ApplyForce(projectileNodeId,Vec3(-8000,0,0),5,0.1,0)
					--Log("dztouw targeting left")
				end
			
		--end
		if saveName == "uuv2"  then
			if posp.x <= pos.x then
				SetMissileTarget(projectileNodeId, Vec3(45000,pos.y,0))
				ApplyForce(projectileNodeId,Vec3(8000,0,0),10,0.1,0)
				Log("uuv targeting right")
			end		
			if posp.x > pos.x then
				SetMissileTarget(projectileNodeId, Vec3(-45000,pos.y,0))
				ApplyForce(projectileNodeId,Vec3(-8000,0,0),10,0.1,0)
				Log("uuv targeting left")
			end
		end 
        if saveName == "dztoplup" then
			if posp.x <= pos.x then
				ApplyForce(projectileNodeId,Vec3(7000,-1600,0),3.5,0.1,0)
			end		
			if posp.x > pos.x then
				ApplyForce(projectileNodeId,Vec3(-7000,-1600,0),3.5,0.1,0)
			end
		end
end
-------------------------------------------------------------------------------------

function spawnSat(projectileNodeId,teamId)			--废弃
	local pos = NodePosition(projectileNodeId,teamId)
	EnableWeapon("sat",true,teamId%100)
	--dlc2_CreateFloatingDevice(teamId,"sat",pos,90)
	EnableWeapon("sat",false,teamId%100)
end


function RageModePanel(pos,show)			--F选择界面，pos：位置，show：是否显示,cop:是否为团队模式
	if show then
		local deltapos = 
		{
			Vec3(40,20,-10),Vec3(75,20,-10),Vec3(110,20,-10),
		}
		AddSpriteControl("HUD", "panel_bg", path.."/scripts/media/panel.png", ANCHOR_TOP_LEFT, Vec3(200,100,1), Vec3(pos.x,pos.y,pos.z+10), false)
		AddTextControl("HUD","panel_describtion","请选择作战指令",ANCHOR_TOP_LEFT,Vec3(20,300,0),false,"normal")
		local i = 1
		for k,v in pairs(rage_bg) do
			AddButtonControl("HUD","panel_button_"..k,v,ANCHOR_TOP_LEFT,Vec3(30,30,1),pos,"normal")
			ShowControl("HUD","panel_button_"..k,true)
			SetControlAbsolutePos("HUD","panel_button_"..k,Vec3(pos.x+deltapos[i].x,pos.y+deltapos[i].y,pos.z+deltapos[i].z))
			rage[i] = k
			rage_button[i] ="panel_button_".. k
			i=i+1
		end
		ShowControl("HUD","panel_bg",true)
		ShowControl("HUD","panel_describtion",true)
	else 
		for k,v in pairs(rage_bg) do
			ShowControl("HUD","panel_button_"..k,false)
		end
		ShowControl("HUD","panel_bg",false)
		ShowControl("HUD","panel_describtion",false)
	end
end

function RageCool(ragemode,pteamId,ptime,ptimemax)
	--Log(tostring(teamId).." to "..GetLocalTeamId())--开启作战指令后冷却动画，ragemode：作战指令，time：当前冷却时间，timemax：最大冷却时间。当time为-1时，设置为该作战指令的冷却初始阶段
	local teamId = tonumber(pteamId)
	local time = tonumber(ptime)
	local timemax = tonumber(ptimemax)
	if (teamId%100 == GetLocalTeamId()%100 and Gamemode == "COP") or teamId == GetLocalTeamId()
	then
		data.ragemodeactivated[teamId] = true
		if tonumber(time) == -1 then
			SpawnCoreEffect(path.."/effects/rageon.lua")
			for k,v in pairs(ragecd) do
				if k == ragemode then
					ScheduleCall(0.5,RageCool,ragemode,teamId,v,v)
				end
			end
		end	
		if tonumber(time) >0 then
			local ptime = tonumber(time) -1*0.5
			data.ragepoints[teamId] = data.ragepoints[teamId]-100/timemax*0.5
			
			ScheduleCall(0.5,RageCool,ragemode,teamId,ptime,timemax)
		end
		if tonumber(time) == 0 then
			SpawnCoreEffect(path.."/effects/rageoff.lua")
			data.ragemodeactivated[teamId] = false
			data.ragepoints[teamId] = 0
		end
	end
end
function OnDeviceSelected(saveName)
	localSelectedDeviceIdHUD = saveName
	--Log(localSelectedDeviceIdHUD)
	--checktable(HLCauseDevice)
end

local desyncEffectId = {}
local localselecteddeviceId = 0
local ind = 0
function OnDraw()
	local teamId = GetLocalTeamId()
	if teamId ~= -3 then
		RenderRageUI(rage_bg[data.ragemodeselected[teamId]],data.stDrawRage,data.ragemodeselected[teamId],data.ragemodeactivated[teamId],data.ragepoints[teamId])
	end
	
	DrawTrajectoryPreview()
	ind = ind +1
	if ind > 20 then
		ind = 0
	end
	if ind == 1 then
		localselecteddeviceId = GetLocalSelectedDeviceId()
		if localselecteddeviceId ~= -1 then
			localSelectedStructureId = GetDeviceStructureId(localselecteddeviceId)
			
		end	
		--Log("str:"..tostring(localSelectedStructureId))
		if isainb(localSelectedDeviceIdHUD,HLCauseDevice) then--选中火药库
			local range = 0
			local offsetbelow = 0
			if config.CombinedRequirement[localSelectedDeviceIdHUD] then
				range = config.CombinedRequirement[localSelectedDeviceIdHUD].Properties.range
				offsetbelow = config.CombinedRequirement[localSelectedDeviceIdHUD].Properties.offsetbelow
			end
			for k,v in pairs(HLcase) do--遍历需要高亮的武器
			local saveName = GetDeviceType(v)
				if GetDeviceStructureId(v) == localSelectedStructureId and isainb(saveName,config.CombinedRequirement[localSelectedDeviceIdHUD]) then--同结构
					local wpnpos = GetDevicePosition(v)
					local detpos = Vec3(wpnpos.x,wpnpos.y+offsetbelow,0)
					if desyncEffectId[v] then
						DrawSquare(detpos,range,desyncEffectId[v])
					else
						desyncEffectId[v] = DrawSquare(detpos,range,nil)	
					end
				end
			end
		end
		for k,v in pairs(data.shieldToDevice) do
			if NodeExists(v) then
				local hp = math.modf(GetNodeProjectileHitPoints(v)/config.ShieldMaxHP*100)
				SetControlText("HUD",tostring(k),tostring(hp).."%")
			end
				local rootpos = GetDevicePosition(k)
				local pos = Vec3(rootpos.x,rootpos.y-100,rootpos.z)
				SetControlAbsolutePos("HUD",tostring(k),WorldToScreen(pos))
				--SpawnCircle(pos, 20, Blue(), 0.2)
			
		end
	end
end
--SpawnEffect("effects/dash_bold.lua", ePos)
function DrawSquare(cnt,r,sqre) --绘制正方形，中心坐标，半径（中心岛一条边的距离）
	local tl = Vec3(cnt.x-r,cnt.y-r,0)
	local tr = Vec3(cnt.x+r,cnt.y-r,0)
	local bl = Vec3(cnt.x-r,cnt.y+r,0)
	local br = Vec3(cnt.x+r,cnt.y+r,0)
	local square = {}
	if sqre then
		square = DeepCopy(sqre)
	else
		square = {0,0,0,0}
	end
	square[1]= DrawLine(tl,tr , 60, "dash",square[1])
	square[2]= DrawLine(tl,bl , 60, "dash",square[2])
	square[3]= DrawLine(tr,br , 60, "dash",square[3])
	square[4]= DrawLine(bl,br , 60, "dash",square[4])
	return square
end




function DrawLine(posA,posB,step,type,lineId)
	local effectId = 0
	if type == "dash" then
		ClearLine(lineId,index)
		local len = Vec3Dist(posA,posB)
		local dy = posB.x-posA.x
		local index = 1
		if dy  == 0 then 
			dy = 0.001 
			index = index-1
		end
		local k = (posB.y-posA.y)/dy
		local b = posB.y-posA.y
		local angle = math.atan(k)
		local dx = step*math.cos(angle)
		
		
		local p1 = posA
		
		local lineElement = {}
		
		while index*step < len do
			local x1 = p1.x+index*dx
			local y1 = p1.y+k*(index*dx)
			
			local p2 = Vec3(x1,y1)
			local d = Vec3((posB.x-posA.x)/len,(posB.y-posA.y)/len)
			if not desyncEffectId[lineId] then
				desyncEffectId[lineId] = {}
			end
			if not desyncEffectId[lineId][index] then
				
				effectId = SpawnEffect("effects/dash_bold.lua", p2)
				lineElement[index] = effectId
			else
				SetEffectPosition(effectId,p2)
			end
			SetEffectDirection(effectId, d)
		
			AddToEffectLifeSpan(effectId, data.updateDelta/4)	
			
			index = index +1
		end
		if not desyncEffectId[effectId] then
			desyncEffectId[effectId] = {}
			desyncEffectId[effectId] = DeepCopy(lineElement)
		end
		
		ClearLine(lineId,index)
	end
	return effectId
end
function ClearLine(lineId,fromIndex)
	if desyncEffectId[lineId]  then
		for index =  (fromIndex or 1),#desyncEffectId[lineId] do
			CancelEffect(desyncEffectId[lineId][index])
			desyncEffectId[lineId][index] = nil
		end
		desyncEffectId[lineId] = nil
	end
end




















function RageModeActive (ragemode,teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)--作战指令执行层；在不必要的参数填入0
	
	local nteamId = tonumber(teamId)
	local nweaponId = tonumber(weaponId)
	local nprojectileNodeId = tonumber(projectileNodeId)
	local nprojectileNodeIdFrom = tonumber(projectileNodeIdFrom)
	--Log(teamId)
	
		if ragemode == "hepenetrarion"then
			--Log("hepenetration selected")
			if string.sub(GetNodeProjectileSaveName(nprojectileNodeId),1,11) == "dzdeckgunHE" and GetNodeProjectileSaveName(nprojectileNodeId)~="dzdeckgunHE" and  GetNodeProjectileSaveName(nprojectileNodeId)~="dzdeckgunHE2"then
				ScheduleCall(0.15,HeGenerate,nteamId,nprojectileNodeId)
			end
		end

		if ragemode == "mgreload" then
			if isainb(saveName,rage_dzdkgs) then
				local nreload = tonumber(GetWeaponReloadPeriodById(nweaponId)*0.6)
				SetWeaponReloadTime(nweaponId,nreload)
			end
		end
	
		if ragemode == "mgdistaccuracy" then
			
			local cdevice = GetDeviceCountSide(nteamId%100)
			--Log("actived mgdist,device count:"..tostring(cdevice))
			for i=1,cdevice,1 do
				local deviceId = GetDeviceIdSide(nteamId%100,i)
				local upgradet = GetDeviceType(deviceId)
				if isainb(GetDeviceType(deviceId),rage_dzdkgs) then
					local upweaponId = HideUpgrade(deviceId,upgradet.."_ac",true)
					--Log(tostring(upweaponId))
					--Log("Upgraded")
					ScheduleCall(ragecd[ragemode],HideUpgrade,upweaponId,upgradet,true)
				end
			end
			
		end
end


function HideUpgrade(targetId,upgradet,toward) -- 升级一个隐藏的升级项，toward输入false以降级（前提是该武器与升级项间可以互相升级）
	if DeviceExists(targetId) then
		local target = GetDeviceType(targetId)
		local tsideId= GetDeviceTeamId(targetId)
		local reverse = not toward
		EnableWeaponUpgrade(target,upgradet,tsideId,toward)
		local result = UpgradeDevice(targetId,upgradet)
		EnableWeaponUpgrade(target,upgradet,tsideId,reverse)
		--Log("Upgraded"..target.." to "..upgradet)
		return result
	end
end

function AddRageBar(pos,name)			--绘制F进度条	pos位置 name f种类名称
	AddSpriteControl("HUD", "rage_bg", path.."/scripts/media/ragemodes/rageMode_background_track.png", ANCHOR_BOTTOM_LEFT, Vec3(40,40,1), Vec3(pos.x,pos.y,pos.z+10), false)
	AddSpriteControl("HUD", "rage_gr", path.."/scripts/media/ragemodes/rageMode_background_green.png", ANCHOR_BOTTOM_LEFT, Vec3(40,40,1), Vec3(pos.x,pos.y,pos.z-10), false)
	AddSpriteControl("HUD", "rage_ye", path.."/scripts/media/ragemodes/rageMode_background_yellow.png", ANCHOR_BOTTOM_LEFT, Vec3(40,40,1), Vec3(pos.x,pos.y,pos.z), false)
	SetControlSprite("rage_bg",rage_bg[name])
end


function InitRageUI(name,init,pteamId,ragemodeselected) --生成选择的作战指令的进度条
	local teamId = tonumber(pteamId)
	if (teamId%100 == GetLocalTeamId()%100 and Gamemode == "COP") or teamId == GetLocalTeamId()
	then
		local k = gettablek(rage_button,name)
		data.ragemodeselected[teamId] = rage[k]
		if init then
			AddRageBar(Vec3(20,320,0),rage[k])
			RageModePanel(Vec3(20,280,0),false)
			ShowControl("HUD",name,false)
			ShowControl("HUD","rage_pointer",false)
		end
		
	end
end

function PanelToWord(name)
	if name == "panel_button_mgdistaccuracy" then
		SetControlText("HUD","panel_describtion","即时主炮校准")
	end
	if name == "panel_button_mgreload" then
		SetControlText("HUD","panel_describtion","主炮装填助推")
	end
	if name == "panel_button_hepenetrarion" then
		SetControlText("HUD","panel_describtion","高爆弹引信调整")
	end
end








local strikeTable = --saveName,count,velocity,delay
{
    {saveName = "76",count = 10,velocity = 1,delay = 2,effect=path.."/effects/fire_130.lua"},
    {saveName = "76",count = 10,velocity = 1,delay = 2,effect=path.."/effects/fire_130.lua"},
    {saveName = "76",count = 10,velocity = 1,delay = 1.8,effect=path.."/effects/fire_130.lua"},
    {saveName = "76",count = 15,velocity = 1,delay = 1.8,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 15,velocity = 1,delay = 1.6,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 15,velocity = 1,delay = 1.6,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 15,velocity = 1,delay = 1.6,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 20,velocity = 1,delay = 1.2,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 20,velocity = 1,delay = 1.2,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 25,velocity = 1,delay = 1.2,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 25,velocity = 1,delay = 1.2,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 30,velocity = 1,delay = 1,effect=path.."/effects/fire_130.lua"},
	{saveName = "76",count = 30,velocity = 1,delay = 1,effect=path.."/effects/fire_130.lua"},
	{saveName = "g130HE",count = 20,velocity = 0.6,delay = 1.6,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 22,velocity = 0.6,delay = 1.6,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 24,velocity = 0.6,delay = 1.6,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 26,velocity = 0.6,delay = 1.6,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 28,velocity = 0.6,delay = 1.1,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 30,velocity = 0.6,delay = 1.1,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 30,velocity = 0.6,delay = 1.1,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 30,velocity = 0.6,delay = 0.8,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 20,velocity = 0.6,delay = 0.6,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 20,velocity = 0.6,delay = 0.5,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "g130HE",count = 20,velocity = 0.6,delay = 0.4,effect=path.."/effects/fire_dzdeckgun.lua"},
	{saveName = "dzdeckgunHE2",count = 12,velocity = 0.3,delay = 2,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 12,velocity = 0.3,delay = 2,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 14,velocity = 0.3,delay = 1.5,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 14,velocity = 0.3,delay = 1.5,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 16,velocity = 0.3,delay = 1,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 16,velocity = 0.3,delay = 1,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 20,velocity = 0.3,delay = 0.7,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 20,velocity = 0.3,delay = 0.6,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "dzdeckgunHE2",count = 20,velocity = 0.3,delay = 1.5,effect="mods/dz/effects/obStrikeSelect"},
	{saveName = "turn",count = 6,velocity = 1,delay = 2,effect=path.."/effects/hjcfnormal_warmup.lua"},
	{saveName = "turn",count = 6,velocity = 1,delay = 2,effect=path.."/effects/hjcfnormal_warmup.lua"},
	{saveName = "turn",count = 8,velocity = 1,delay = 2,effect=nil},
	{saveName = "turn",count = 12,velocity = 1,delay = 2,effect=nil},
    {saveName = "cm2",count = 6,velocity = 1,delay = 4,effect=path.."/effects/hjcf_warmup.lua"},
	{saveName = "cm2",count = 6,velocity = 1,delay = 1,effect=nil},
	{saveName = "cm2",count = 6,velocity = 1,delay = 1,effect=nil},
	{saveName = "cm2",count = 6,velocity = 1,delay = 1,effect=nil},
	{saveName = "cm2",count = 6,velocity = 1,delay = 8,effect=nil},
	{saveName = "cm2",count = 12,velocity = 1,delay = 10,effect=nil},
	{saveName = "terminalwarhead",count = 3,velocity = 1,delay = 1,effect="mods/dz/effects/obStrikeSelect"},
	
}
local unran ={-49,-35,-14,47,-47,-95,-82,-79,-40,85,39,-84,70,4,-84,72,-84,-78,8,-73,86,-5,93,-24,16,38,-17,19,74,-23,48,1,-38,9,20,57,-23,-40,-90,-56,12,78,92,56,-32,-89,-29,36} 
data.obMarkPosFrom = {}
local cover = 8000
local DevMtp = 8.0
function orbitalstrike(nodeId, teamId, saveName)
    local target = NodePosition(nodeId)

	ScheduleCall(6,strikeRound,1,target,teamId,nodeId)
	Log("striked")
end
function strikeRound(round,target,teamId,nodeId)
    local saveName = strikeTable[round].saveName
    local count = strikeTable[round].count
    local delay = strikeTable[round].delay
	local posmid = data.obMarkPosFrom[nodeId] or NodePosition(nodeId)
	local effect = strikeTable[round].effect
	local velmlt = strikeTable[round].velocity
	local step = cover/count
	local stapos = Vec3(0,0,0)
	for i=1,count do
		local bias = 3400
		if count == 1 then
			bias = 0
		end
		if posmid.x<target.x then
			stapos = Vec3(target.x-10000-bias+step*(i)+unran[i]*DevMtp,target.y-18000+unran[41-i]*DevMtp,target.z)
		end
		if posmid.x>target.x then
			stapos = Vec3(target.x+10000-bias+step*(i)+unran[41-i]*DevMtp,target.y-18000+unran[i]*DevMtp,target.z)
		end
		if posmid.x == target.x then
			DevMtp = DevMtp*1.6 
			stapos = Vec3(target.x- bias+step*(i)+unran[i]*DevMtp,target.y-18000+unran[41-i]*DevMtp,target.z)
		end
		
		local ntgt = Vec3(target.x-bias+step*(i-1),target.y,target.z)
		local tvel = Vec3(ntgt.x-stapos.x,ntgt.y-stapos.y,0)
		local velocity = Vec3(tvel.x*velmlt,tvel.y*velmlt,tvel.z*velmlt)
		
		local result = dlc2_CreateProjectile(saveName, "plm", teamId, stapos, velocity, 30)
		if GetNodeProjectileType(result) == PROJECTILE_TYPE_MISSILE then
			SetMissileTarget(result,ntgt)
		end
	end
    if effect then
		SpawnEffect(effect, stapos)
	end
    if round < #strikeTable then
        nround = round+1
        ScheduleCall(delay,strikeRound,nround,target,teamId,nodeId)
    end
	if round == #strikeTable and data.obMarkPosFrom[nodeId] then
		data.obMarkPosFrom[nodeId] = nil
	end
end 