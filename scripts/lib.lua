function ControlInit(tiplist,helperpos,tippos)
	--rage f 
	--AddSpriteControl("HUD","Tip-key_f-icon",path.."/scripts/media/keys/KEY_F.png",ANCHOR_TOP_LEFT,Vec3(15,15,1),Vec3(900,34.4,-101),false)
	--ribbons
	AddSpriteControl("HUD","crit",path.."/scripts/media/ribbons/ribbon_crit.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(600,10,-101),false)
	AddSpriteControl("HUD","dbomb",path.."/scripts/media/ribbons/ribbon_dbomb.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(660,10,-101),false)
	AddSpriteControl("HUD","dbomb_mine",path.."/scripts/media/ribbons/ribbon_dbomb_mine.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(720,10,-101),false)
	AddSpriteControl("HUD","frag",path.."/scripts/media/ribbons/ribbon_frag.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(780,10,-101),false)
	AddSpriteControl("HUD","secondary_caliber",path.."/scripts/media/ribbons/ribbon_secondary_caliber.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(840,10,-101),false)
	AddSpriteControl("HUD","torpedo",path.."/scripts/media/ribbons/ribbon_torpedo.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(900,10,-101),false)
	AddSpriteControl("HUD","bomb",path.."/scripts/media/ribbons/ribbon_bomb.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(780,34.4,-101),false)
	AddSpriteControl("HUD","main_caliber",path.."/scripts/media/ribbons/ribbon_main_caliber.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(840,34.4,-101),false)
	AddSpriteControl("HUD","citadel",path.."/scripts/media/ribbons/ribbon_citadel.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(900,34.4,-101),false)
	AddSpriteControl("HUD","rocket",path.."/scripts/media/ribbons/ribbon_rocket.png",ANCHOR_TOP_LEFT,Vec3(53.2,20.4,1),Vec3(900,34.4,-101),false)
	--tips
	
	AddSpriteControl("HUD","Tip-BG",path.."/scripts/media/panel.png",ANCHOR_TOP_LEFT,Vec3(300,225,1),tippos,false)
	AddButtonControl("HUD","Tip-key_arrowleft-icon",path.."/scripts/media/keys/KEY_LEFTARROW.png",ANCHOR_TOP_LEFT,Vec3(15,15,1),Vec3(tippos.x+20,tippos.y+160,-102),"Normal")
	AddButtonControl("HUD","Tip-key_arrowright-icon",path.."/scripts/media/keys/KEY_RIGHTARROW.png",ANCHOR_TOP_LEFT,Vec3(15,15,1),Vec3(tippos.x+260,tippos.y+160,-101),"Normal")
	AddButtonControl("HUD","Tip-key_close-icon",path.."/scripts/media/keys/KEY_X.png",ANCHOR_TOP_LEFT,Vec3(15,15,1),Vec3(tippos.x+260,tippos.y+30,-101),"Normal")
	AddButtonControl("HUD","Tip-helper-icon","Tip-helper-icon",ANCHOR_TOP_LEFT,Vec3(100,90,1),helperpos,"Normal")
	
	for k,v in pairs(tiplist) do
		AddSpriteControl("HUD","Tip-"..v.."-icon",path.."/scripts/media/tips/icon/"..v..".png",ANCHOR_TOP_LEFT,Vec3(20,20,1),Vec3(tippos.x+35+25*k,tippos.y+160,-102),false)
		AddSpriteControl("HUD","Tip-"..v.."-detail",path.."/scripts/media/tips/detail/"..v..".png",ANCHOR_TOP_LEFT,Vec3(130,130,1),Vec3(tippos.x+80,tippos.y+30,-102),false)
		ShowControl("HUD","Tip-"..v.."-detail",false)
	end
	AOBtip("Tip-key_close-icon",1,tiplist)
end

function AOBtip(controlName,p,tiplist)-- page:left -1;right -2
	local show = false
	local page = p
	if  page >1 and controlName == "Tip-key_arrowleft-icon" then
		page = page -1
		Log(tostring(page))
	end
	if  page <#tiplist and controlName == "Tip-key_arrowright-icon" then
		page = page +1
		Log(tostring(page))
	end
	if controlName == "Tip-helper-icon" then
		show = true
		SetSpriteState("HUD", "Tip-helper-icon", "Pressed")
	end
	ShowControl("HUD","Tip-"..tiplist[p].."-detail",false)
	ShowControl("HUD","Tip-"..tiplist[page].."-detail",true)
	if controlName == "Tip-key_close-icon" or controlName == "Tip-helper-icon" then
		for k,v in pairs(tiplist) do
			ShowControl("HUD","Tip-"..v.."-icon",show)
		end
		ShowControl("HUD","Tip-"..tiplist[page].."-detail",show)
		ShowControl("HUD","Tip-key_close-icon",show)
		ShowControl("HUD","Tip-key_arrowleft-icon",show)
		ShowControl("HUD","Tip-key_arrowright-icon",show)
		ShowControl("HUD","Tip-BG",show)	
		if not show then SetSpriteState("HUD", "Tip-helper-icon", "Normal") end
	end
	return page
end




function IsAInRangeB(a,b,r,rangeType)--判定位置Vec3 a,被判定目标位置Vec3 b,半径以a为圆心int r, 范围类型string rangeType 
	--左上角基准点
	if rangeType == "SQR" then
		if a.x+r >b.x and a.x-r< b.x then
			--Log("x in range")
			if a.y+r >b.y and a.y-r <b.y then
				--Log("y in range")
				return true
			end
		else
			return false
		end
	end
end	

function IsInSameStr(deviceAId,deviceBId)
	if GetDeviceStructureId(deviceAId) == GetDeviceStructureId(deviceBId) then return true else return false end
end

function HeGenerate(nteamId,nprojectileNodeId)
	local pos = NodePosition(nprojectileNodeId)
	local vel = NodeVelocity(nprojectileNodeId)
	dlc2_CreateProjectile(GetNodeProjectileSaveName(nprojectileNodeId).."_p", "dzdeckgun", nteamId, pos, vel, 60)--todo
	DestroyProjectile(nprojectileNodeId)
end

function FindADevice(teamId,name) --寻找同一队伍的一个装置，输出id
	local cdevice = GetDeviceCountSide(teamId%100)
	--Log("actived mgdist,device count:"..tostring(cdevice))
	for i=1,cdevice,1 do
		local deviceId = GetDeviceIdSide(teamId%100,i)
		if GetDeviceType(deviceId) == name then
			return deviceId
		end
	end
end

function gettablek (t,element)			--获取表中元素索引 t列表 element目标元素 
	for k,v in pairs(t) do
		if v==element then
			return k
		end
	end
	Log("ERROR:no such element in table")
	return nil
end



function RenderRageUI(name,stDrawRage,ragemodeselected,ragemodeactivated,ragepoints)-- 渲染rageUI
	if  stDrawRage then
		if ragemodeselected ~= "none" then
			if ragemodeactivated or ragepoints == 100 then
				ShowControl("HUD",name,true)
				ShowControl("HUD","rage_gr",true)
				ShowControl("HUD","rage_ye",false)
				SetControlSize("HUD","rage_gr",Vec3(40,40*ragepoints/100,1))
			else
				ShowControl("HUD",name,true)
				ShowControl("HUD","rage_ye",true)
				ShowControl("HUD","rage_gr",false)
				SetControlSize("HUD","rage_ye",Vec3(40,40*ragepoints/100,1))
			end	
		end
	end

end

function AddRageBar(pos,name)			--绘制F进度条	pos位置 name f种类名称
	AddSpriteControl("HUD", "rage_bg", path.."/scripts/media/ragemodes/rageMode_background_track.png", ANCHOR_BOTTOM_LEFT, Vec3(40,40,1), Vec3(pos.x,pos.y,pos.z+10), false)
	AddSpriteControl("HUD", "rage_gr", path.."/scripts/media/ragemodes/rageMode_background_green.png", ANCHOR_BOTTOM_LEFT, Vec3(40,40,1), Vec3(pos.x,pos.y,pos.z-10), false)
	AddSpriteControl("HUD", "rage_ye", path.."/scripts/media/ragemodes/rageMode_background_yellow.png", ANCHOR_BOTTOM_LEFT, Vec3(40,40,1), Vec3(pos.x,pos.y,pos.z), false)
	
end



function SpawnCoreEffect(filename)	--核心位置生成一个效果
	local pos = GetDevicePosition(FindADevice(GetLocalTeamId(),"reactor"))
	SpawnEffect(filename,pos)
end

function ApplyForce(nodeId,direction,last,step,ind) -- 施力节点id，方向Vec3，持续时间（秒），间隔（秒），计数器（默认0）
	local cap = last/step
	local nind
	nind = ind + 1
	if nind <= cap then
		dlc2_ApplyForce(nodeId, direction)
		ScheduleCall(step,ApplyForce,nodeId,direction,last,step,nind)
	end
end



function checktable(t)	--直观地输出列表
	for k,v in pairs(t)do
		if type(v) ~= "table" then
			Log(tostring(k).." : "..tostring(v))
		else
			Log(tostring(k).." is a table within:")
			checktable(v)
		end
	end
	Log("--------------------------------end of table")
end
function checkkill(deviceId)	--安全删除装置
	if DeviceExists(deviceId) then
		ApplyDamageToDevice(deviceId,10000)
	end	
end	

function isainb(a,b)	--a元素是否在表b中
	for k,v in pairs(b) do
		if a==v then
			return true
		end
	end
	return false
end



function PlaneToPole(plane)--平面2极坐标
	local Pole = {math.atan(plane.y,plane.x),math.sqrt(x*x+y*y)}
	return Pole
end
function PoleToPlane(base,vel,pole,normal)--极坐标2平面
	local poleVel = PlaneToPole(vel)
	local combPolePos = {}
	if normal == false then
		combPolePos= {vel[1]+pole[1],pole[2]} 
	end
	if normal then
		combPolePos = {vel[1]+pole[1],vel[1]+pole[2]} 
	end
	local result = Vec3(base.x+math.cos(combPolePos[1])*combPolePos[2],base.y+math.sin(combPolePos[1])*combPolePos[2])
	return result
end


function encode(tb)--编码器：格式如下 tb = {参数a,参数b,参数c......}	--参数数量不限
	local result = ""
	for k,v in pairs(tb) do
		local value = tostring(v)
		result = result.."#"..value.."*"--“#”为起始符，“*”为终止符，输出形似：#abcd*#1234* ......
	end
	Log(result) --这一行用于显示结果，使用时可以注释掉
	return result
end	
function decode(cd,set) --解码器：第一个参数是encode()输出的字符串，第二个参数是当前解码器提取输入字符串中的第set个有效参数,输出格式任然是字符串
	local tmp = ""
	local write = false
	local count = 1
	for i=1, string.len(cd) do
		local v = string.sub(cd,i,i)
		if v == "#" and write == false then
			write = true
		end
		if write == true and v ~= "*" and v ~= "#" and count == set then
			tmp =tmp..v
		end
		if v == "*" then 
			count = count + 1
			write = false
		end
	end
	return tmp
end
function strToVec(str) --字符串 向 Vec3转换 输入形似(a,b,c)的字符串，输出Vec3(a,b,c)
	local x = 0
	local y = 0
	local z = 0
	local ct = 0
	local tmp = ""
	for i=1,string.len(str) do
		local v = string.sub(str,i,i)
		if v ~="(" and v ~=")" and v ~="," then
			tmp = tmp..v
		end
		if v =="," then
			if ct ==0 then
				x=tonumber(tmp)
			end	
			if ct ==1 then
				y=tonumber(tmp)
			end	
			tmp = ""
			ct = ct +1
		end
		if v==")" then
			z=tonumber(tmp)
		end
	end
	return Vec3(x,y,z)
end	
function toVec(PosA,PosB)
	return Vec3(PosB.x-PosA.x,PosB.y-PosA.y,PosB.z-PosA.z)
end	
function formy(posa,posb)
	local t = (posb.x-posa.x)/(posb.y-posa.y)
	return t*(-4000-posb.y)+posb.x
end	
---------------------------------------------------------------------
local trajectoryWeapons = {"plm2","kuangdun","dzdeckgun1m"}
local trjwpDist = 
{
	["plm2"] = 150,
	["kuangdun"] = 200,
	["dzdeckgun1m"] = 100,
	
}
function OnGroupMemberSelected(deviceId)
	if isainb(GetDeviceType(deviceId),trajectoryWeapons)  then
		for k,v in pairs(trajectoryWeapons) do
			if trjwpDist[v] == nil then
				trjwpDist[v] = 100
				Log(v.." is initialized with trajectory index:100")
			end	
		end
		
	end
end	
function DrawTrajectoryPreview()
	--[[if GetLocalTeamId()%MAX_SIDES ~= teamId then
		return
	end]]--

	local id = GetLocalSelectedDeviceId()

	
	if id > 0 and IsDeviceFullyBuilt(id) and GetMouseAiming() and isainb(GetDeviceType(id),trajectoryWeapons) then
		local projSaveName = GetWeaponSelectedAmmo(id)
		--[[if GetProjectileParamBool(projSaveName, teamId, "ScattershotNoTrajectory", false) then
			data.FireVel = {}
			ClearTrajectory()
			return
		end]]--

		AddFireVel(GetFireVel(id))
		local vel = FilteredFireVel()
		local pos = GetWeaponHardpointPosition(id)
		local df = 100

		local projectileSaveName = GetWeaponAmmo(id)

		local g = GetProjectileTypeGravity(projectileSaveName, GetLocalTeamId())
		if g == 0 then g = 0.00001 end
		local a = 0.5*g/(vel.x*vel.x)
		local dydx = vel.y/vel.x;
		local x = pos.x
		local y = pos.y
		local b = dydx - 2*a*x
		local c = y - (a*x*x + b*x)

		local i = pos.x
		local p1 = a*i*i + b*i + c

		if data.trajectory == nil then
			data.trajectory = {}
		end
		local index = 1
		local dist = 0
		local stepDist = 400

		if vel.x < 0 then
			stepDist = -stepDist
			df = -df
		end

		while index < trjwpDist[GetDeviceType(id)] do
			local j = i + stepDist
			local p2 = a*j*j + b*j + c
			local dy = p2 - p1
			local d = Vec3(stepDist, dy)
			local dLen = Vec3Length(d)
			local angle = math.atan(d.y/d.x)
			local dx = df*math.cos(angle)

			i = i + dx
			p2 = a*i*i + b*i + c

			Vec3Unit(d)
			local ePos = Vec3(i, p2)

			local e = data.trajectory[index]
			if not e or not SetEffectPosition(e, ePos) then
				e = SpawnEffect("effects/dash_bold.lua", ePos)
				data.trajectory[index] = e
			else
				SetEffectDirection(e, d)
				AddToEffectLifeSpan(e, data.updateDelta/4)
			end
			index = index + 1

			p1 = p2
		end

		ClearTrajectory(index)
	else
		data.FireVel = {}
		ClearTrajectory()
	end
end

function ClearTrajectory(fromIndex)
	if data.trajectory and #data.trajectory > 0 then
		for index = (fromIndex or 1),#data.trajectory do
			CancelEffect(data.trajectory[index])
			data.trajectory[index] = nil
		end
	end
end

function AddFireVel(vel)
	if not data.FireVel then
		data.FireVel = {}
	end

	if #data.FireVel == 30 then
		table.remove(data.FireVel, 1)
	end

	table.insert(data.FireVel, vel)
end

function FilteredFireVel()
	local vel = Vec3(0,0,0)
	local count = #data.FireVel
	for i=1,count do
		vel.x = vel.x + data.FireVel[i].x
		vel.y = vel.y + data.FireVel[i].y
	end
	vel.x = vel.x / count
	vel.y = vel.y / count
	return vel
end

