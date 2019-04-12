func void B_Story_OMFull ()
{
    B_ExchangeRoutine(Vlk_580_Grim, "start");
    B_ExchangeRoutine(Org_826_Mordrag, "start");

    var C_NPC grd_212; grd_212 = Hlp_GetNpc(GRD_212_Torwache);
    if(grd_212.aivar[AIV_PASSGATE] == TRUE)
    {
        B_ExchangeRoutine(Grd_212_Torwache, "OMFull");
    };

    var C_NPC grd_213; grd_213 = Hlp_GetNpc(GRD_213_Torwache);
    if(grd_213.aivar[AIV_PASSGATE] == TRUE)
    {
        B_ExchangeRoutine(Grd_213_Torwache, "OMFull");
    };

    // B_ExchangeRoutine(Grd_240_Gardist, "OMFull");
    B_ExchangeRoutine(Grd_241_Gardist, "OMFull");
    B_ExchangeRoutine(Grd_242_Gardist, "OMFull");
    B_ExchangeRoutine(Grd_243_Gardist, "OMFull");
    B_ExchangeRoutine(Grd_205_Scorpio, "OMFull");
    B_ExchangeRoutine(Ebr_103_Drak,   "OMFull");

    var C_NPC grd_204; grd_204 = Hlp_GetNpc(GRD_204_Gardist);
    var C_NPC grd_220; grd_220 = Hlp_GetNpc(GRD_220_Gardist);
    var C_NPC grd_221; grd_221 = Hlp_GetNpc(GRD_221_Gardist);

    Mdl_SetVisualBody (grd_204,"hum_body_Naked0", 0, 3,"Hum_Head_Fighter", 1,  1, DHT_ARMOR_M);
    Mdl_SetVisualBody (grd_220,"hum_body_Naked0", 0, 1,"Hum_Head_FatBald", 19,  1, DHT_ARMOR_M);
    Mdl_SetVisualBody (grd_221,"hum_body_Naked0", 0, 0,"Hum_Head_Fighter", 1,  2, DHT_ARMOR_M);

    grd_204.level = 20;
    grd_220.level = 20;
    grd_221.level = 20;

    grd_204.attribute[ATR_STRENGTH]         = 80;
    grd_204.attribute[ATR_DEXTERITY]        = 80;
    grd_204.attribute[ATR_HITPOINTS_MAX]    = 320;
    grd_204.attribute[ATR_HITPOINTS]        = 320;

    grd_220.attribute[ATR_STRENGTH]         = 80;
    grd_220.attribute[ATR_DEXTERITY]        = 80;
    grd_220.attribute[ATR_HITPOINTS_MAX]    = 320;
    grd_220.attribute[ATR_HITPOINTS]        = 320;

    grd_221.attribute[ATR_STRENGTH]         = 80;
    grd_221.attribute[ATR_DEXTERITY]        = 80;
    grd_221.attribute[ATR_HITPOINTS_MAX]    = 320;
    grd_221.attribute[ATR_HITPOINTS]        = 320;

    Npc_SetTalentSkill (grd_204, NPC_TALENT_1H,2);
    Npc_SetTalentSkill (grd_220, NPC_TALENT_1H,2);
    Npc_SetTalentSkill (grd_221, NPC_TALENT_1H,2);

    CreateInvItem(grd_204,ItMw_1H_Sword_DHT);
    CreateInvItem(grd_220,ItMw_1H_Sword_DHT);
    CreateInvItem(grd_221,ItMw_1H_Sword_DHT);
};