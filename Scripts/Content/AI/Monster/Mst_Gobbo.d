/*************************************************************************
**	GreenGobbo Prototype												**
*************************************************************************/

PROTOTYPE Mst_Default_GreenGobbo(C_NPC)			
{
	name							=	"Goblin";
	guild							=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]			= 	ID_GOBBO;
	level							=	5;
//------------------------------------------------------------------
	attribute	[ATR_STRENGTH]		=	20;
	attribute	[ATR_DEXTERITY]		=	5;
	
	attribute	[ATR_HITPOINTS_MAX]	=	20;
	attribute	[ATR_HITPOINTS]		=	20;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//------------------------------------------------------------------
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
//------------------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//------------------------------------------------------------------
	fight_tactic	=	FAI_GOBBO;
//------------------------------------------------------------------
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	3000;		// 30m

	aivar[AIV_MM_Behaviour]		= PACKHUNTER;
	
	aivar[AIV_MM_PercRange]		= 1500;
	aivar[AIV_MM_DrohRange]		= 1000;
	aivar[AIV_MM_AttackRange]	= 700;
	aivar[AIV_MM_DrohTime]		= 4;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
//------------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};
//------------------------------------------------------------------
func void Set_GreenGobbo_Visuals()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

/*************************************************************************
**	SkeletonGobbo Prototype												**
*************************************************************************/

PROTOTYPE Mst_Default_SkeletonGobbo(C_NPC)			
{
	name							=	"Szkielet Goblin";
	guild							=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;
	level							=	15;
//------------------------------------------------------------------
	attribute	[ATR_STRENGTH]		=	30;
	attribute	[ATR_DEXTERITY]		=	30;
	
	attribute	[ATR_HITPOINTS_MAX]	=	50;
	attribute	[ATR_HITPOINTS]		=	50;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//------------------------------------------------------------------
	protection	[PROT_BLUNT]		=	20;
	protection	[PROT_EDGE]			=	20;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	20;
	protection	[PROT_FLY]			=	20;
	protection	[PROT_MAGIC]		=	20;
//------------------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//------------------------------------------------------------------
	fight_tactic	=	FAI_GOBBO;
//------------------------------------------------------------------
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	3000;		// 30m

	aivar[AIV_MM_Behaviour]		= PACKHUNTER;
	
	aivar[AIV_MM_PercRange]		= 1500;
	aivar[AIV_MM_DrohRange]		= 1000;
	aivar[AIV_MM_AttackRange]	= 700;
	aivar[AIV_MM_DrohTime]		= 4;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
//------------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;	
};

func void Set_SkeletonGobbo_Visuals()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gobbo_Skeleton_Body",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Green Gobbo Club 													**
*************************************************************************/

INSTANCE GreenGobboClub	(Mst_Default_GreenGobbo)
{
	Set_GreenGobbo_Visuals();

	fight_tactic					=	FAI_MONSTER_COWARD;

	Npc_SetToFightMode (self, ItMw_1h_Club_01); //+5
	attribute[ATR_STRENGTH] = attribute	[ATR_STRENGTH] + 5;// da technisch im Faustkampf
};


/*************************************************************************
**	Green Gobbo Sword													**
*************************************************************************/

INSTANCE GreenGobboSword (Mst_Default_GreenGobbo)
{
	Set_GreenGobbo_Visuals();
	Npc_SetToFightMode (self, ItMw_1H_Sword_Old_01); //+10
	attribute[ATR_STRENGTH] = attribute	[ATR_STRENGTH] + 10; // da technisch im Faustkampf
};

INSTANCE SkeletonGobbo (Mst_Default_SkeletonGobbo)
{
	Set_SkeletonGobbo_Visuals();
	Npc_SetToFightMode (self, ItMw_1H_Sword_Old_01);
	CreateInvItem(self, Itat_Skeletonbone);
};

INSTANCE SummonedByPC_Gobbo (Mst_Default_SkeletonGobbo)
{
	level	=	0;
	Set_SkeletonGobbo_Visuals();
	Npc_SetToFightMode (self, ItMw_1H_Sword_Old_01);
	senses						= SENSE_HEAR | SENSE_SEE;
	start_aistate	=	ZS_MM_SummonedByPC;
	self.aivar[AIV_MM_DistToMaster] = 300;
	self.aivar[AIV_MM_TimeLooseHP] 	= 5;
	self.aivar[AIV_MM_PARTYMEMBER] = TRUE;
};

INSTANCE SummonedByNPC_Gobbo (Mst_Default_SkeletonGobbo)
{
	Set_SkeletonGobbo_Visuals();
	Npc_SetToFightMode (self, ItMw_1H_Sword_Old_01);
	start_aistate	=	ZS_MM_Summoned;
};