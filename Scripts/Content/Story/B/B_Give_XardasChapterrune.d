func void B_Give_XardasChapter4Runes ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_404_Xardas);
	
	//-------- Runen --------
	// CreateInvItem (npc,ItArRuneDestroyUndead);
	CreateInvItem(npc, Itmi_Runeblank);
	
	//-------- Scrolls --------
	CreateInvItems (npc,ItArScrollSummonSkeletons,8);	
	CreateInvItems (npc,ItArScrollSummonGolem,4);	
	CreateInvItems (npc,ItArScrollShrink,2);
	CreateInvItems (npc,ItMW_Staff_Prot_03,2);	
	
	//-------- Bücher --------
	CreateInvItem (npc,ItWr_Book_Necromancer);


};

func void B_Give_XardasChapter5Runes ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_404_Xardas);
	
	//-------- Runen --------
	// CreateInvItem (npc,ItArRuneFireRain);
	CreateInvItem(npc, Itmi_Runeblank);
	
	//-------- Scrolls --------
	CreateInvItems (npc,ItArScrollSummonDemon,4);	
	CreateInvItems (npc,ItArScrollSummonSkeletons,8);	
	CreateInvItems (npc,ItArScrollSummonGolem,4);
	CreateInvItem  (npc, ItAt_StoneGolem_02);
	CreateInvItem (npc, ItMi_Alchemy_Sulphur_01);
	CreateInvItem (npc, Itmi_DarkPearl);
	CreateInvItem (npc,ItWr_Book_Circle_06);
	
	//-------- Bücher --------
};

func void B_Give_XardasChapter6Runes ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_404_Xardas);
	
	//-------- Runen --------
	
		
	
	//-------- Scrolls --------
	CreateInvItems (npc,ItArScrollSummonDemon,4);	
	CreateInvItems (npc,ItArScrollSummonSkeletons,8);	
	CreateInvItems (npc,ItArScrollSummonGolem,4);	
	CreateInvItems (npc,ItArScrollArmyOfDarkness,8);	
	
	CreateInvItem (npc,Amulett_der_Macht);
	CreateInvItem (npc,Amulett_der_Erleuchtung);

	//-------- Bücher --------

};

func void B_Give_XardasStaffDMB()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_404_Xardas);

	CreateInvItems (npc,ItMW_Staff_Demon, 2);
};

func void B_Give_XardasStaffKDF()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDF_404_Xardas);

	CreateInvItems (npc,ItMW_Staff_Fire_02,2);
};