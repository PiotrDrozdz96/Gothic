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

    B_ExchangeRoutine(Grd_240_Gardist, "OMFull");
    B_ExchangeRoutine(Grd_241_Gardist, "OMFull");
    B_ExchangeRoutine(Grd_242_Gardist, "OMFull");
    B_ExchangeRoutine(Grd_243_Gardist, "OMFull");
};