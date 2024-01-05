Interloper = RegisterMod("Interloper", 1)
local mod = Interloper

function Coolio:(_,_,_,player)

    IIsaac.Spawn:(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, 0, Vector(0,0), Vector(0,0), player)

end

mod:AddCallback.ModCallbacks(MC_POST_PLAYER_INIT, Coolio)
