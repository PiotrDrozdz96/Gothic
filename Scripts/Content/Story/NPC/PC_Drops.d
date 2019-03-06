
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