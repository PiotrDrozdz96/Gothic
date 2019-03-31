func void B_Evolve_OC ()
{
    var C_NPC dexter; dexter = Hlp_GetNpc(STT_329_Dexter);
    if (Dexter_GetKalomsRecipe == LOG_SUCCESS)
    {
        Mdl_SetVisualBody (dexter,"hum_body_Naked0", 0, 1,"Hum_Head_FatBald", 58,  1, STT_ARMOR_H);
    };

    var C_NPC fisk; fisk = Hlp_GetNpc(STT_311_Fisk);
    var C_NPC sharky; sharky = Hlp_GetNpc(Org_843_Sharky);
    if (Fisk_GetNewHehler == LOG_SUCCESS)
    {
        Mdl_SetVisualBody (fisk,"hum_body_Naked0", 0, 3,"Hum_Head_Bald", 10,  2, STT_ARMOR_H);
        Mdl_SetVisualBody (sharky,"hum_body_Naked0",0,3,"Hum_Head_FatBald", 6, 1, ORG_ARMOR_M);
    };

    var C_NPC grim; grim = Hlp_GetNpc(VLK_580_Grim);
    grim.guild = GIL_STT;
    Mdl_ApplyOverlayMds	(grim,"Humans_Relaxed.mds");
    Mdl_SetVisualBody (grim,"hum_body_Naked0",2,1,"Hum_Head_Thief", 72,  2, STT_ARMOR_M);
    CreateInvItem	(grim,ItMw_1H_Sword_Short_04);
};

func void B_Evolve_Sekte ()
{
    var C_NPC melvin; melvin = Hlp_GetNpc(VLK_582_Melvin);
    Mdl_ApplyOverlayMds	(melvin,"Humans_Relaxed.mds");
	Mdl_SetVisualBody	(melvin,"hum_body_Naked0",1,1,"Hum_Head_Bald", 75,  3,  NOV_ARMOR_L);
    CreateInvItem (melvin, ItMw_1H_Hatchet_01);

    var C_NPC dusty; dusty = Hlp_GetNpc(VLK_524_Dusty);
    if(dusty.guild == GIL_NOV)
    {
        Mdl_ApplyOverlayMds	(dusty,"Humans_Relaxed.mds");
	    Mdl_SetVisualBody (dusty,"hum_body_Naked0",1,1,"Hum_Head_Bald", 30,  0, NOV_ARMOR_L);
        CreateInvItem (dusty, ItMw_1H_Hatchet_01);
    };

    var C_NPC mud; mud = Hlp_GetNpc(VLK_574_Mud);
    if(mud.guild == GIL_NOV)
    {
        mud.level = 9;
        mud.attribute[ATR_HITPOINTS_MAX] 	=	148;
        mud.attribute[ATR_HITPOINTS] 		=	148;
        mud.fight_tactic	=	FAI_HUMAN_STRONG;
        Npc_SetTalentSkill (mud, NPC_TALENT_1H,1);
        Mdl_ApplyOverlayMds (mud,	"Humans_Mage.mds");
	    Mdl_SetVisualBody (mud,"hum_body_Naked0",1,1,"Hum_Head_Bald", 126,  0, NOV_ARMOR_M);
        CreateInvItem (mud, ItMw_1H_Mace_01);
    };
};

func void B_Evolve_SekteSpy()
{
    var C_NPC grim; grim = Hlp_GetNpc(VLK_580_Grim);
    var C_NPC mordrag; mordrag = Hlp_GetNpc(ORG_826_Mordrag);

    if(Npc_GetTrueGuild(hero) != GIL_STT)
    {
        grim.level = 9;
        grim.attribute[ATR_HITPOINTS_MAX] 	=	148;
        grim.attribute[ATR_HITPOINTS] 		=	148;
        Mdl_SetVisualBody (grim,"hum_body_Naked0",2,1,"Hum_Head_Thief", 72,  2, STT_ARMOR_H);
        Npc_SetTalentSkill (grim, NPC_TALENT_1H,2);
        CreateInvItem	(grim, ItMw_1H_Sword_02);
        Npc_ExchangeRoutine    (grim,"SEKTE");
    };
    if(Npc_GetTrueGuild(hero) != GIL_ORG)
    {
        Mdl_SetVisualBody (mordrag,"hum_body_Naked0",0, 1, "Hum_Head_FatBald", 36, 2, ORG_ARMOR_M);
        Npc_SetTalentSkill (mordrag, NPC_TALENT_1H, 2);
        Npc_ExchangeRoutine (mordrag,"SEKTE");
    };
};

func void B_Evolve_NC()
{
    var C_NPC gorn; gorn = Hlp_GetNpc(PC_Fighter);
    Mdl_SetVisualBody (gorn, "hum_body_Naked0", 0, 3, "Hum_Head_Fighter", 13, 0, SLD_ARMOR_H);

    var C_NPC wolf; wolf = Hlp_GetNpc(Org_855_Wolf);
    wolf.guild = GIL_SLD;
    Mdl_SetVisualBody (wolf,"hum_body_Naked0",0, 1,"Hum_Head_Bald", 38,  1, SLD_ARMOR_M);

    var C_NPC senyan; senyan = Hlp_GetNpc(SFB_1000_Senyan);
    senyan.level = 4;
    senyan.guild = GIL_ORG;
    Mdl_ApplyOverlayMds	(senyan,"Humans_Relaxed.mds");
    Mdl_SetVisualBody (senyan,"hum_body_Naked0",2,3,"Hum_Head_Bald", 1,  1, ORG_ARMOR_L);
    senyan.fight_tactic	=	FAI_HUMAN_STRONG;
    Npc_SetTalentSkill (senyan, NPC_TALENT_1H,1);
    CreateInvItem (senyan, ItMw_1H_Mace_01);	
};

func void B_Evolve_Cipher()
{
    var C_NPC cipher; cipher = Hlp_GetNpc(ORG_873_Cipher);
    if (!Npc_HasItems(cipher, ORG_ARMOR_H))
    && (CipherJoints == 2)
    {
        cipher.attribute[ATR_STRENGTH] = 50;
        Npc_SetTalentSkill (cipher, NPC_TALENT_2H,1);
        CreateInvItem (cipher, ItMw2hOrcAxe01);
        Mdl_SetVisualBody (cipher,"hum_body_Naked0",0, 1, "Hum_Head_Bald", 50, 2, ORG_ARMOR_H);
    }
    else if (!Npc_HasItems(cipher, ORG_ARMOR_M))
    && (CipherJoints == 1)
    {
        Mdl_SetVisualBody (cipher,"hum_body_Naked0",0, 1, "Hum_Head_Bald", 50, 2, ORG_ARMOR_M);
    };
    if(Cipher_Bussines == LOG_RUNNING)
    {
        Log_SetTopicStatus	(CH3_CipherBussines,	LOG_FAILED);
	    B_LogEntry			(CH3_CipherBussines,"Porzuci³em Ciphera, mo¿e jakoœ za³atwi³ sprawê sam.");
        Cipher_Bussines = LOG_FAILED;
        cipher.aivar[AIV_PARTYMEMBER] = FALSE;
    };
};