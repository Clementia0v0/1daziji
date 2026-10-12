local HEs = {"dzdeckgunHE","dzdeckgunHe2","dzdeckgunHE3","dzdeckgunHE4","dzdeckgunHE5"}
CommanderApplyModBase = function()
    for k,v in pairs(HEs) do
        local he = FindProjectile(v)
        he.ProjectileSplashDamage = he.ProjectileSplashDamage*1.25
        he.ProjectileSplashDamageMaxRadius = he.ProjectileSplashDamageMaxRadius*1.25
        he.ProjectileSplashMaxForce = he.ProjectileSplashMaxForce*1.25
    end
end
RegisterApplyMod(CommanderApplyModBase)