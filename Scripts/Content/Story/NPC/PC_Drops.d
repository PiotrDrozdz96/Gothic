
INSTANCE PC_Drops(NPC_DEFAULT)

{
	//-------- primary data --------		
	name 			= "Ich";
	Npctype			= NPCTYPE_MAIN;
	guild			= GIL_NONE;
	level			= 0;
	voice			= 15;
	id				= 0;
	
	//------------------------------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	//------------------------------
	
	//--------- abilities --------
	attribute[ATR_STRENGTH] 	=	100;     
	attribute[ATR_DEXTERITY] 	=	100;     
	attribute[ATR_MANA_MAX] 	=	200;
	attribute[ATR_MANA] 		=	200;
	attribute[ATR_HITPOINTS_MAX]=	40;    
	attribute[ATR_HITPOINTS] 	=	40;    
	
	//-------- visuals --------
	// 						animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	//						Body-Mesh			Body-Tex	Skin-Color	Head-MMS    		Head-Tex	Teeth-Tex 	Armor-Tex
	Mdl_SetVisualBody (self,"hum_body_Naked0",	4,			1,			"Hum_Head_Pony",	9, 			0,			BDT_ARMOR_H);
	
	//-------- ai ----------
	start_aistate = ZS_DROPS_Hangaround;

	Npc_SetTalentSkill		( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60); 
	Npc_SetTalentSkill		( self, NPC_TALENT_SNEAK,	1);	
	Npc_SetTalentSkill		( self, NPC_TALENT_PICKLOCK,	1);Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60); 
	Npc_SetTalentSkill		( self, NPC_TALENT_MAGE,		6);
	
	Npc_SetTalentSkill    (self, NPC_TALENT_1H,2);
	Npc_SetTalentSkill	(self, NPC_TALENT_2H,2);
	Npc_SetTalentSkill	(self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill	(self, NPC_TALENT_CROSSBOW,1);
	Npc_SetTalentSkill	(self, NPC_TALENT_SHIELD,1);
	
	//-------------------------
	CreateInvItem(self,ITMW_1H_URIZIEL_1);
	CreateInvItem(self,ITMW_1H_URIZIEL_2);
	CreateInvItem(self,ITMW_1H_URIZIEL_3);
	
	// Shield
	CreateInvItem(self,ITSH_REINFORCED_A);
	CreateInvItem(self,ITSH_W2_EXECUTIONER);
	CreateInvItem(self,ITSH_WOLF_A);
	CreateInvItem(self,ITSH_LONG_A);
	CreateInvItem(self,ITSH_STALHRIM_S_SM);
	CreateInvItem(self,ITSH_STALHRIM_B_SM);
	CreateInvItem(self,ITSH_PALADIN_A);
	CreateInvItem(self,ITSH_G3_01_OLD);
	CreateInvItem(self,ITSH_G3_02_V2);
	CreateInvItem(self,ITSH_G3_03);
	CreateInvItem(self,ITSH_W2_E3_REDANIA);
	CreateInvItem(self,ITSH_G3_04);
	CreateInvItem(self,ITSH_G3_BROKEN);
	CreateInvItem(self,ITSH_SM_STEEL);
	CreateInvItem(self,ITSH_KORSHAN_A);
	CreateInvItem(self,ITSH_R_ROUND);
	CreateInvItem(self,ITSH_W2_E2_KAEDWEN);
	CreateInvItem(self,IT_SHIELD_SKULL);
	
	// Armor
	CreateInvItem(self,KDF_ARMOR_H2);
	
	//Armor in Sleeper Camp (visual change)
	CreateInvItem(self,DMB_ARMOR_GUR);
	
	//Bandit Armor
	CreateInvItem(self,BDT_ARMOR_M);
	//CreateInvItem(self,BDT_ARMOR_H); //onEquip

	//Crossbow
	CreateInvItem (self,ItRw_Crossbow_05);
	CreateInvItems (self,ItAmBolt,1000);

	//Runen
	CreateInvItem (self,ItArRuneTeleport6);
	CreateInvItem (self,ItArRuneSummonDemon);
	CreateInvItem (self,ItArRuneSummonSkeletons);
	CreateInvItem (self,ItArRuneSummonGolem);
	CreateInvItem (self,ItArRuneArmyOfDarkness);
	CreateInvItem (self,ItArRuneSummonGobbo);
	CreateInvItem (self,ItArRuneSummonWolf);
	CreateInvItem (self, ItArRuneFear);

	//Runen ingredients
	CreateInvItem(self, Itmi_Runeblank);
	CreateInvItem(self, ItMi_Alchemy_Sulphur_01);
	CreateInvItem(self, Itmi_Coal);
	CreateInvItem(self, Itmi_DarkPearl);
	CreateInvItem(self, Itmi_Quartz);
	CreateInvItem(self, Itmi_Pitch);
	CreateInvItem(self, Itmi_Rockcrystal);
	CreateInvItem(self, Itmi_Aquamarine);
	CreateInvItem(self, ItAt_Goblinbone);
	CreateInvItem(self, Itat_Skeletonbone);
	CreateInvItem(self, ItAt_StoneGolem_02);
	CreateInvItem(self, Itat_Demonheart);

	//Written
	CreateInvItem(self, ItWr_Necromancer_Letter_01);
	CreateInvItem(self, ItWr_Necromancer_Letter_02);
	CreateInvItem(self, ItWr_Book_Sekte_01);
	CreateInvItem(self, ItWr_Book_Sekte_02);
	CreateInvItem(self, ItWr_Book_Sekte_03);
	CreateInvItem(self, ItWr_Book_Necromancer);
	CreateInvItem(self, ItWr_SummonGobbo);
	CreateInvItem(self, ItWr_SummonWolf);
	CreateInvItem(self, ItWr_SummonSkeleton);
	
};

func void ZS_DROPS_Hangaround ()
{
	PrintDebugNpc	(PD_ZS_FRAME,	"ZS_DROPS_Hangaround");

	Npc_PercEnable  	(self,	PERC_ASSESSPLAYER		,	B_AssessSC			);
	Npc_PercEnable  	(self,	PERC_ASSESSTALK			,	B_AssessTalk		);
};

/*------------------------------------------------------------------------
						DIALOGS							
------------------------------------------------------------------------*/

instance  PC_Drops_Exit (C_INFO)
{
	npc			=  PC_DROPS;
	nr			=  999;
	condition	=  PC_Drops_Condition;
	information	=  PC_Drops_Info;
	important	=  0;	
	permanent	=  1;
	description = "KONIEC";
};                       

FUNC int  PC_Drops_Condition()
{
	return TRUE;
};

FUNC VOID  PC_Drops_Info()
{
	AI_StopProcessInfos	(self);
};

//***************************************************************************
//	1H
//***************************************************************************

instance  PC_DROPS_1H (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_1H_Condition;
	information		= PC_DROPS_1H_Info;
	important		= 0;
	permanent		= 1;
	description		= "Broñ jednorêczna +1% (10pkt. umiejêtnoœci)"; 
};

FUNC int PC_DROPS_1H_Condition()
{	
	if (Npc_GetTalentValue(hero, NPC_TALENT_1H) < 10)
	{
		return TRUE;
	};
};

FUNC void PC_DROPS_1H_Info()
{
	B_GiveSkill(hero,NPC_TALENT_1H,Npc_GetTalentSkill(hero, NPC_TALENT_1H)+1,LPCOST_TALENT_1H_1);
};

//***************************************************************************
//	Shield_1
//***************************************************************************

instance  PC_DROPS_Shield1 (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_Shield1_Condition;
	information		= PC_DROPS_Shield1_Info;
	important		= 0;
	permanent		= 1;
	description		= "Tarcza Poziom 1 (10pkt. umiejêtnoœci)"; 
};

FUNC int PC_DROPS_Shield1_Condition()
{	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD) == 0 )
	{
		return TRUE;
	};
};

FUNC void PC_DROPS_Shield1_Info()
{
	B_GiveSkill(hero,NPC_TALENT_SHIELD,Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD)+1,LPCOST_TALENT_SHIELD_1);
};

//***************************************************************************
//	Shield_2
//***************************************************************************

instance  PC_DROPS_Shield2 (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_Shield2_Condition;
	information		= PC_DROPS_Shield2_Info;
	important		= 0;
	permanent		= 1;
	description		= "Tarcza Poziom 2 (20pkt. umiejêtnoœci)"; 
};

FUNC int PC_DROPS_Shield2_Condition()
{	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD) == 1 )
	{
		return TRUE;
	};
};

FUNC void PC_DROPS_Shield2_Info()
{
	B_GiveSkill(hero,NPC_TALENT_SHIELD,Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD)+1,LPCOST_TALENT_SHIELD_2);
};

//***************************************************************************
//	2H
//***************************************************************************

instance  PC_DROPS_2H (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_2H_Condition;
	information		= PC_DROPS_2H_Info;
	important		= 0;
	permanent		= 1;
	description		= "Broñ dwurêczna +1% (10pkt. umiejêtnoœci)"; 
};

FUNC int PC_DROPS_2H_Condition()
{	
	if (Npc_GetTalentValue(hero, NPC_TALENT_2H) < 10)
	{
		return TRUE;
	};
};

FUNC void PC_DROPS_2H_Info()
{
	B_GiveSkill(hero,NPC_TALENT_2H,Npc_GetTalentSkill(hero, NPC_TALENT_2H)+1,LPCOST_TALENT_2H_1);
};

//***************************************************************************
//	BOW
//***************************************************************************

instance  PC_DROPS_BOW (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_BOW_Condition;
	information		= PC_DROPS_BOW_Info;
	important		= 0;
	permanent		= 1;
	description		= "£uk +3% (10pkt. umiejêtnoœci)"; 
};

FUNC int PC_DROPS_BOW_Condition()
{	
	if (Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 30)
	{
		return TRUE;
	};
};

FUNC void PC_DROPS_BOW_Info()
{
	B_GiveSkill(hero,NPC_TALENT_BOW,Npc_GetTalentSkill(hero, NPC_TALENT_BOW)+1,LPCOST_TALENT_BOW_1);
};

//***************************************************************************
//	CROSSBOW
//***************************************************************************

instance  PC_DROPS_CROSSBOW (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_CROSSBOW_Condition;
	information		= PC_DROPS_CROSSBOW_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kusza +4% (10pkt. umiejêtnoœci)"; 
};

FUNC int PC_DROPS_CROSSBOW_Condition()
{	
	if (Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 40)
	{
		return TRUE;
	};
};

FUNC void PC_DROPS_CROSSBOW_Info()
{
	B_GiveSkill(hero,NPC_TALENT_CROSSBOW,Npc_GetTalentSkill(hero, NPC_TALENT_CROSSBOW)+1,LPCOST_TALENT_CROSSBOW_1);
};

//***************************************************************************
//	GET DEMON HEART
//***************************************************************************

instance  PC_DROPS_DEMONHEART (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_DEMONHEART_Condition;
	information		= PC_DROPS_DEMONHEART_Info;
	important		= 0;
	permanent		= 1;
	description		= "Wycinanie serc demonów (koszt: 5 punkt umiejêtnoœci)"; 
};

FUNC int PC_DROPS_DEMONHEART_Condition()
{	
	if(Knows_GetDemonHeart == FALSE)
	{
		return TRUE;
	};
};

FUNC void PC_DROPS_DEMONHEART_Info()
{
	if(other.lp >= 5){
		other.lp = other.lp - 5;
		PrintScreen("Nowa umiejêtnoœæ: Wycinanie serc demonów",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
		Knows_GetDemonHeart = TRUE;
		Log_CreateTopic(GE_AnimalTrophies, LOG_NOTE);
		B_LogEntry(GE_AnimalTrophies, "Umiejêtnoœæ wycinania serc demonów");
	}
	else
	{
		PrintScreen("Za ma³o punktów umiejêtnoœci!",-1,-1,"FONT_OLD_20_WHITE.TGA",2);	
	};
	
};

//***************************************************************************
//	TEACH TALENT RUNES
//***************************************************************************

instance  PC_DROPS_TEACH_TALENT_RUNES (C_INFO)
{
	npc				= PC_Drops;
	condition		= PC_DROPS_TEACH_TALENT_RUNES_Condition;
	information		= PC_DROPS_TEACH_TALENT_RUNES_Info;
	important		= 0;
	permanent		= 1;
	description		= "Nauka tworzenia Run"; 
};

FUNC int PC_DROPS_TEACH_TALENT_RUNES_Condition()
{	
	return TRUE;
};

FUNC void PC_DROPS_TEACH_TALENT_RUNES_Info()
{
	Info_ClearChoices	(PC_DROPS_TEACH_TALENT_RUNES);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,DIALOG_BACK, PC_DROPS_TEACH_TALENT_RUNES_BACK);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Œwiat³o 1 pn", PC_DROPS_TEACH_SPL_LIGHT);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Ognista Strza³a  5 pn", PC_DROPS_TEACH_SPL_FIREBOLT);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Kula Ognia 5 pn", PC_DROPS_TEACH_SPL_FIREBALL);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Ognista Burza 10 pn", PC_DROPS_TEACH_SPL_FIRESTORM);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Deszcz Ognia 20 pn", PC_DROPS_TEACH_SPL_FIRERAIN);
	//*
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Uzdrowienie 5 pn", PC_DROPS_TEACH_SPL_HEAL);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Grom 10 pn", PC_DROPS_TEACH_SPL_CHAINLIGHTNING);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Sopel Lodu 5 pn", PC_DROPS_TEACH_SPL_THUNDERBOLT);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Piorun Kulisty 10 pn", PC_DROPS_TEACH_SPL_THUNDERBALL);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Bry³a Lodu 5 pn", PC_DROPS_TEACH_SPL_ICECUBE);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Lodowa Fala 15 pn", PC_DROPS_TEACH_SPL_ICEWAVE);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Przyzwanie Szkieletu Goblina 5 pn", PC_DROPS_TEACH_SPL_SUMMONGOBBO);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Przyzwanie Wilka 5 pn", PC_DROPS_TEACH_SPL_SUMMONWOLF);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Przyzwanie Demona 15 pn", PC_DROPS_TEACH_SPL_SUMMONDEMON);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Przyzwanie Szkieleta 10 pn", PC_DROPS_TEACH_SPL_SUMMONSKELETON);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Przyzwanie Golema 10 pn", PC_DROPS_TEACH_SPL_SUMMONGOLEM);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Armia Ciemnoœci 20 pn", PC_DROPS_TEACH_SPL_ARMYOFDARKNESS);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Œmieræ o¿ywieñcom 10 pn", PC_DROPS_TEACH_SPL_DESTROYUNDEAD);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Uderzenie Wiatru 5 pn", PC_DROPS_TEACH_SPL_WINDFIST);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Uderzenie Burzy 10 pn", PC_DROPS_TEACH_SPL_STORMFIST);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Telekineza 5 pn", PC_DROPS_TEACH_SPL_TELEKINESIS);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Urok 10 pn", PC_DROPS_TEACH_SPL_CHARM);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Sen 5 pn", PC_DROPS_TEACH_SPL_SLEEP);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Pirokineza 10 pn", PC_DROPS_TEACH_SPL_PYROKINESIS);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Kontrola 15 pn", PC_DROPS_TEACH_SPL_CONTROL);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Strach 10 pn", PC_DROPS_TEACH_SPL_FEAR);
	Info_AddChoice		(PC_DROPS_TEACH_TALENT_RUNES,"Tchnienie Œmierci 20 pn", PC_DROPS_TEACH_SPL_BREATHOFDEATH);
};

func void PC_DROPS_TEACH_TALENT_RUNES_BACK()
{
	Info_ClearChoices	(PC_DROPS_TEACH_TALENT_RUNES);
};

func void PC_DROPS_TEACH_SPL_LIGHT()
{
	B_TeachPlayerTalentRunes(hero, SPL_LIGHT, LPCOST_RUNEN_0);
};

func void PC_DROPS_TEACH_SPL_FIREBOLT()
{
	B_TeachPlayerTalentRunes(hero, SPL_FIREBOLT, LPCOST_RUNEN_1);
};

func void PC_DROPS_TEACH_SPL_FIREBALL()
{
	B_TeachPlayerTalentRunes(hero, SPL_FIREBALL, LPCOST_RUNEN_2);
};

func void PC_DROPS_TEACH_SPL_FIRESTORM()
{
	B_TeachPlayerTalentRunes(hero, SPL_FIRESTORM, LPCOST_RUNEN_3);
};

func void PC_DROPS_TEACH_SPL_FIRERAIN()
{
	B_TeachPlayerTalentRunes(hero, SPL_FIRERAIN, LPCOST_RUNEN_6);
};

func void PC_DROPS_TEACH_SPL_HEAL()
{
	B_TeachPlayerTalentRunes(hero, SPL_HEAL, LPCOST_RUNEN_2);
};

func void PC_DROPS_TEACH_SPL_CHAINLIGHTNING()
{
	B_TeachPlayerTalentRunes(hero, SPL_CHAINLIGHTNING, LPCOST_RUNEN_4);
};

func void PC_DROPS_TEACH_SPL_THUNDERBOLT()
{
	B_TeachPlayerTalentRunes(hero, SPL_THUNDERBOLT, LPCOST_RUNEN_1);
};

func void PC_DROPS_TEACH_SPL_THUNDERBALL()
{
	B_TeachPlayerTalentRunes(hero, SPL_THUNDERBALL, LPCOST_RUNEN_3);
};

func void PC_DROPS_TEACH_SPL_ICECUBE()
{
	B_TeachPlayerTalentRunes(hero, SPL_ICECUBE, LPCOST_RUNEN_2);
};

func void PC_DROPS_TEACH_SPL_ICEWAVE()
{
	B_TeachPlayerTalentRunes(hero, SPL_ICEWAVE, LPCOST_RUNEN_5);
};

func void PC_DROPS_TEACH_SPL_SUMMONGOBBO()
{
	B_TeachPlayerTalentRunes(hero, SPL_SUMMONGOBBO, LPCOST_RUNEN_1);
};

func void PC_DROPS_TEACH_SPL_SUMMONWOLF()
{
	B_TeachPlayerTalentRunes(hero, SPL_SUMMONWOLF, LPCOST_RUNEN_2);
};

func void PC_DROPS_TEACH_SPL_SUMMONDEMON()
{
	B_TeachPlayerTalentRunes(hero, SPL_SUMMONDEMON, LPCOST_RUNEN_5);
};

func void PC_DROPS_TEACH_SPL_SUMMONSKELETON()
{
	B_TeachPlayerTalentRunes(hero, SPL_SUMMONSKELETON, LPCOST_RUNEN_3);
};

func void PC_DROPS_TEACH_SPL_SUMMONGOLEM()
{
	B_TeachPlayerTalentRunes(hero, SPL_SUMMONGOLEM, LPCOST_RUNEN_4);
};

func void PC_DROPS_TEACH_SPL_ARMYOFDARKNESS()
{
	B_TeachPlayerTalentRunes(hero, SPL_ARMYOFDARKNESS, LPCOST_RUNEN_6);
};

func void PC_DROPS_TEACH_SPL_DESTROYUNDEAD()
{
	B_TeachPlayerTalentRunes(hero, SPL_DESTROYUNDEAD, LPCOST_RUNEN_4);
};

func void PC_DROPS_TEACH_SPL_WINDFIST()
{
	B_TeachPlayerTalentRunes(hero, SPL_WINDFIST, LPCOST_RUNEN_2);
};

func void PC_DROPS_TEACH_SPL_STORMFIST()
{
	B_TeachPlayerTalentRunes(hero, SPL_STORMFIST, LPCOST_RUNEN_3);
};

func void PC_DROPS_TEACH_SPL_TELEKINESIS()
{
	B_TeachPlayerTalentRunes(hero, SPL_TELEKINESIS, LPCOST_RUNEN_2);
};

func void PC_DROPS_TEACH_SPL_CHARM()
{
	B_TeachPlayerTalentRunes(hero, SPL_CHARM, LPCOST_RUNEN_4);
};

func void PC_DROPS_TEACH_SPL_SLEEP()
{
	B_TeachPlayerTalentRunes(hero, SPL_SLEEP, LPCOST_RUNEN_1);
};

func void PC_DROPS_TEACH_SPL_PYROKINESIS()
{
	B_TeachPlayerTalentRunes(hero, SPL_PYROKINESIS, LPCOST_RUNEN_4);
};

func void PC_DROPS_TEACH_SPL_CONTROL()
{
	B_TeachPlayerTalentRunes(hero, SPL_CONTROL, LPCOST_RUNEN_5);
};

func void PC_DROPS_TEACH_SPL_FEAR()
{
	B_TeachPlayerTalentRunes(hero, SPL_FEAR, LPCOST_RUNEN_3);
};

func void PC_DROPS_TEACH_SPL_BREATHOFDEATH()
{
	B_TeachPlayerTalentRunes(hero, SPL_BREATHOFDEATH, LPCOST_RUNEN_6);
};