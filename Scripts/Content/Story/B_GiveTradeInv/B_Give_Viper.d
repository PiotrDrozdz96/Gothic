func void B_Give_ViperDead()
{
    var C_NPC npc; 
    npc = Hlp_GetNpc(Stt_302_Viper);

    CreateInvItems (self,ItMinugget,75);
	CreateInvItems (self,ItMi_Coal,2);
	CreateInvItems (self,ItMi_Alchemy_Sulphur_01,2);
	CreateInvItems (self,ItMi_Pitch,2);    
};

func void B_Give_ViperDeadWeapons()
{
    CreateInvItem  (self,ItMw_1H_Sword_Short_04);
};