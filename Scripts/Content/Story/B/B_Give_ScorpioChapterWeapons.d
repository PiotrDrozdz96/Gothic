
func void B_Give_ScorpioChapter4Weapons () //(55-65)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(GRD_205_Scorpio);
	//-------- Nahkampfwaffen --------
	CreateInvItem	(npc,	ItMw_1H_Sword_Broad_03); //Szept Burzy 60,50
	CreateInvItem	(npc,	ItMw_1H_Sword_Broad_04); //Ręka Strażnika 60,50
	
	CreateInvItem	(npc,	ItMw_1H_Sword_Bastard_01); //Zardzewiały miecz pótoraręczny 45,45
	CreateInvItem	(npc,	ItMw_1H_Sword_Bastard_02); //Rzeźnik 64,64
	CreateInvItem	(npc,	ItMw_1H_Sword_Bastard_03); //Kat 65,65
	CreateInvItem	(npc,	ItMw_1H_Sword_Bastard_04); //Wrzask Berserkera 66,66
	CreateInvItem	(npc,	ItMw_1H_Sword_Bastard_04); //Wrzask Berserkera 66,66
	
	CreateInvItem	(npc,	ITSH_W2_E3_REDANIA); 

	CreateInvItems (npc,ItMiNugget,800);
	CreateInvItems (npc,ItAmBolt,800);
	
	CreateInvItem (npc,Gewandtheitsamulett2);
	CreateInvItem (npc,Staerkeamulett2);
	
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Crossbow_01);
	CreateInvItem (npc,ItRw_Crossbow_02);
	CreateInvItem (npc,ItRw_Crossbow_03);
 
	//-------- Munition --------
 
};

func void B_Give_ScorpioChapter5Weapons () //(71-92)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(GRD_205_Scorpio);
	
	//-------- Nahkampfwaffen --------
	
	CreateInvItems (npc,ItMiNugget,1000);
	CreateInvItems (npc,ItAmBolt,1000);
	//-------- Fernkampfwaffen --------
	
	CreateInvItems (npc,ItRw_Crossbow_04,2);

	//-------- Munition --------
  
};

func void B_Give_ScorpioChapter6Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(GRD_205_Scorpio);
	
	//-------- Nahkampfwaffen --------
	
	CreateInvItems (npc,ItMiNugget,600);
	CreateInvItems (npc,ItAmBolt,1000);
	//-------- Fernkampfwaffen --------


	//-------- Munition --------
  
};