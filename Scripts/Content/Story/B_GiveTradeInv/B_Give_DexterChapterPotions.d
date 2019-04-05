func void B_Give_DexterChapterPotions()
{
    var C_NPC npc;
    npc = Hlp_GetNpc(Stt_329_Dexter);
    
    if(Dexter_GetKalomsRecipe == LOG_SUCCESS)
    {
        CreateInvItems	(npc, ItFo_Potion_Health_01,10);
        CreateInvItems	(npc, ItFo_Potion_Health_02, 5);
        CreateInvItems	(npc, ItFo_Potion_Mana_01,   8);
        CreateInvItems	(npc, ItMiNugget,200);
    };
};

func void B_Give_DexterDead()
{
    var C_NPC npc;
    npc = Hlp_GetNpc(Stt_329_Dexter);
    
    CreateInvItems	(npc, ItKeLockpick,2);
    CreateInvItems  (npc, ItAmArrow, 15);
    CreateInvItems	(npc, ItMiNugget,20);
    CreateInvItems	(npc, ItMiJoint_1,3);
	CreateInvItems	(npc, ItMiJoint_2,2);
	CreateInvItems	(npc, ItMiJoint_3,1);
    CreateInvItems	(npc, ItFo_Potion_Health_01,1);
    CreateInvItems	(npc, ItFo_Potion_Health_02, 1);
    CreateInvItems	(npc, ItFo_Potion_Mana_01,   1);
    if(Dexter_GetKalomsRecipe == LOG_SUCCESS)
    &&(Kapitel > 1)
    {
        if(Kapitel == 2)
        {
            CreateInvItems	(npc, ItMiNugget,20);
            CreateInvItems	(npc, ItFo_Potion_Health_01,1);
            CreateInvItems	(npc, ItFo_Potion_Health_02, 1);
            CreateInvItems	(npc, ItFo_Potion_Mana_01,   1);
        }
        else // Kapitel > 2
        {
            CreateInvItems	(npc, ItMiNugget,40);
            CreateInvItems	(npc, ItFo_Potion_Health_01,2);
            CreateInvItems	(npc, ItFo_Potion_Health_02, 2);
            CreateInvItems	(npc, ItFo_Potion_Mana_01,  2);
        };
    };
};

func void B_Give_DexterDeadWeapons()
{
    var C_NPC npc;
    npc = Hlp_GetNpc(Stt_329_Dexter);

    CreateInvItem( npc, ItMw_1H_Sword_Short_04 );
};

func void B_Give_DexterDeadRangedWeapons()
{
    var C_NPC npc;
    npc = Hlp_GetNpc(Stt_329_Dexter);

    CreateInvItem( npc, ItRw_Bow_Small_03 );
};