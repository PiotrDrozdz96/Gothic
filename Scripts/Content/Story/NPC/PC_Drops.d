
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
	attribute[ATR_MANA_MAX] 	=	100;
	attribute[ATR_MANA] 		=	100;
	attribute[ATR_HITPOINTS_MAX]=	40;    
	attribute[ATR_HITPOINTS] 	=	40;    
	
	//-------- visuals --------
	// 						animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	//						Body-Mesh			Body-Tex	Skin-Color	Head-MMS    		Head-Tex	Teeth-Tex 	Armor-Tex
	Mdl_SetVisualBody (self,"hum_body_Naked0",	4,			1,			"Hum_Head_Pony",	9, 			0,			BDT_ARMOR_H);
	
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
	
};