instance Stt_321_Schatten (Npc_Default)
{
	//-------- primary data --------
	name 		=		NAME_Schatten;
	npctype 	=		NPCTYPE_AMBIENT;
	guild 		=		GIL_STT;
	level 		=		7;
	
	voice	 	=		12;
	id 			=		321;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] 		=	30;
	attribute[ATR_DEXTERITY] 		=	18;
	attribute[ATR_MANA_MAX] 		=	0;
	attribute[ATR_MANA] 			=	0;
	attribute[ATR_HITPOINTS_MAX] 	=	124;
	attribute[ATR_HITPOINTS] 		=	124;

	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 1,"Hum_Head_Psionic", 57,  1, STT_ARMOR_M);
        
	B_Scale (self);
	Mdl_SetModelFatness(self,0);
	
	fight_tactic	=	FAI_HUMAN_COWARD; 

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H,1);	
		
	//-------- inventory --------
	
	EquipItem	(self, ItMw_1H_Sword_Short_04);
	EquipItem	(self, ItRw_Bow_Small_02);
	CreateInvItems	(self, ItAmArrow, 15);
	
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_321;
};

FUNC VOID Rtn_start_321 ()
{
	TA_PickRice		(07,20,20,00,"WP_INTRO_WI18");
	TA_PickRice		(20,00,07,20,"WP_INTRO_WI18");
};
