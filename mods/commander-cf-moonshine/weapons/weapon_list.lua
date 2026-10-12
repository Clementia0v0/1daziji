local dzdkgs = {"11","13","2","23","32","3"}
for k,v in pairs(dzdkgs) do
    local dzdkg = FindWeapon("dzdeckgun"..v)
    dzdkg.Upgrades["dzdeckgun"..v.."_secrl"].Enabled = true
    --Log("dzdeckgun"..v.."_secrl")
end
