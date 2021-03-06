instance GRD_292_Gardist (Npc_Default)
{
	//-------- primary data --------
	
	name 		= 	NAME_Gardist;
	guild 		=	GIL_GRD;
	npctype		=	npctype_guard;
	level 		=	40;
	voice		=	6;
	id 			=	292;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] 	= 100;
	attribute[ATR_DEXTERITY] 	= 80;
	attribute[ATR_MANA_MAX] 	= 0;
	attribute[ATR_MANA] 		= 0;
	attribute[ATR_HITPOINTS_MAX]= 280;
	attribute[ATR_HITPOINTS] 	= 280;

	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	Mdl_ApplyOverlayMds (self,"SHIELD_ST2.MDS");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 0,"Hum_Head_Psionic", 2,  1, GRD_ARMOR_H);
        
	B_Scale (self);
   	Mdl_SetModelFatness(self,0);
    	
   	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente -------- 
				
	
	Npc_SetTalentSkill (self, NPC_TALENT_1H,2);
	Npc_SetTalentSkill (self, NPC_TALENT_2H,1);
	Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,1);
	Npc_SetTalentSkill (self, NPC_TALENT_SHIELD,2);		
			
	//-------- inventory --------
	
	EquipItem		(self, ItMw_1H_Sword_03);
	EquipItem		(self, ITSH_W2_E3_REDANIA);
	CreateInvItem	(self, ItFoMutton);
	CreateInvItems	(self, ItMiNugget,20);
	CreateInvItem	(self, ItFo_Potion_Health_01);
	CreateInvItem	(self, ItLsTorch);

	//-------------Daily Routine-------------
	daily_routine = Rtn_FMstart_292;
};

FUNC VOID Rtn_FMstart_292 ()	//FM
{
	TA_Guard (0,00,13,00,  "FM_03");
	TA_Guard (13,00,00,00, "FM_03");
};


