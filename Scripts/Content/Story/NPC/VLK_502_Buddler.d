instance VLK_502_Buddler (Npc_Default)
{
	//-------- primary data --------
	
	name =							"Marus";
	npctype =						npctype_Ambient;
	guild =							GIL_VLK;      
	level =							2;
	
	
	voice =							4;
	id =							502;

	//-------- abilities --------              
                                                   
	attribute[ATR_STRENGTH] =		13; 
	attribute[ATR_DEXTERITY] =		10; 
	attribute[ATR_MANA_MAX] =		0; 
	attribute[ATR_MANA] =			0; 
	attribute[ATR_HITPOINTS_MAX] =	64;
	attribute[ATR_HITPOINTS] =	    64;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Tired.mds");
	//				body mesh,				head mesh,				hairmesh,	face-tex,	hair-tex,	skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",3,1,"Hum_Head_Pony", 68,  4, VLK_ARMOR_L);

	B_Scale (self); 
	Mdl_SetModelFatness (self, -1);
    	
    	self.aivar[AIV_IMPORTANT] = TRUE;
	
	fight_tactic	=	FAI_HUMAN_COWARD;               
                                                  
	//-------- Talents --------               
                                                  
	                                                            
	//-------- inventory --------             
                                                  
	EquipItem (self, ItMw_1h_Club_01);       
	CreateInvItem (self, ItMiLute);
	CreateInvItem (self, Itfo_Potion_Water_01);

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_502;
};

FUNC VOID Rtn_start_502 ()
{
	TA_Sleep		(22,00,07,00,"OCR_HUT_10");
	TA_Cook			(07,00,17,00,"OCR_COOK_AT_HUT_10");
	TA_PlayTune		(17,00,22,00,"OCR_OUTSIDE_HUT_10");
};

FUNC VOID Rtn_wait_502 ()
{
	TA_StandAround	(08,00,23,00,"OCR_CAMPFIRE_A_MOVEMENT1");
	TA_StandAround	(23,00,08,00,"OCR_CAMPFIRE_A_MOVEMENT1");
};

FUNC VOID Rtn_pick_502 ()
{
	TA_PickOre  	 (08,00,18,00,"OW_OM_ENTRANCE03");
	TA_PickOre  	 (18,00,08,00,"OW_OM_ENTRANCE03");
};










