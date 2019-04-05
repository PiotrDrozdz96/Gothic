func void B_Give_CavalornChapter1Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	
	//-------- Nahkampfwaffen --------
		
	
	
	//-------- Fernkampfwaffen --------
	CreateInvItems (npc,ItRw_Bow_Small_02,2);
	CreateInvItem (npc,ItRw_Bow_Small_01);
	CreateInvItems (npc,ItAmArrow,200);
	CreateInvItems (npc,ItMiNugget,200);
	//-------- Munition --------
  
};

func void B_Give_CavalornChapter2Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	
	//-------- Nahkampfwaffen --------
	
	
	
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Small_03);
	CreateInvItem (npc,ItRw_Bow_Small_04);
	CreateInvItem (npc,ItRw_Bow_Small_05);
	CreateInvItem (npc,ItRw_Bow_Long_01);
	CreateInvItems (npc,ItAmArrow,400);
	CreateInvItems (npc,ItAmBolt,200);
	CreateInvItems (npc,ItMiNugget,400);
	//-------- Munition --------

};

func void B_Give_CavalornChapter3Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	
	//-------- Nahkampfwaffen --------
	
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Long_02);	
 	CreateInvItem (npc,ItRw_Bow_Long_03);	
 	CreateInvItem (npc,ItRw_Bow_Long_04);	
 	CreateInvItem (npc,ItRw_Bow_Long_05);	
 	CreateInvItems (npc,ItAmArrow,600);
	// CreateInvItems (npc,ItAmBolt,400);
 	CreateInvItems (npc,ItMiNugget,600);
 	//-------- Munition --------
  
};

func void B_Give_CavalornChapter4Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	
	//-------- Nahkampfwaffen --------
		
		CreateInvItems (npc,ItMiNugget,400);
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Long_06);
	CreateInvItem (npc,ItRw_Bow_Long_07);
	CreateInvItem (npc,ItRw_Bow_Long_08);
	CreateInvItems (npc,ItAmArrow,800);
	// CreateInvItems (npc,ItAmBolt,600);
	//-------- Munition --------
  
};

func void B_Give_CavalornChapter5Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	
	//-------- Nahkampfwaffen --------
	CreateInvItems (npc,ItMiNugget,1000);
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Long_09);
	CreateInvItem (npc,ItRw_Bow_War_01);
	CreateInvItem (npc,ItRw_Bow_War_02);
	CreateInvItem (npc,ItRw_Bow_War_03);
	CreateInvItems (npc,ItAmArrow,600);
	// CreateInvItems (npc,ItAmBolt,800);
	
	//-------- Munition --------
  
};

func void B_Give_CavalornChapter6Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	
	//-------- Nahkampfwaffen --------

	CreateInvItems (npc,ItMiNugget,1200);
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_War_04);
	CreateInvItem (npc,ItRw_Bow_War_05);
	CreateInvItems (npc,ItAmArrow,400);
	// CreateInvItems (npc,ItAmBolt,800);
	//-------- Munition --------
  
};

func void B_Give_CavalornDead()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	CreateInvItems	(npc, ItAmArrow, 16);
	CreateInvItem	(npc, ItFo_Potion_Water_01);
	CreateInvItem	(npc, ItFoApple);
	CreateInvItem	(npc, ItKeLockpick);
	if(Kapitel == 1)
	{
		CreateInvItems (npc,ItAmArrow,20);
		CreateInvItems (npc,ItMiNugget,20);
	}
	else if(Kapitel == 2)
	{
		CreateInvItems (npc,ItAmArrow,60);
		CreateInvItems (npc,ItMiNugget,40);
	}
	else if(Kapitel == 3)
	{
		CreateInvItems (npc,ItAmArrow,120);
		CreateInvItems (npc,ItMiNugget,100);
	}
	else if(Kapitel == 4)
	{
		CreateInvItems (npc,ItAmArrow,200);
		CreateInvItems (npc,ItMiNugget,140);
	}
	else if(Kapitel == 5)
	{
		CreateInvItems (npc,ItAmArrow,260);
		CreateInvItems (npc,ItMiNugget,240);
	}
	else // Kapitel > 5
	{
		CreateInvItems (npc,ItAmArrow,300);
		CreateInvItems (npc,ItMiNugget,360);
	};
};

func void B_Give_CavalornDeadWeapons()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	CreateInvItem(npc,ItMw_1H_Sword_Short_02);
};

func void B_Give_CavalornDeadRangedWeapons()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(STT_336_Cavalorn);
	CreateInvItem (npc,ItRw_Bow_Small_02);
};