/*************************************************************************
**	Wolf Prototype														**
*************************************************************************/

PROTOTYPE Mst_Default_Wolf(C_Npc)			
{
	name							=	"Wilk";
	guild							=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]			= 	ID_WOLF;
	level							=	6;
//-----------------------------------------------------------
	attribute	[ATR_STRENGTH]		=	20;
	attribute	[ATR_DEXTERITY]		=	20;
	
	attribute	[ATR_HITPOINTS_MAX]	=	40;
	attribute	[ATR_HITPOINTS]		=	40;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//-----------------------------------------------------------
	protection	[PROT_BLUNT]		=	10;
	protection	[PROT_EDGE]			=	10;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
//-----------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//-----------------------------------------------------------
	fight_tactic					=	FAI_WOLF;
//-----------------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 3000;		// 30m

	aivar[AIV_MM_Behaviour]		= PACKHUNTER;
	
	aivar[AIV_MM_PercRange]		= 1500;
	aivar[AIV_MM_DrohRange]		= 1200;
	aivar[AIV_MM_AttackRange]	= 500;
	aivar[AIV_MM_DrohTime]		= 3;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
//-----------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;	
};
//-----------------------------------------------------------
func void Set_Wolf_Visuals()
{
	Mdl_SetVisual			(self,"Wolf.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Wol_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

func void Set_UndeadWolf_Visuals()
{
	Mdl_SetVisual			(self,"Wolf.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Wol_Body",		1,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Wolf    															**
*************************************************************************/

INSTANCE Wolf	(Mst_Default_Wolf)
{
	Set_Wolf_Visuals();
	Npc_SetToFistMode(self);
};

INSTANCE SummonedByPC_Wolf (Mst_Default_Wolf)
{
	level	=	0;
	guild					=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]	= 	ID_SKELETON;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	35;
	attribute	[ATR_DEXTERITY]		=	35;
	attribute	[ATR_HITPOINTS_MAX]	=	60;
	attribute	[ATR_HITPOINTS]		=	60;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	50;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	50;

	Set_UndeadWolf_Visuals();
	Npc_SetToFistMode(self);
	senses			= SENSE_HEAR | SENSE_SEE;
	start_aistate	=	ZS_MM_SummonedByPC;
	self.aivar[AIV_MM_DistToMaster] = 300;
	self.aivar[AIV_MM_TimeLooseHP] 	= 5;
	self.aivar[AIV_MM_PARTYMEMBER] = TRUE;
};

INSTANCE SummonedByNPC_Wolf (Mst_Default_Wolf)
{
	guild					=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]	= 	ID_SKELETON;

	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	35;
	attribute	[ATR_DEXTERITY]		=	35;
	attribute	[ATR_HITPOINTS_MAX]	=	60;
	attribute	[ATR_HITPOINTS]		=	60;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	50;
	protection	[PROT_EDGE]			=	50;
	protection	[PROT_POINT]		=	15;
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	50;

	Set_UndeadWolf_Visuals();
	Npc_SetToFistMode(self);
	start_aistate	=	ZS_MM_Summoned;
};