/*************************************************************************
**	Orc WARRIOR Prototype												**
*************************************************************************/

PROTOTYPE Mst_Default_OrcWarrior(C_Npc)			
{
	name							=	"Ork-�o�nierz";
	guild							=	GIL_ORCWARRIOR;
	npctype							=	NPCTYPE_GUARD;
	voice							=	17;
	level							=	35;
//----------------------------------------------------------	
	attribute	[ATR_STRENGTH]		=	100;
	attribute	[ATR_DEXTERITY]		=	100;
	
	attribute	[ATR_HITPOINTS_MAX]	=	300;
	attribute	[ATR_HITPOINTS]		=	300;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//----------------------------------------------------------	
	protection	[PROT_BLUNT]		=	80;
	protection	[PROT_EDGE]			=	80;
	protection	[PROT_POINT]		=	80;
	protection	[PROT_FIRE]			=	40;
	protection	[PROT_FLY]			=	30;
	protection	[PROT_MAGIC]		=	40;
//----------------------------------------------------------	
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//---------------------------------------------------------
//---------------------------------------------------------
	fight_tactic					=	FAI_HUMAN_MASTER;
//---------------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 2000;

	aivar[AIV_MM_Behaviour]		= HUNTER;
	
	aivar[AIV_MM_PercRange]		= 1200;
	aivar[AIV_MM_DrohRange]		= 1000;
	aivar[AIV_MM_AttackRange]	= 700;
	aivar[AIV_MM_DrohTime]		= 5;
	aivar[AIV_MM_FollowTime]	= 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
//-------------------------------------------------------------
	start_aistate				= ZS_Orc_Guard; // w fix-modzie jest ZS_Orc_Guard, niestety ci�gle jest co� zbugowane dlatego oryginale ZS_Guard
};
//-------------------------------------------------------------
func void Set_OrcWarrior_Visuals()
{
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Orc_BodyWarrior",DEFAULT,	DEFAULT,	"Orc_HeadWarrior",	DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Orc Warrior 1 - Fighter    														**
*************************************************************************/
INSTANCE OrcWarrior1	(Mst_Default_OrcWarrior)
{
	//-------- general --------
	name							=	"Ork-wojownik";
	level							=	25;

	//-------- visual --------
	Set_OrcWarrior_Visuals();

	//-------- attributes --------
	attribute	[ATR_STRENGTH]		=	60;
	attribute	[ATR_HITPOINTS_MAX]	=	200;
	attribute	[ATR_HITPOINTS]		=	200;

	//-------- protection --------
	protection	[PROT_BLUNT]		=	60;
	protection	[PROT_EDGE]			=	60;
	protection	[PROT_POINT]		=	60;
	protection	[PROT_FIRE]			=	30;

	aivar[AIV_IMPORTANT] = ID_ORCWARRIOR1;

	//-------- inventory --------
	EquipItem (self, ItMw2hOrcAxe02);
};

/*************************************************************************
**	Orc Warrior 2 - Warrior    														**
*************************************************************************/
INSTANCE OrcWarrior2	(Mst_Default_OrcWarrior)
{
	//-------- general --------
	name							=	"Ork-�o�nierz";
	level							=	30;

	//-------- visual --------
	Set_OrcWarrior_Visuals();

	//-------- attributes --------
	attribute	[ATR_STRENGTH]		=	75;
	attribute	[ATR_HITPOINTS_MAX]	=	230;
	attribute	[ATR_HITPOINTS]		=	230;

	//-------- protection --------
	protection	[PROT_BLUNT]		=	70;
	protection	[PROT_EDGE]			=	70;
	protection	[PROT_POINT]		=	70;
	protection	[PROT_FIRE]			=	35;

	aivar[AIV_IMPORTANT] = ID_ORCWARRIOR2;

	//-------- inventory --------
	EquipItem (self, ItMw2hOrcAxe03);
};

/*************************************************************************
**	Orc Warrior 3 - Clan    														**
*************************************************************************/
INSTANCE OrcWarrior3	(Mst_Default_OrcWarrior)
{
	//-------- general --------
	name							=	"Ork-wiarus";
	level							=	35;

	//-------- visual --------
	Set_OrcWarrior_Visuals();

	//-------- attributes --------
	attribute	[ATR_STRENGTH]		=	85;
	attribute	[ATR_HITPOINTS_MAX]	=	250;
	attribute	[ATR_HITPOINTS]		=	250;

	//-------- protection --------
	protection	[PROT_BLUNT]		=	80;
	protection	[PROT_EDGE]			=	80;
	protection	[PROT_POINT]		=	80;
	protection	[PROT_FIRE]			=	40;

	aivar[AIV_IMPORTANT] = ID_ORCWARRIOR3;

	//-------- inventory --------
	EquipItem (self, ItMw2hOrcSword01);
};

/*************************************************************************
**	Orc Warrior 4 - Tempelkrieger										**
*************************************************************************/
INSTANCE OrcWarrior4	(Mst_Default_OrcWarrior)
{
	//-------- general --------
	name							=	"Ork-stra�nik";
	level							=	40;

	//-------- visual --------
	Set_OrcWarrior_Visuals();

	//-------- attributes --------
	attribute	[ATR_STRENGTH]		=	95;
	attribute	[ATR_HITPOINTS_MAX]	=	300;
	attribute	[ATR_HITPOINTS]		=	300;

	//-------- protection --------
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	45;

	aivar[AIV_IMPORTANT] = ID_ORCWARRIOR4;

	//-------- inventory --------
	EquipItem (self, ItMw2hOrcaxe04);
};

