-----------------------------------
-- New Worlds Await
-----------------------------------
-- Log ID: 3, Quest ID: 133
-- Nomad Moogle : !pos 10.012 1.453 121.883 243
-----------------------------------
require('scripts/settings/main')
require('scripts/globals/items')
require('scripts/globals/keyitems')
require('scripts/globals/npc_util')
require('scripts/globals/quests')
require('scripts/globals/interaction/quest')
-----------------------------------
local ruludeID = require('scripts/zones/RuLude_Gardens/IDs')
-----------------------------------

local quest = Quest:new(xi.quest.log_id.JEUNO, xi.quest.id.jeuno.NEW_WORLDS_AWAIT)

quest.reward =
{
    fame = 50,
    fameArea = JEUNO,
}

quest.sections =
{
    -- Section: Quest available. Player doesn't have Limit Breaker KI.
    {
        check = function(player, status, vars)
            return status == QUEST_AVAILABLE and
                xi.settings.MAX_LEVEL >= 75 and
                player:getMainLvl() >= 75 and
                player:getLevelCap() == 75 and
                not player:hasKeyItem(xi.ki.LIMIT_BREAKER)
        end,

        [xi.zone.RULUDE_GARDENS] =
        {
            ['Nomad_Moogle'] =
            {
                onTrigger = function(player, npc)
                    -- NOTE:
                    -- Event 10045 is the global event used in all Limit break quest from 6 to 10.
                    -- First argument is mostly 0 in all except here, wich happens to be either player level or level cap.
                    -- Second or third argument goes up the higher the LB quest
                    -- The rest, i have no clue. I havent tried it without those, but im inclined to believe they are just unused garbage data.
                    return quest:progressEvent(10045, 75, 2, 10, 7, 30, 302895, 4095)
                end,
            },

            onEventFinish =
            {
                [10045] = function(player, csid, option, npc)
                    if option == 4 then
                        npcUtil.giveKeyItem(player, xi.ki.LIMIT_BREAKER)
                    end
                end,
            },
        },
    },

    -- Section: Quest available. Got Limit Breaker KI. Era server section.
    {
        check = function(player, status, vars)
            return status == QUEST_AVAILABLE and
                xi.settings.MAX_LEVEL == 75 and
                player:getMainLvl() >= 75 and
                player:getLevelCap() == 75 and
                player:hasKeyItem(xi.ki.LIMIT_BREAKER)
        end,

        [xi.zone.RULUDE_GARDENS] =
        {
            ['Nomad_Moogle'] =
            {
                onTrigger = function(player, npc)
                    return quest:event(10045, 0, 1, 0, 0)
                end,
            },
        },
    },

    -- Section: Quest available. Got Limit Breaker KI. Can actually raise level cap.
    {
        check = function(player, status, vars)
            return status == QUEST_AVAILABLE and
                xi.settings.MAX_LEVEL >= 80 and
                player:getMainLvl() >= 75 and
                player:getLevelCap() == 75 and
                player:hasKeyItem(xi.ki.LIMIT_BREAKER)
        end,

        [xi.zone.RULUDE_GARDENS] =
        {
            ['Nomad_Moogle'] =
            {
                onTrigger = function(player, npc)
                    return quest:progressEvent(10045, 0, 1, 1, 0)
                end,
            },

            onEventFinish =
            {
                [10045] = function(player, csid, option, npc)
                    if option == 5 then -- Accept quest option.
                        quest:begin(player)
                    end
                end,
            },
        },
    },

    -- Section: Quest accepted.
    {
        check = function(player, status, vars)
            return status == QUEST_ACCEPTED
        end,

        [xi.zone.RULUDE_GARDENS] =
        {
            ['Nomad_Moogle'] =
            {
                onTrigger = function(player, npc)
                    return quest:event(10045, 0, 1, 1, 1)
                end,

                onTrade = function(player, npc, trade)
                    if
                        npcUtil.tradeHasExactly(trade, {{xi.items.KINDREDS_SEAL, 5}}) and
                        player:getMeritCount() > 2
                    then
                        return quest:progressEvent(10135)
                    end
                end,
            },

            onEventFinish =
            {
                [10135] = function(player, csid, option, npc)
                    if quest:complete(player) then
                        player:tradeComplete()
                        player:setMerits(player:getMeritCount() - 3)
                        player:setLevelCap(80)
                        player:messageSpecial(ruludeID.text.YOUR_LEVEL_LIMIT_IS_NOW_80)
                    end
                end,
            },
        },
    },
}

return quest
