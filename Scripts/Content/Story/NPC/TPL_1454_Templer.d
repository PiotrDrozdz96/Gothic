instance TPL_1454_Templer (Npc_Default)
{
	//-------- primary data --------
	name 	=	"Gor Na Ran";
	npctype	=	npctype_Main;
	guild 	=	GIL_GUR;
	level 	=	100;
	
	voice 	=	13;
	id 		=	1454;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] =		70;
	attribute[ATR_DEXTERITY] =		65;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	250;
	attribute[ATR_HITPOINTS] =		250;
	
	//------ Protection -------
	protection	[PROT_BLUNT]		=	1000;
	protection	[PROT_EDGE]			=	1000;
	protection	[PROT_POINT]		=	1000;
	protection	[PROT_FIRE]			=	80;
	protection	[PROT_FLY]			=	80;
	protection	[PROT_MAGIC]		=	70;
	
	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 3,"Hum_Head_FatBald", 0, 1, TPL_ARMOR_H);

	B_Scale (self);
	Mdl_SetModelFatness(self,-1);
	
	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_2H,1);
	
	//-------- inventory --------
	
	CreateInvItem (self, ItMw_2H_Sword_Light_02);
	EquipItem	(self, ItRw_Crossbow_01);//### Palisadenwache
	CreateInvItems	(self, ItAmBolt, 30);
	CreateInvItem (self, ItFoSoup);
	CreateInvItem (self, ItMiJoint_1);
	CreateInvItem (self, ItFo_Potion_Health_02 );
	
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_OT_1454;
};

FUNC VOID Rtn_start_1454 ()
{
		TA_Guard	(09,00,21,00,"TPL_408");
		TA_Guard	(21,00,09,00,"TPL_408");	
};

FUNC VOID Rtn_OT_1454 ()
{
		TA_AlignGuard	(09,00,21,00,"TPL_327");
    	TA_AlignGuard	(21,00,09,00,"TPL_327");	
};