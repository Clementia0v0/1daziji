local team = -1
local rec = 0
local cap =0
local chat = ""
local playerId =""
function Load(gamestart)
    AddTextControl("HUD","rec","停止记录(右shift启用)",ANCHOR_TOP_LEFT,Vec3(10,220,-101),false,"Normal")
    AddTextControl("HUD","rec1","输入预览：",ANCHOR_TOP_LEFT,Vec3(10,240,-101),false,"Normal")
    AddTextControl("HUD","chatview","",ANCHOR_TOP_LEFT,Vec3(100,240,-101),false,"Normal")
    AddTextControl("HUD","cap","大写：关(左shift启用)",ANCHOR_TOP_LEFT,Vec3(10,260,-101),false,"Normal")
    team = GetLocalTeamId()
    --Log("[HL=ff0000ff]lllll[/HL]")
end    
function OnKey(key,down)
    if down then
        if key =="right shift" then
            rec = rec +1
            if rec >= 2 then
                rec = 0
                SetControlText("HUD","rec","停止记录(右shift启用)")
                local check = commandCheck(chat)
                if check == false and string.len(chat)>=1 then
                    chat = playerId..chat
                    --SendScriptEvent("Log",[["]]..tostring(chat)..[["]],"",true)

                end
                chat = ""
                SetControlText("HUD","chatview",chat)
            end
            if rec == 1 then
                SetControlText("HUD","rec","开始记录(右shift禁用并发送到聊天栏)")
            end 
            --Log(tostring(rec))
        end
        if key =="left shift" then
            cap = cap+1
            if cap >=2 then
                cap =0
                SetControlText("HUD","cap","大写：关(左shift启用)")
            end
            if cap ==1 then
                SetControlText("HUD","cap","大写：开(左shift禁用)")
            end
        end
        if rec == 1 then
            if string.len(key) ==1 then
                if cap == 0 then
                    chat = chat..key
                    SetControlText("HUD","chatview",chat)
                end
                if cap == 1 then
                    chat = chat..string.upper(key)
                    SetControlText("HUD","chatview",chat)
                end    
            end    
            if key == "space" then
                chat = chat.." "
                SetControlText("HUD","chatview",chat)
            end
            if key == "backspace" then
                local tmp = ""
                for i=1,string.len(chat)-1 do
                tmp = tmp..string.sub(chat,i,i)    
                end
                chat = tmp
                SetControlText("HUD","chatview",chat)
            end
        end
        
    end
end
function commandCheck(chat)
    if string.sub(chat,1,1) == "/" then
       
        chat = ""
        SetControlText("HUD","chatview",chat)
        return true
    end
    return false
end        