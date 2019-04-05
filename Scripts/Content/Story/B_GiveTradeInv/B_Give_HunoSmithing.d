func void B_Give_HunoDead()
{
    var C_NPC npc;
    npc = Hlp_GetNpc(Vlk_538_Huno);

    CreateInvItems	(npc, ItMiSwordRaw, 4);
};

func void B_Give_HunoDeadWeapons()
{
    var C_NPC npc;
    npc = Hlp_GetNpc(Vlk_538_Huno);

    CreateInvItem (npc,	ItMw_1H_Sledgehammer_01);
};