Interloper = RegisterMod("Interloper", 1)
local mod = Interloper

local gratePlayer = Isaac.GetPlayerTypeByName("Grate")
local gravestoneSouls = 0

local COLLECTIBLE_GRAVESTONE = Isaac.GetItemIdByName("Gravestone")

local function CheckIfGrate(player)
    if player:GetPlayerType() == gratePlayer then
        return true
    else 
        return false
    end
end

local function GiveGrateStartingItems(_,player)
    if CheckIfGrate(player) == true then
        player:AddInnateCollectible(CollectibleType.COLLECTIBLE_NEPTUNUS, 1, "forevah", -1, false )
        player:SetPocketActiveItem(COLLECTIBLE_GRAVESTONE, ActiveSlot.SLOT_POCKET, true)
    else
        return
    end
end

-- cool

mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, GiveGrateStartingItems)

local function UseGravestone(_, item, rng, player)
    if CheckIfGrate(player) == true then
        Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PURGATORY, 1, player.Position, Vector(0,0), player)
    else

    end
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, UseGravestone, COLLECTIBLE_GRAVESTONE )