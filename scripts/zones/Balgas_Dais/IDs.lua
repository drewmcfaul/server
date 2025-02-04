-----------------------------------
-- Area: Balgas_Dais
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.BALGAS_DAIS] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED      = 6383, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                = 6389, -- Obtained: <item>.
        GIL_OBTAINED                 = 6390, -- Obtained <number> gil.
        KEYITEM_OBTAINED             = 6392, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS          = 7000, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY      = 7001, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER                 = 7002, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CONQUEST_BASE                = 7056, -- Tallying conquest results...
        YOU_DECIDED_TO_SHOW_UP       = 7637, -- So, you decided to show up. Now it's time to see what you're really made of, heh heh heh.
        LOOKS_LIKE_YOU_WERENT_READY  = 7638, -- Looks like you weren't ready for me, were you? Now go home, wash your face, and come back when you think you've got what it takes.
        YOUVE_COME_A_LONG_WAY        = 7639, -- Hm. That was a mighty fine display of skill there, <name>. You've come a long way...
        TEACH_YOU_TO_RESPECT_ELDERS  = 7640, -- I'll teach you to respect your elders!
        TAKE_THAT_YOU_WHIPPERSNAPPER = 7641, -- Take that, you whippersnapper!
        NOW_THAT_IM_WARMED_UP        = 7642, -- Now that I'm warmed up...
        THAT_LL_HURT_IN_THE_MORNING  = 7643, -- Ungh... That'll hurt in the morning...
        PROMISE_ME_YOU_WONT_GO_DOWN  = 7681, -- Promise you won't go down too easy, okay?
        IM_JUST_GETTING_WARMED_UP    = 7682, -- Haha! I'm just getting warmed up!
        YOU_PACKED_MORE_OF_A_PUNCH   = 7683, -- Hah! You pack more of a punch than I thoughtaru. But I won't go down as easy as old Maat!
        WHATS_THIS_STRANGE_FEELING   = 7684, -- What's this strange feeling...? It's not supposed to end...like...
        HUH_IS_THAT_ALL              = 7685, -- Huh? Is that all? I haven't even broken a sweataru...
        YIKEY_WIKEYS                 = 7686, -- Yikey-wikeys! Get that thing away from meee!
        WHATS_THE_MATTARU            = 7687, -- <Pant, wheeze>... What's the mattaru, <name>? Too much of a pansy-wansy to fight fair?
    },
    mob =
    {
        ATORI_TUTORI_QM =
        {
            17375491,
            17375492,
            17375493,
        },
    },
    npc =
    {
    },
}

return zones[xi.zone.BALGAS_DAIS]
