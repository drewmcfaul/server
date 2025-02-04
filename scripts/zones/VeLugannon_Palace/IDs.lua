-----------------------------------
-- Area: VeLugannon_Palace
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.VELUGANNON_PALACE] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED  = 6383,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED            = 6389,  -- Obtained: <item>.
        GIL_OBTAINED             = 6390,  -- Obtained <number> gil.
        KEYITEM_OBTAINED         = 6392,  -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY  = 6403,  -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS      = 7000,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY  = 7001,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER             = 7002,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CONQUEST_BASE            = 7056,  -- Tallying conquest results...
        CHEST_UNLOCKED           = 7223,  -- You unlock the chest!
        EVIL_PRESENCE            = 7233,  -- You sense an evil presence lurking in the shadows...
        KNIFE_CHANGES_SHAPE      = 7240,  -- The <item> begins to change shape.
        NOTHING_HAPPENS          = 7241,  -- Nothing happens.
        REGIME_REGISTERED        = 10166, -- New training regime registered!
        PLAYER_OBTAINS_ITEM      = 11218, -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM    = 11219, -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM = 11220, -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP     = 11221, -- You already possess that temporary item.
        NO_COMBINATION           = 11226, -- You were unable to enter a combination.
    },
    mob =
    {
        MIMIC            = 17502567,
        BRIGANDISH_BLADE = 17502568,
    },
    npc =
    {
        QM3             = 17502583,
        CASKET_BASE     = 17502585,
        Y_DOOR_OFFSET   = 17502608,
        B_DOOR_OFFSET   = 17502616,
        Y_LITH_OFFSET   = 17502624,
        B_LITH_OFFSET   = 17502634,
        TREASURE_COFFER = 17502699,
    },
}

return zones[xi.zone.VELUGANNON_PALACE]
