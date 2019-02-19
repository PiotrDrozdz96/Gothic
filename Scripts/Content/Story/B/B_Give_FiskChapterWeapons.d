func void B_Give_FiskChapter1Weapons () //(0-20)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(Stt_311_Fisk);
	
	//-------- Nahkampfwaffen --------
	CreateInvItems	(self, ItKeLockpick,10);
	CreateInvItem (npc,ItMw_1H_Sword_Old_01); //Zardzewiały miecz 10,10 	
	CreateInvItem (npc,ItMw_1H_Sword_Short_01); //Krótki miecz 10,10
	CreateInvItem (npc,ItMw_1H_Sword_Short_02); //Chłopski miecz 12,10	
	CreateInvItem (npc,ItMw_1H_Sword_Short_03); //Język topielca 16,10
	CreateInvItem (npc,ItMw_1H_Sword_Short_04); //Kłujący cierń 20,10
	CreateInvItem (npc,ItMw_1H_Sword_Short_05); //Ząb Kopacza 25,15
	CreateInvItem (npc,ItMw_1H_Sword_Short_05); //Ząb Kopacza 25,15
	
	CreateInvItem (npc,ITSH_G3_02_V2);
	CreateInvItem (npc,ITSH_G3_BROKEN);
	CreateInvItem (npc,ITSH_W2_E2_KAEDWEN);
	
	CreateInvItems (npc,ItMiNugget,200);
	//-------- Fernkampfwaffen --------
	//-------- Munition --------
    
};

func void B_Give_FiskChapter2Weapons () //(20-33)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(Stt_311_Fisk);
	
	//-------- Nahkampfwaffen --------
	CreateInvItems	(self, ItKeLockpick,20);
	CreateInvItem (npc,ItMw_1H_Sword_01); //Niewykończony miecz 25,20
	CreateInvItem (npc,ItMw_1H_Sword_02); //Miecz Sędziego 25,20
	CreateInvItem (npc,ItMw_1H_Sword_04); //Miecz bojowy 35,30 
	CreateInvItem (npc,ItMw_1H_Sword_04); //Miecz bojowy 35,30 
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_01); //Długi Miecz 30,30 
	CreateInvItem	(npc,	ItMw_1H_Sword_Broad_01); //Miecz Szeroki 25,20 
	CreateInvItems (npc,ItMiNugget,400); 
	//-------- Fernkampfwaffen --------
	
 
	//-------- Munition --------
  
};

func void B_Give_FiskChapter3Weapons () //(40-55)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(Stt_311_Fisk);
	
	//-------- Nahkampfwaffen --------
	CreateInvItems	(self, ItKeLockpick,30);
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_02); //Miecz Strachu 40,35
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_03); //Miecz Nienawiści 45,40
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_04); //Miecz Zwycięstwa 45,35
	CreateInvItem	(npc,	ItMw_1H_Sword_Long_04); //Miecz Zwycięstwa 45,35
	CreateInvItems (npc,ItMiNugget,600); 
	//-------- Fernkampfwaffen --------
	//-------- Munition --------
  
};


