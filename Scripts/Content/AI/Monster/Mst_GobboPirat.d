// *********************
// Gobbo Pirat Prototype -- soper machinima mod -- zakon
// *********************

prototype Mst_Default_Gobbo_Pirat (C_NPC)			
{
	// ------ Monster -----
	name							=	"Goblin Pirat";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_BLACKGOBBO;
	level							=	10;
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	40;
	attribute	[ATR_DEXTERITY]		=	40;
	attribute	[ATR_HITPOINTS_MAX]	=	120;
	attribute	[ATR_HITPOINTS]		=	120;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	20;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;

	// ------ Damage Types ------						//entweder EIN damagetype oder mehrere damage[x], die dann addiert werden und getrennten R�stungsabzug bekommen
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	// ------ Kampf-Taktik ------
	fight_tactic	=	FAI_GOBBO;
	
	// ------ senses & ranges ------
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	3000;		// 30m

	aivar[AIV_MM_Behaviour]		= PACKHUNTER;
	
	aivar[AIV_MM_PercRange]		= 1500;
	aivar[AIV_MM_DrohRange]		= 1200;
	aivar[AIV_MM_AttackRange]	= 700;
	aivar[AIV_MM_DrohTime]		= 4;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	// ------ Daily Routine ------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};

//Proto Kapitan


prototype Mst_Default_Gobbo_KapitanPirat (C_NPC)			
{
	// ------ Monster -----
	name							=	"Goblin Kapitan";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_BLACKGOBBO;
	level							=	15;
	
	// ------ Attribute ------
	attribute	[ATR_STRENGTH]		=	70;
	attribute	[ATR_DEXTERITY]		=	70;
	attribute	[ATR_HITPOINTS_MAX]	=	200;
	attribute	[ATR_HITPOINTS]		=	200;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	// ------ Protection ------
	protection	[PROT_BLUNT]		=	20;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	20;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	0;

	// ------ Damage Types ------						//entweder EIN damagetype oder mehrere damage[x], die dann addiert werden und getrennten R�stungsabzug bekommen
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	// ------ Kampf-Taktik ------
	fight_tactic	=	FAI_GOBBO;
	
	// ------ senses & ranges ------
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	3000;		// 30m

	aivar[AIV_MM_Behaviour]		= PACKHUNTER;
	
	aivar[AIV_MM_PercRange]		= 1500;
	aivar[AIV_MM_DrohRange]		= 1200;
	aivar[AIV_MM_AttackRange]	= 700;
	aivar[AIV_MM_DrohTime]		= 4;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	// ------ Daily Routine ------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};


// *****************
// 		Visuals
// *****************

func void B_SetVisuals_Gobbo_Pirat01()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"GOB_PIR_1",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Pirat02()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"GOB_PIR_2",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


func void B_SetVisuals_Gobbo_Pirat03()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"GOB_PIR_3",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Pirat04()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"GOB_PIR_4",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Pirat05()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"GOB_PIR_5",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void B_SetVisuals_Gobbo_Kapitan()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"GOB_PIR_CAP",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

// ***********
// Green Gobbo
// ***********

INSTANCE Gobbo_Pirat01 (Mst_Default_Gobbo_Pirat)
{
	B_SetVisuals_Gobbo_Pirat01();
	CreateInvItems(self, ItMi_Stuff_OldCoin_01, 10);
	Npc_SetToFightMode (self, ItMw_1H_Mace_02); //Waffe ist nur Optik - Schaden wird NUR 話er STR bestimmt (Gobbo ist als Monster im Fistmode)
};



INSTANCE Gobbo_Pirat02 (Mst_Default_Gobbo_Pirat)
{
	B_SetVisuals_Gobbo_Pirat02();
	CreateInvItems(self, ItMi_Stuff_OldCoin_01, 10);
	Npc_SetToFightMode (self, ItMw_1H_Mace_02); //Waffe ist nur Optik - Schaden wird NUR 話er STR bestimmt (Gobbo ist als Monster im Fistmode)
};



INSTANCE Gobbo_Pirat03 (Mst_Default_Gobbo_Pirat)
{
	B_SetVisuals_Gobbo_Pirat03();
	CreateInvItems(self, ItMi_Stuff_OldCoin_01, 10);
	Npc_SetToFightMode (self, ItMw_1H_Mace_02); //Waffe ist nur Optik - Schaden wird NUR 話er STR bestimmt (Gobbo ist als Monster im Fistmode)
};


INSTANCE Gobbo_Pirat04 (Mst_Default_Gobbo_Pirat)
{
	B_SetVisuals_Gobbo_Pirat04();
	CreateInvItems(self, ItMi_Stuff_OldCoin_01, 10);
	Npc_SetToFightMode (self, ItMw_1H_Mace_02); //Waffe ist nur Optik - Schaden wird NUR 話er STR bestimmt (Gobbo ist als Monster im Fistmode)
};



INSTANCE Gobbo_Pirat05 (Mst_Default_Gobbo_Pirat)
{
	B_SetVisuals_Gobbo_Pirat05();
	CreateInvItems(self, ItMi_Stuff_OldCoin_01, 10);
	Npc_SetToFightMode (self, ItMw_1H_Mace_02); //Waffe ist nur Optik - Schaden wird NUR 話er STR bestimmt (Gobbo ist als Monster im Fistmode)
};

INSTANCE Gobbo_Kapitan (Mst_Default_Gobbo_KapitanPirat)
{
	B_SetVisuals_Gobbo_Kapitan();
	CreateInvItems(self, ItMi_Stuff_OldCoin_01, 10);
	CreateInvItem(self, ItMi_Kompass);
	Npc_SetToFightMode (self, ItMw_2H_Axe_light_01); //Waffe ist nur Optik - Schaden wird NUR 話er STR bestimmt (Gobbo ist als Monster im Fistmode)
};








