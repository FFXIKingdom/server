-----------------------------------
-- Area: Lufaise Meadows
--  NPC: ??? - Amaltheia spawn
-- !pos 347.897 -10.895 264.382 24
-----------------------------------
local ID = require("scripts/zones/Lufaise_Meadows/IDs")
require("scripts/globals/npc_util")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    if
        npcUtil.tradeHas(trade, 15066) and
        npcUtil.popFromQM(player, npc, ID.mob.AMALTHEIA)
    then
        -- Relic Shield
        player:confirmTrade()
    end
end

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY)
end

return entity
