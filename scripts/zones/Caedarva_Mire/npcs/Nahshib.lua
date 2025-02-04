-----------------------------------
-- Area: Caedarva Mire
--  NPC: Nahshib
-- Type: Assault
-- !pos -274.334 -9.287 -64.255 79
-----------------------------------
require("scripts/settings/main")
require("scripts/globals/status")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/quests")
local ID = require("scripts/zones/Caedarva_Mire/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local toauMission = player:getCurrentMission(TOAU)
    local beginnings = player:getQuestStatus(xi.quest.log_id.AHT_URHGAN, xi.quest.id.ahtUrhgan.BEGINNINGS)

    -- BEGINNINGS
    if (beginnings == QUEST_ACCEPTED) then
        if (not player:hasKeyItem(xi.ki.BRAND_OF_THE_GALESERPENT)) then
            player:startEvent(10) -- brands you
        else
            player:startEvent(11) -- so now i am the teacher?
        end

    -- ASSAULT
    elseif (toauMission >= xi.mission.id.toau.PRESIDENT_SALAHEEM) then
        local IPpoint = player:getCurrency("imperial_standing")
        if (player:hasKeyItem(xi.ki.PERIQIA_ASSAULT_ORDERS) and player:hasKeyItem(xi.ki.ASSAULT_ARMBAND) == false) then
            player:startEvent(148, 50, IPpoint)
        else
            player:startEvent(7)
            -- player:delKeyItem(xi.ki.ASSAULT_ARMBAND)
        end

    -- DEFAULT DIALOG
    else
        player:startEvent(4)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    -- BEGINNINGS
    if (csid == 10) then
        player:addKeyItem(xi.ki.BRAND_OF_THE_GALESERPENT)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.BRAND_OF_THE_GALESERPENT)

    -- ASSAULT
    elseif (csid == 148 and option == 1) then
        player:delCurrency("imperial_standing", 50)
        player:addKeyItem(xi.ki.ASSAULT_ARMBAND)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.ASSAULT_ARMBAND)
    end
end

return entity
