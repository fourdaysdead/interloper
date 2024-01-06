local grate = {}

local config = Isaac.GetItemConfig():GetCollectible(CollectibleType.COLLECTIBLE_NEPTUNUS)
local gratePlayer = Isaac.GetPlayerTypeByName("Grate", false)

function grate:CheckIfGrate(_,player)
    if player:GetPlayerTypeByName() == gratePlayer then
        grate.IsGrate = true
    else
        grate.IsGrate = false
    end
end

function grate:RemoveCostume(_,player)
    player:RemoveCostume(config)
end

Interloper:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, grate:CheckIfGrate())
Interloper:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, grate:RemoveCostume())

return grate

