func void B_ClearRuneInv (var C_NPC slf)
{
    Npc_RemoveInvItems	(slf ,ItArRuneLight ,               Npc_HasItems (slf, ItArRuneLight ));
    Npc_RemoveInvItems	(slf ,ItArRuneFirebolt ,            Npc_HasItems (slf, ItArRuneFirebolt ));
    Npc_RemoveInvItems	(slf ,ItArRuneFireball ,            Npc_HasItems (slf, ItArRuneFireball ));
    Npc_RemoveInvItems	(slf ,ItArRuneFirestorm ,           Npc_HasItems (slf, ItArRuneFirestorm ));
    Npc_RemoveInvItems	(slf ,ItArRuneFireRain ,            Npc_HasItems (slf, ItArRuneFireRain ));
    Npc_RemoveInvItems	(slf ,ItArRuneHeal ,                Npc_HasItems (slf, ItArRuneHeal ));
    Npc_RemoveInvItems	(slf ,ItArRuneChainLightning ,      Npc_HasItems (slf, ItArRuneChainLightning ));
    Npc_RemoveInvItems	(slf ,ItArRuneThunderbolt ,         Npc_HasItems (slf, ItArRuneThunderbolt ));
    Npc_RemoveInvItems	(slf ,ItArRuneThunderball ,         Npc_HasItems (slf, ItArRuneThunderball ));
    Npc_RemoveInvItems	(slf ,ItArRuneIceCube ,             Npc_HasItems (slf, ItArRuneIceCube ));
    Npc_RemoveInvItems	(slf ,ItArRuneIceWave ,             Npc_HasItems (slf, ItArRuneIceWave ));
    Npc_RemoveInvItems	(slf ,ItArRuneDestroyUndead ,       Npc_HasItems (slf, ItArRuneDestroyUndead ));
    Npc_RemoveInvItems	(slf ,ItArRuneWindfist ,            Npc_HasItems (slf, ItArRuneWindfist ));
    Npc_RemoveInvItems	(slf ,ItArRuneStormfist ,           Npc_HasItems (slf, ItArRuneStormfist ));
    Npc_RemoveInvItems	(slf ,ItArRuneTelekinesis ,         Npc_HasItems (slf, ItArRuneTelekinesis ));
    Npc_RemoveInvItems	(slf ,ItArRuneCharm ,               Npc_HasItems (slf, ItArRuneCharm ));
    Npc_RemoveInvItems	(slf ,ItArRunePyrokinesis ,         Npc_HasItems (slf, ItArRunePyrokinesis ));
    Npc_RemoveInvItems	(slf ,ItArRuneControl ,             Npc_HasItems (slf, ItArRuneControl ));
    Npc_RemoveInvItems	(slf ,ItArRuneFear ,                Npc_HasItems (slf, ItArRuneFear ));
};

func void Npc_ClearInventoryLoop (var C_NPC npc, var int category)
// In¿. Avallach
// https://themodders.org/index.php?topic=20123.0
{
        var int amount;
        amount = Npc_GetInvItemBySlot (npc, category, 0);

        if (category == INV_ARMOR)
        {
            Npc_ClearInventoryLoop(npc, category+1);
        }
        else if (amount>0)
        {
            NPC_RemoveInvItems (npc, Hlp_GetInstanceID (item), amount);
            Npc_ClearInventoryLoop(npc, category);
        }
        else if (category < INV_CAT_MAX-1)
        {
            Npc_ClearInventoryLoop(npc, category+1);
        };
};

func void Npc_ClearInventory (var C_NPC npc)
{
    Npc_ClearInventoryLoop(npc, 0);
};

func void B_ClearDeadTrader() 
{

    var C_ITEM meleeWeapon;  meleeWeapon    = Npc_GetEquippedMeleeWeapon(self);
    var C_ITEM rangedWeapon; rangedWeapon   = Npc_GetEquippedRangedWeapon(self);

    var C_NPC Fisk;     Fisk    = Hlp_GetNpc(STT_311_Fisk); 
    var C_NPC Dexter;   Dexter  = Hlp_GetNpc(STT_329_Dexter);
    var C_NPC Huno;     Huno    = Hlp_GetNpc(VLK_538_Huno);
    var C_NPC Skip;     Skip    = Hlp_GetNpc(GRD_211_Skip);
    var C_NPC Torrez;   Torrez  = Hlp_GetNpc(KDF_405_Torrez);
    var C_NPC Viper;    Viper   = Hlp_GetNpc(STT_302_Viper);
    var C_NPC Sharky;   Sharky  = Hlp_GetNpc(ORG_843_Sharky);
    var C_NPC Wolf;     Wolf    = Hlp_GetNpc(ORG_855_Wolf);
    var C_NPC Riordian; Riordian= Hlp_GetNpc(KDW_605_Riordian);
    var C_NPC Darrion;  Darrion = Hlp_GetNpc(NOV_1312_Darrion);
    var C_NPC Cadar;    Cadar   = Hlp_GetNpc(GUR_1208_BaalCadar);
    var C_NPC Cavalorn; Cavalorn= Hlp_GetNpc(STT_336_Cavalorn);
    var C_NPC Scorpio;  Scorpio = Hlp_GetNpc(GRD_205_Scorpio);

    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Fisk)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_FiskDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_FiskDeadWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Dexter)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_DexterDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_DexterDeadWeapons();
            };
            if(Hlp_IsValidItem(rangedWeapon))
            {
                B_Give_DexterDeadRangedWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Huno)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_HunoDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_HunoDeadWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Skip)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_SkipDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_SkipDeadWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Torrez)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_TorrezDead();
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Viper)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_ViperDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_ViperDeadWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Sharky)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_SharkyDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_SharkyDeadWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Wolf)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_WolfDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_WolfDeadWeapons();
            };
            if(Hlp_IsValidItem(rangedWeapon))
            {
                B_Give_WolfDeadRangedWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Riordian)	
    {
        Npc_ClearInventory	(self);
        B_Give_RiordianDead();
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Darrion)		
    {
        Npc_ClearInventory	(self);
        B_Give_DarrionDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_DarrionDeadWeapons();
            };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Cadar)		
    {
        Npc_ClearInventory	(self);
        B_Give_BaalCadarDead();
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Cavalorn)	
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_CavalornDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_CavalornDeadWeapons();
            };
            if(Hlp_IsValidItem(rangedWeapon))
            {
                B_Give_CavalornDeadRangedWeapons();
            };
        };
    };
    if  Hlp_GetInstanceID (self) == Hlp_GetInstanceID (Scorpio)		
    {
        Npc_ClearInventory	(self);
        if(!self.aivar[ AIV_WASDEFEATEDBYSC ])
        {
            B_Give_ScorpioDead();
            if(Hlp_IsValidItem(meleeWeapon))
            {
                B_Give_ScorpioDeadWeapons();
            };
            if(Hlp_IsValidItem(rangedWeapon))
            {
                B_Give_ScorpioDeadRangedWeapons();
            };
        };
    };
};