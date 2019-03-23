instance TPL_1449_Templer (Npc_Default)
{
	//-------- primary data --------
	name 	=	"Gor Na Drak";
	npctype =	npctype_Main;
	guild 	=	GIL_GUR;
	level 	=	21;
	
	voice 	=	9;
	id 		=	1449;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] =		100;
	attribute[ATR_DEXTERITY] =		80;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	292;
	attribute[ATR_HITPOINTS] =		292;
	
	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1 ,"Hum_Head_Bald", 63,  2, TPL_ARMOR_H);

	B_Scale (self);
	Mdl_SetModelFatness(self,-1);
	
	fight_tactic	=	FAI_HUMAN_STRONG;
	
	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_2H,2);
	
	//-------- inventory --------
	
	CreateInvItem (self, ItMw_2H_Sword_Light_04);
	CreateInvItem (self, ItFoSoup);
	CreateInvItem (self, ItMiJoint_1);
	CreateInvItem (self, ItFo_Potion_Health_02 );
	
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_OT_1449;
};
FUNC VOID Rtn_start_1449 ()
{
    TA_Guard	(00,00,12,00,"TPL_408");	
	TA_Guard	(12,00,24,00,"TPL_408");
};

FUNC VOID Rtn_OT_1449 ()
{
    TA_AlignGuard	(00,00,12,00,"TPL_012");	
	TA_AlignGuard	(12,00,24,00,"TPL_012");
};