
func void B_Give_TorrezChapter1Runes ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_405_Torrez);
	
	//-------- Runen --------

	//-------- Scrolls --------
	CreateInvItems (npc,ItArScrollHeal,10);
	CreateInvItems (npc,ItArScrollLight,16);
	CreateInvItems (npc,ItArScrollFirebolt,18);

	//-------- B�cher --------
  	//-------- Tr�nke --------
	CreateInvItems (npc,ItFo_Potion_Mana_01 ,6);
	CreateInvItems (npc,ItFo_Potion_Health_01 ,8);
	CreateInvItems (npc,ItFo_Potion_Water_01 ,10);

	CreateInvItem (npc,ItWr_Book_Circle_01);
	CreateInvItem (npc,ItWr_Book_Circle_02);
	CreateInvItem (npc,ItWr_Book_Circle_03);
	
	CreateInvItem (npc,Lehren_der_Goetter1);
	CreateInvItem (npc,Lehren_der_Goetter2);
	CreateInvItem (npc,Lehren_der_Goetter3);

};
func void B_Give_TorrezChapter2Runes ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_405_Torrez);
	
	//-------- Runen --------
	// CreateInvItem (npc,ItArRuneLight);
	// CreateInvItem (npc,ItArRuneFirebolt);
	// CreateInvItem (npc,ItArRuneHeal);
	// CreateInvItem (npc,ItArRuneFireball);
	CreateInvItem(npc, Itmi_Runeblank);

	//-------- Scrolls --------
	CreateInvItems (npc,ItArScrollFirebolt,12);
	CreateInvItems (npc,ItArScrollLight,14);
	CreateInvItems (npc,ItArScrollHeal,16);
	
	
	CreateInvItems (npc,ItArScrollFireball,4);
	CreateInvItems (npc,ItArScrollFirestorm,2);
	CreateInvItems (npc,ItArScrollTrfWolf,3);
	CreateInvItems (npc,ItArScrollTrfLurker,4);
	CreateInvItems (npc,ItArScrollTrfScavenger,2);
	CreateInvItems (npc,ItArScrollTrfMolerat,6);
	CreateInvItems (npc,ItArScrollTrfCrawler,3);
	CreateInvItems (npc,ItArScrollTrfBloodfly,3);
	//-------- B�cher --------
  	// CreateInvItem (npc,ItWr_Book_Circle_04);
	// CreateInvItem (npc,ItWr_Book_Circle_05);
	// CreateInvItem (npc,ItWr_Book_Circle_06);
  	//-------- Tr�nke --------
	CreateInvItems (npc,ItFo_Potion_Mana_01 ,12);
   CreateInvItems (npc,ItFo_Potion_Mana_02 ,8);
   
   CreateInvItems (npc,ItFo_Potion_Health_01 ,16);
   CreateInvItems (npc,ItFo_Potion_Health_02 ,10);
   
   CreateInvItems (npc,ItFo_Potion_Water_01 ,20);
	
   CreateInvItems (npc,ItFo_Potion_Haste_01 ,6);
};

func void B_Give_TorrezChapter3Runes ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_405_Torrez);
	
	//-------- Runen --------
	// CreateInvItem (npc,ItArRuneFirestorm);
	CreateInvItem(npc, Itmi_Runeblank);

	//-------- Scrolls --------
	CreateInvItems (npc,ItArScrollFirebolt,16);
	CreateInvItems (npc,ItArScrollLight,12);
	CreateInvItems (npc,ItArScrollHeal,16);
	
	CreateInvItems (npc,ItArScrollFireball,4);
	CreateInvItems (npc,ItArScrollFirestorm,3);
	CreateInvItems (npc,ItArScrollTrfWolf,3);
	CreateInvItems (npc,ItArScrollTrfLurker,4);
	CreateInvItems (npc,ItArScrollTrfScavenger,2);
	CreateInvItems (npc,ItArScrollTrfMolerat,6);
	CreateInvItems (npc,ItArScrollTrfCrawler,3);
	CreateInvItems (npc,ItArScrollTrfBloodfly,3);
	CreateInvItems (npc,ItArScrollTrfMeatbug,2);
	CreateInvItems (npc,ItArScrollTrfWaran,4);

	CreateInvItems (npc,ItArScrollFirerain,2); 

	//-------- B�cher --------
  	//-------- Tr�nke --------
	CreateInvItems (npc,ItFo_Potion_Mana_01 ,24);
	CreateInvItems (npc,ItFo_Potion_Mana_02 ,16);
	CreateInvItems (npc,ItFo_Potion_Mana_03 ,10);
    
	CreateInvItems (npc,ItFo_Potion_Health_01 ,32);
	CreateInvItems (npc,ItFo_Potion_Health_02 ,20);
	CreateInvItems (npc,ItFo_Potion_Health_03 ,12); 
	
	CreateInvItems (npc,ItFo_Potion_Haste_01 ,12);	
	CreateInvItems (npc,ItFo_Potion_Haste_02 ,6);
};

func void B_Give_TorrezStaff ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_405_Torrez);
	CreateInvItems (npc,ItMW_Staff_Fire_01,2);
	CreateInvItems (npc,ItMW_Staff_Magic,2);
};

func void B_Give_TorrezDead()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_405_Torrez);

	if(Kapitel == 1)
	{
		CreateInvItems (npc,ItArScrollHeal,1);
		CreateInvItems (npc,ItArScrollLight,2);
		CreateInvItems (npc,ItArScrollFirebolt,2);
		CreateInvItems (npc,ItFo_Potion_Mana_01 ,1);
		CreateInvItems (npc,ItFo_Potion_Health_01 ,1);
		CreateInvItems (npc,ItFo_Potion_Water_01 ,1);
	}
	else if(Kapitel == 2)
	{
		CreateInvItems (npc,ItArScrollHeal,3);
		CreateInvItems (npc,ItArScrollLight,4);
		CreateInvItems (npc,ItArScrollFirebolt,3);
		CreateInvItems (npc,ItFo_Potion_Mana_01 ,2);
		CreateInvItems (npc,ItFo_Potion_Mana_02 ,1);
		CreateInvItems (npc,ItFo_Potion_Health_01 ,3);
		CreateInvItems (npc,ItFo_Potion_Health_02 ,1);
		CreateInvItems (npc,ItFo_Potion_Water_01 ,3);
		CreateInvItems (npc,ItFo_Potion_Haste_01 ,1);
		CreateInvItems (npc,ItArScrollFireball,1);
		CreateInvItems (npc,ItArScrollFirestorm,1);
		CreateInvItems (npc,ItArScrollTrfWolf,1);
		CreateInvItems (npc,ItArScrollTrfLurker,1);
		CreateInvItems (npc,ItArScrollTrfScavenger,1);
		CreateInvItems (npc,ItArScrollTrfMolerat,1);
		CreateInvItems (npc,ItArScrollTrfCrawler,1);
		CreateInvItems (npc,ItArScrollTrfBloodfly,1);	
	}
	else //Kapitel > 2
	{
		CreateInvItems (npc,ItArScrollHeal,5);
		CreateInvItems (npc,ItArScrollLight,5);
		CreateInvItems (npc,ItArScrollFirebolt,5);
		CreateInvItems (npc,ItFo_Potion_Mana_01 ,5);
		CreateInvItems (npc,ItFo_Potion_Mana_02 ,3);
		CreateInvItems (npc,ItFo_Potion_Mana_03 ,1);
		CreateInvItems (npc,ItFo_Potion_Health_01 ,6);
		CreateInvItems (npc,ItFo_Potion_Health_02 ,3);
		CreateInvItems (npc,ItFo_Potion_Health_03 ,1);
		CreateInvItems (npc,ItFo_Potion_Water_01 ,4);
		CreateInvItems (npc,ItFo_Potion_Haste_01 ,2);
		CreateInvItems (npc,ItArScrollFireball,1);
		CreateInvItems (npc,ItArScrollFirestorm,1);
		CreateInvItems (npc,ItArScrollFirerain,1);
		CreateInvItems (npc,ItArScrollTrfWolf,1);
		CreateInvItems (npc,ItArScrollTrfLurker,1);
		CreateInvItems (npc,ItArScrollTrfScavenger,1);
		CreateInvItems (npc,ItArScrollTrfMolerat,2);
		CreateInvItems (npc,ItArScrollTrfCrawler,1);
		CreateInvItems (npc,ItArScrollTrfBloodfly,1);
	};
};


