instance TPL_1422_GorHanis (Npc_Default)
{
	//-------- primary data --------
	name =							"Gor Hanis";
	npctype =						npctype_main;
	guild =							GIL_NONE;
	level =							12;
	
	
	voice =							8;
	id =							1422;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] =		70;
	attribute[ATR_DEXTERITY] =		25;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	184;
	attribute[ATR_HITPOINTS] =		184;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1,"Hum_Head_Bald", 66,  1, TPL_ARMOR_L);

	B_Scale (self);
	Mdl_SetModelFatness(self,-1);
	
	fight_tactic	=	FAI_HUMAN_MASTER;

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_1H,2);
	
	//-------- inventory --------
	
	EquipItem (self, ItMw_1H_Sword_01);
	CreateInvItem (self, ItFoSoup);
	CreateInvItem (self, ItMiJoint_1);
	CreateInvItem	(self,ItMi_Stuff_OldCoin_02);	
	

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1422;
};

FUNC VOID Rtn_start_1422 ()
{
	TA_Sleep		(23,45,07,45,"OCR_HUT_32");
	TA_StandAround  (07,45,10,05,"OCR_CAMPFIRE_I_1");
	TA_Smalltalk	(10,05,16,00,"OCR_SMALLTALK_A_OC_ARENA");
	TA_PracticeSword(16,00,17,15,"OCR_ARENABATTLE");
	TA_SitCampfire	(17,15,23,45,"OCR_CAMPFIRE_I_1");
};

FUNC VOID Rtn_Guide_1422 ()
{
	TA_GuidePC (08,00,20,00,"OCR_ARENABATTLE_TRAIN");
	TA_GuidePC (20,00,08,00,"OCR_ARENABATTLE_TRAIN");
};

FUNC VOID Rtn_Flee_1422 () //DAMIT IST ER NACHHER NUR NOCH IM ALTEN TEMPEL ZU FINDEN!!!
{
	TA_Stay 	(00,00,12,00,"");
	TA_Stay 	(12,00,24,00,"");
};

// **************************************
//				IN SLEEPER TEMPLE
// **************************************

instance TPL_1464_GorHanisOT (Npc_Default)
{
	//-------- primary data --------
	name 	=	"Gor Hanis";
	npctype =	npctype_main;
	guild 	=	GIL_GUR;
	level 	=	15;
	
	
	voice 	=	8;
	id 		=	1464;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] =		70;
	attribute[ATR_DEXTERITY] =		25;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	250;
	attribute[ATR_HITPOINTS] =		250;

	//------ Protection -------
	protection	[PROT_BLUNT]		=	90;
	protection	[PROT_EDGE]			=	90;
	protection	[PROT_POINT]		=	140;
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	80;
	protection	[PROT_MAGIC]		=	75;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1,"Hum_Head_Bald", 66,  1, TPL_ARMOR_L);

	B_Scale (self);
	Mdl_SetModelFatness(self,-1);
	
	fight_tactic	=	FAI_HUMAN_MASTER;

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_1H,2);
	Npc_SetTalentSkill (self, NPC_TALENT_2H,1);
	
	//-------- inventory --------
	
	CreateInvItem (self, ItMw_2H_Sword_Light_02);
	CreateInvItem (self, ItFoSoup);
	CreateInvItem (self, ItMiJoint_1);
	CreateInvItem (self, ItFo_Potion_Health_02 );	
	

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1464;
};

FUNC VOID Rtn_start_1464 ()
{
	TA_Guard	(09,00,21,00,"TPL_318");
    TA_Guard	(21,00,09,00,"TPL_318");
};


