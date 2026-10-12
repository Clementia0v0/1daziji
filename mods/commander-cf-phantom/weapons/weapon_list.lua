
local cant_move = {"dzdeckgun1","dzdeckgun2","dzdeckgun3","dzdeckgun11","dzdeckgun13","dzdeckgun21","dzdeckgun23","dzdeckgun32","dzdeckgun43","dzdeckgun52","dzelch","dzto2","dzto2r"}
for k,v in pairs(cant_move) do
    local nomove = FindWeapon(v)
    if nomove then
        nomove.CanMove = false
    end
end
local dzdkgs = {"11","13","2","23","32","3"}
for k,v in pairs(dzdkgs) do
    local dzdkg = FindWeapon("dzdeckgun"..v)
    dzdkg.Upgrades["dzdeckgun"..v.."_secrl"].Enabled = true
    --Log("dzdeckgun"..v.."_secrl")
end



