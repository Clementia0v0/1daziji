local aps = {"dzdeckgunAPb","dzdeckgunAP2b","dzdeckgunAP3b","dzdeckgunAP4b","dzdeckgunAP5b","dzdeckgunAP21b","dzdeckgunAP38b","dzdeckgunAPHEV3b"}
function FireTip(teamId, saveName, weaponId, projectileNodeId)
    local prj =GetNodeProjectileSaveName(projectileNodeId)
    if isainb(prj,aps) and teamId%100 ~= GetLocalTeamId()%100 then
        --ShowTipChecked(path .. "/ui/textures/HUD/tips/APimpact.png", "Tips.APimpact","Tips-APimpact", true)
    end
end