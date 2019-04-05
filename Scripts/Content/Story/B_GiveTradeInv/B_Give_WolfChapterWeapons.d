func void B_Give_WolfChapter1Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);
	
	//-------- Nahkampfwaffen --------
		
	
	
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Small_02);
	CreateInvItem (npc,ItRw_Bow_Small_02);
	CreateInvItem (npc,ItRw_Bow_Small_01);
	
	CreateInvItems (npc,ItAmArrow,200);
	CreateInvItems (npc,ItAmBolt,200);
	
	CreateInvItems (npc,ItMiNugget,200);
	CreateInvItem (npc,ItWr_Bloodfly_01);
	
	CreateInvItem (npc,ITSH_G3_02_V2);
	CreateInvItem (npc,ITSH_G3_BROKEN);
	
	//-------- Munition --------
  
};

func void B_Give_WolfChapter2Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);
	
	//-------- Nahkampfwaffen --------
	
	
	
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Small_03);
	CreateInvItem (npc,ItRw_Bow_Small_04);
	CreateInvItem (npc,ItRw_Bow_Small_05);
	CreateInvItem (npc,ItRw_Bow_Long_01);
	CreateInvItem (npc,ItRw_Bow_Long_01);
	
	CreateInvItem (npc,ITSH_REINFORCED_A);
	
	
	CreateInvItems (npc,ItAmArrow,400);
	CreateInvItems (npc,ItAmBolt,400);
	CreateInvItems (npc,ItMiNugget,400);
	//-------- Munition --------

};

func void B_Give_WolfChapter3Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);
	
	//-------- Nahkampfwaffen --------
	
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Long_02);	
 	CreateInvItem (npc,ItRw_Bow_Long_03);	
 	CreateInvItem (npc,ItRw_Bow_Long_04);	
	CreateInvItem (npc,ItRw_Bow_Long_05);
	CreateInvItem (npc,ItRw_Bow_Long_05);
	
	CreateInvItem (npc,IT_SHIELD_SKULL);	
 
 	CreateInvItems (npc,ItAmArrow,600);
	CreateInvItems (npc,ItAmBolt,600);
 	CreateInvItems (npc,ItMiNugget,600);
 	//-------- Munition --------
  
};

func void B_Give_WolfChapter4Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);
	
	//-------- Nahkampfwaffen --------
		
		CreateInvItems (npc,ItMiNugget,800);
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Long_06);
	CreateInvItem (npc,ItRw_Bow_Long_07);
	CreateInvItems (npc,ItAmArrow,800);
	CreateInvItems (npc,ItAmBolt,800);
	CreateInvItem (npc,ItRw_Bow_Long_08);
	CreateInvItem (npc,ItRw_Bow_Long_08);
	
	CreateInvItem (npc,ITSH_KORSHAN_A);
	
	//CreateInvItem (npc,ItRw_Crossbow_01);
	//CreateInvItem (npc,ItRw_Crossbow_02);
	//CreateInvItem (npc,ItRw_Crossbow_03);
		
	//-------- Munition --------
  
};

func void B_Give_WolfChapter5Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);
	
	//-------- Nahkampfwaffen --------
	CreateInvItems (npc,ItMiNugget,1000);
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_Long_09);
	CreateInvItem (npc,ItRw_Bow_War_01);
	CreateInvItem (npc,ItRw_Bow_War_02);
	CreateInvItems (npc,ItAmArrow,800);
	CreateInvItems (npc,ItAmBolt,800);
	CreateInvItem (npc,ItRw_Bow_War_03);
	CreateInvItem (npc,ItRw_Bow_War_03);
	CreateInvItem (npc,ITSH_SM_STEEL);
	//CreateInvItems (npc,ItRw_Crossbow_04,2);
	
	
	
	//-------- Munition --------
  
};

func void B_Give_WolfChapter6Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);
	
	//-------- Nahkampfwaffen --------

	CreateInvItems (npc,ItMiNugget,1200);
	//-------- Fernkampfwaffen --------
	CreateInvItem (npc,ItRw_Bow_War_04);
	CreateInvItem (npc,ItRw_Bow_War_05);
	CreateInvItems (npc,ItAmArrow,800);
	CreateInvItems (npc,ItAmBolt,800);
	//-------- Munition --------
  
};

func void B_Give_WolfDead()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);

	CreateInvItems (npc, ItMiNugget, 12);
	CreateInvItems (npc, ItFoRice,1);
	CreateInvItems (npc, ItFo_Potion_Health_01, 1);
	CreateInvItem (npc, ItMi_Stuff_Plate_01);
	CreateInvItem (npc, ItMi_Stuff_Barbknife_01);
	CreateInvItems (npc, ItFo_wineberrys_01, 1);
	if(Kapitel == 1)
	{
		CreateInvItems (npc,ItAmArrow,20);
		CreateInvItems (npc,ItAmBolt,20);
		CreateInvItems (npc,ItMiNugget,20);	
	}
	else if(Kapitel == 2)
	{
		CreateInvItems (npc,ItAmArrow,60);
		CreateInvItems (npc,ItAmBolt,60);
		CreateInvItems (npc,ItMiNugget,60);	
	}
	else if(Kapitel == 3)
	{
		CreateInvItems (npc,ItAmArrow,120);
		CreateInvItems (npc,ItAmBolt,120);
		CreateInvItems (npc,ItMiNugget,120);	
	}
	else if(Kapitel == 4)
	{
		CreateInvItems (npc,ItAmArrow,200);
		CreateInvItems (npc,ItAmBolt,200);
		CreateInvItems (npc,ItMiNugget,200);	
	}
	else if(Kapitel == 5)
	{
		CreateInvItems (npc,ItAmArrow,300);
		CreateInvItems (npc,ItAmBolt,280);
		CreateInvItems (npc,ItMiNugget,280);	
	}
	else //Kapitel == 6
	{
		CreateInvItems (npc,ItAmArrow,420);
		CreateInvItems (npc,ItAmBolt,360);
		CreateInvItems (npc,ItMiNugget,360);	
	};
};

func void B_Give_WolfDeadWeapons()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);

	CreateInvItem  (npc, ItMw_1H_Mace_War_01);
	CreateInvItem  (npc, ITSH_WOLF_A);	
};

func void B_Give_WolfDeadRangedWeapons()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_855_Wolf);
	if(Kapitel == 1)
	{
		CreateInvItem (npc,ItRw_Bow_Small_02);
	}
	else if(Kapitel == 2)
	{
		CreateInvItem (npc,ItRw_Bow_Long_01);
	}
	else if(Kapitel == 3)
	{
		CreateInvItem (npc,ItRw_Bow_Long_05);	
	}
	else if(Kapitel == 4)
	{
		CreateInvItem (npc,ItRw_Bow_Long_08);	
	}
	else //Kapitel > 4
	{
		CreateInvItem (npc,ItRw_Bow_War_03);	
	};
};