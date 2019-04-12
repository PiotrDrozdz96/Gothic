instance EBR_103_Drak (Npc_Default)
{
	//-------- primary data --------
	
	name 		=	"Drak";
	npctype 	= 	npctype_main;
   	guild 		=	GIL_EBR;      
	level 		=	70;
	voice 		=	12;
	id 			=	103;
	flags		=	NPC_FLAG_IMMORTAL;

	//-------- abilities --------
	attribute[ATR_STRENGTH] 	= 100;
	attribute[ATR_DEXTERITY] 	= 100;
	attribute[ATR_MANA_MAX] 	= 0;
	attribute[ATR_MANA] 		= 0;
	attribute[ATR_HITPOINTS_MAX]= 500;
	attribute[ATR_HITPOINTS] 	= 500;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Arrogance.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 1,"Hum_Head_FatBald", 11, 3, DHT_ARMOR_H);

	B_Scale (self); 
	Mdl_SetModelFatness(self,0);
	
	self.aivar[AIV_IMPORTANT] = TRUE;
	

	//-------- Talente --------  
	
	Npc_SetTalentSkill (self, NPC_TALENT_1H,3);
	Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);
			
	//-------- inventory -------- 
	EquipItem(self,ItMw_1H_Sword_DHT_Master);
	EquipItem (self,ItRw_Crossbow_05);                                   
	CreateInvItem(self,ItFo_Potion_Health_03);
	CreateInvItems (self,ItAmBolt,30);
	

	//------------- ai -------------
	daily_routine	=	Rtn_start_103;
	fight_tactic	=	FAI_HUMAN_MASTER;
	senses			=	SENSE_SEE|SENSE_HEAR|SENSE_SMELL;
};

FUNC VOID Rtn_start_103 ()
{
	TA_Guard			(08,30,00,01,"OCC_BARONS_GREATHALL_BERATER");
	TA_Guard			(00,01,08,30,"OCC_BARONS_GREATHALL_BERATER");
};

FUNC VOID Rtn_OMFull_103 ()
{
	TA_Boss			(07,25,20,00,"OCC_CENTER_4");
	TA_Guard		(20,00,01,00,"OCC_BARONS_GREATHALL_BERATER");
	TA_Guard		(20,00,07,25,"OCC_BARONS_GREATHALL_BERATER");
};

func VOID Rtn_OT_103 ()
{
	TA_Guard	( 10,00,22,00, "OCC_CHAPEL_STAIRCASE_TOP" );  
	TA_Guard	( 22,00,10,00, "OCC_CHAPEL_STAIRCASE_TOP" );
};