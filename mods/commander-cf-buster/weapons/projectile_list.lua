
local dzto = FindProjectile("dzto")
local dztouw = FindProjectile("dztouw")
if dzto and dztouw then
    dzto.MaxAge = 40
    dzto.MaxAgeUnderwater = 40
    dztouw.MaxAge = 40
    dztouw.MaxAgeUnderwater = 40
end


ToUranium("dzdeckgunAPb",0.5,BusterDefaultTrail,BusterDeckgunExplosion,2,0.2)
ToUranium("dzdeckgunAP",0.5,BusterDefaultTrail,BusterDefaultExplosion,2,0.4,300)

ToUranium("dzdeckgunAP2b",0.7,BusterDefaultTrail,BusterDeckgunExplosion,2,0.2)
ToUranium("dzdeckgunAP2",0.7,BusterDefaultTrail,BusterDefaultExplosion,2,0.4,300)

ToUranium("dzdeckgunAP3b",0.8,BusterDefaultTrail,BusterDeckgunExplosion,3,0.2)
ToUranium("dzdeckgunAP3",0.8,BusterDefaultTrail,BusterDefaultExplosion,3,0.6,300)

ToUranium("dzdeckgunAP38b",0.7,BusterDefaultTrail,BusterDeckgunExplosion,3,0.2)
ToUranium("dzdeckgunAP38",0.7,BusterDefaultTrail,BusterDefaultExplosion,3,0.4,300)

ToUranium("dzdeckgunAP4b",1.0,BusterDefaultTrail,BusterDeckgunExplosion,4,0.2)
ToUranium("dzdeckgunAP4",1.0,BusterDefaultTrail,BusterDefaultExplosion,4,0.8,280)

ToUranium("dzdeckgunAP5b",1.2,BusterDefaultTrail,BusterDeckgunExplosion,5,0.2)
ToUranium("dzdeckgunAP5",1.2,BusterDefaultTrail,BusterDefaultExplosion,5,1,350)


--RegisterApplyMod(CommanderApplyModBase)