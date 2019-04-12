
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
	CreateInvItems (npc,ItAmBolt,1600);
	
	CreateInvItem (npc,Gewandtheitsamulett2);
	CreateInvItem (npc,Staerkeamulett2);
	
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Crossbow_01);
	CreateInvItem (npc,ItRw_Crossbow_02);
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
	CreateInvItems (npc,ItAmBolt,2000);
	//-------- Fernkampfwaffen --------
	
	CreateInvItem (npc,ItRw_Crossbow_04);

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

func void B_Give_ScorpioDead()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(GRD_205_Scorpio);

	CreateInvItems	(npc, ItMiNugget,20);
	CreateInvItems	(npc, ItFo_Potion_Health_02,5);
	if(Kapitel == 4)
	{
		CreateInvItems (npc,ItMiNugget,80);
		CreateInvItems (npc,ItAmBolt,160);
	}
	else if(Kapitel == 5)
	{
		CreateInvItems (npc,ItMiNugget,180);
		CreateInvItems (npc,ItAmBolt,360);
	}
	else if(Kapitel == 5)
	{
		CreateInvItems (npc,ItMiNugget,240);
		CreateInvItems (npc,ItAmBolt,460);
	};
};

func void B_Give_ScorpioDeadWeapons()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(GRD_205_Scorpio);
	if(Kapitel < 4)
	{
		CreateInvItem	(self, ItMw_1H_Sword_03);
		CreateInvItem	(self, ITSH_G3_03);
	}
	else //Kapitel >=4
	{
		CreateInvItem	(npc,	ItMw_1H_Sword_Bastard_04);
		CreateInvItem	(npc,	ITSH_W2_E3_REDANIA);
	};
};

func void B_Give_ScorpioDeadRangedWeapons()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(GRD_205_Scorpio);
	if(Kapitel >= 4)
	{
		CreateInvItem (npc,ItRw_Crossbow_02);
	};
};