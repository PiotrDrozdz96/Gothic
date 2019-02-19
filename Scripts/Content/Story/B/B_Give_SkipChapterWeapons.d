func void B_Give_SkipChapter2Weapons () //(20-33)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(Grd_211_Skip);
	
	//-------- Nahkampfwaffen --------
	CreateInvItems	(npc, ItKeLockpick,20);
	CreateInvItem (npc,ItMw_1H_Sword_01); //Niewykończony miecz 25,20
	CreateInvItem (npc,ItMw_1H_Sword_02); //Miecz Sędziego 25,20
	CreateInvItem (npc,ItMw_1H_Sword_04); //Miecz bojowy 35,30 
	CreateInvItem (npc,ItMw_1H_Sword_04); //Miecz bojowy 35,30
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_01); //Długi Miecz 30,30 
	CreateInvItem	(npc,	ItMw_1H_Sword_Broad_01); //Miecz Szeroki 25,20 
	CreateInvItem	(npc,	ItMw_1H_Sword_Broad_02); //Wyrok Wojownika 30,20 
	
	CreateInvItem	(npc, ITSH_G3_04); 
	
	CreateInvItems (npc,ItMiNugget,400); 
	
	CreateInvItems (npc,ItAmArrow,200);
	CreateInvItems (npc,ItAmBolt,200);

	//-------- Fernkampfwaffen --------
	
 
	//-------- Munition --------
  
};

func void B_Give_SkipChapter3Weapons () //(40-55)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(Grd_211_Skip);
	
	//-------- Nahkampfwaffen --------
	CreateInvItems	(self, ItKeLockpick,30);
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_02); //Miecz Strachu 40,35
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_03); //Miecz Nienawiści 45,40
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_04); //Miecz Zwycięstwa 45,35
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_04); //Miecz Zwycięstwa 45,35
	CreateInvItem (npc,ItMw_1H_Sword_03); //Miecz Strażnika 50,50 
	CreateInvItem (npc,ItMw_2H_Sword_Light_04); //Miecz Królewski 50,50 
	
	CreateInvItem	(npc, ITSH_G3_03); 
	
	CreateInvItems (npc,ItAmArrow,400);
	CreateInvItems (npc,ItAmBolt,400);
	
	CreateInvItems (npc,ItMiNugget,600); 
	//-------- Fernkampfwaffen --------
	

	//-------- Munition --------
  
};