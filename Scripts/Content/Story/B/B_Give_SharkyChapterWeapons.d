func void B_Give_SharkyChapter1Weapons () // (0-20)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_843_Sharky);
	
	//-------- Nahkampfwaffen --------
	CreateInvItem (npc,ItMw_1H_Poker_01); //Pogrzebacz 6,5
	CreateInvItem (npc,ItMw_1H_Sickle_01); //Sierp 7,5
	CreateInvItem (npc,ItMw_1H_Scythe_01); //siekacz 12,10
	CreateInvItem (npc,ItMw_1H_Axe_Old_01); // wyszczerbiony topór 19,10
	CreateInvItems (npc,ItMiNugget,200);
	CreateInvItems	(npc, ItKeLockpick,10);
	//-------- Fernkampfwaffen --------
	//-------- Munition --------
  
};

func void B_Give_SharkyChapter2Weapons () //(20-35)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_843_Sharky);
	
	//-------- Nahkampfwaffen --------
	
	CreateInvItem (npc,ItMw_1H_Axe_01); //Topór 30,25
	CreateInvItem (npc,ItMw_1H_Mace_02); //Ćwiekowana maczuga 35,30
	CreateInvItem (npc,ItMw_1H_Mace_War_01); //Morgensztern 22,20
	CreateInvItem (npc,ItMw_2H_Axe_Old_02); //Krwawy żniwiarz 28,20 
	CreateInvItem (npc,ItMw_2H_Axe_Old_01); //Stary topór bojowy 25,25
	CreateInvItem (npc,ItMw_2H_Axe_light_01); //Lekki topór bojowy 35,40 
	CreateInvItem (npc,ItMw_2H_Axe_light_02); //grzmot 35,30 
	CreateInvItem (npc,ItMw_2H_Axe_light_03); //Chrzęst 35,30 
	CreateInvItems	(npc, ItKeLockpick,20);
	CreateInvItems (npc,ItMiNugget,400);
	//-------- Fernkampfwaffen --------
	//-------- Munition --------

};

func void B_Give_SharkyChapter3Weapons () //(40-55)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_843_Sharky);
	
	//-------- Nahkampfwaffen --------
	CreateInvItem (npc,ItMw_2H_Sword_Light_03); //Ostrze Najemnika 40,40
	CreateInvItem (npc,ItMw_1H_Mace_War_03); //Łomotacz 45,35 
	CreateInvItem (npc,ItMw_1H_Axe_02); //Gruchotacz (40,35)
	CreateInvItem (npc,ItMw_1H_Axe_03); //Łamacz Kości (40,40) 	
	CreateInvItems (npc,ItMiNugget,600);
	CreateInvItems	(npc, ItKeLockpick,30);
	//-------- Fernkampfwaffen --------
	
 	//-------- Munition --------
  
};

func void B_Give_SharkyChapter4Weapons () //(55-73)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_843_Sharky);
	
	//-------- Nahkampfwaffen --------
	CreateInvItem (npc,ItMw_2H_Axe_Heavy_01); //Topór wojenny 60,60 
	CreateInvItem (npc,ItMw_2H_Axe_Heavy_03); //Pięsć barbażyńcy 70,70 	
	CreateInvItems (npc,ItMiNugget,800);
	CreateInvItems	(npc, ItKeLockpick,20);
	//-------- Fernkampfwaffen --------
	//-------- Munition --------
  
};

func void B_Give_SharkyChapter5Weapons () //(77-100)
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_843_Sharky);
	
	//-------- Nahkampfwaffen --------
	
	CreateInvItem (npc,ItMw_2H_Axe_Heavy_02); //Krzyk wojownika 80,80
	CreateInvItem (npc,ItMw_2H_Axe_Heavy_04); //Pięśc trolla 75,75
	CreateInvItem (npc,ItMw_2H_Sword_Heavy_03); //Wściekła Stal 75,65
	CreateInvItem (npc,ItMw_2H_Sword_Heavy_04); //Mściwa Stal 90,90
	CreateInvItems (npc,ItMiNugget,500);
	CreateInvItems	(npc, ItKeLockpick,10);
	//-------- Fernkampfwaffen --------
	//-------- Munition --------
  
};

func void B_Give_SharkyChapter6Weapons ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(ORG_843_Sharky);
	
	//-------- Nahkampfwaffen --------

	CreateInvItems (npc,ItMiNugget,600);
	//-------- Fernkampfwaffen --------
	

	//-------- Munition --------
  
};

