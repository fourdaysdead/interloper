Interloper = RegisterMod("Interloper", 1)
local mod = Interloper



local gratePlayer = Isaac.GetPlayerTypeByName("Grate")

local function CheckIfGrate(player)
    if player:GetPlayerType() == gratePlayer then
        return true
    else 
        return false
    end
end

local function GiveNeptunus(_,player)
    if CheckIfGrate(player) == true then
        player:AddInnateCollectible(CollectibleType.COLLECTIBLE_NEPTUNUS, 1, "forevah", -1, false )
    else
        return
    end
end

mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, GiveNeptunus)