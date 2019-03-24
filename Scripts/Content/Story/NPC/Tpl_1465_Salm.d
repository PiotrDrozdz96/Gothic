instance TPL_1465_Salm (Npc_Default)
{
	//-------- primary data --------
	name =							"Salm";
	npctype =						Npctype_ROGUE;
	guild =							GIL_ORCWARRIOR;
	level =							12;
	flags =							0;
	
	voice =							13;
	id =							1465;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] =		45;
	attribute[ATR_DEXTERITY] =		25;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	184;
	attribute[ATR_HITPOINTS] =		184;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			Body-Mesh	Body-Tex  Skin-Color	Head-MMS    Head-Tex	Teeth-Tex Armor-Tex
	Mdl_SetVisualBody (self,"hum_body_Naked0",1, 1 ,"Hum_Head_Psionic", 65 , 0, TPL_ARMOR_M);
	B_Scale (self);
	Mdl_SetModelFatness(self,-1);
	
	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_2H,1);
	
	//-------- inventory --------
	
	EquipItem (self, ItMw_2H_Sword_Light_01);
	CreateInvItem (self, ItFoSoup);
	CreateInvItem (self, ItMiJoint_1);
	
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_1465;
};

FUNC VOID Rtn_start_1465 ()
{
    TA_StandAround		(13,00,14,00,"LOCATION_23_CAVE_1_IN");	
    TA_StandAround		(14,00,13,00,"LOCATION_23_CAVE_1_IN");
};

