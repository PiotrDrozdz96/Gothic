/*************************************************************************
**	Orc WARRIOR Prototype												**
*************************************************************************/

PROTOTYPE Mst_Default_OrcStone(C_Npc)			
{
	name							=	"Kamienny Ork";
	guild							=	GIL_GOLEM;
	level							=	100;
//----------------------------------------------------------	
	attribute	[ATR_STRENGTH]		=	300;
	attribute	[ATR_DEXTERITY]		=	300;
	
	attribute	[ATR_HITPOINTS_MAX]	=	600;
	attribute	[ATR_HITPOINTS]		=	600;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//----------------------------------------------------------	
	protection	[PROT_BLUNT]		=	80;
	protection	[PROT_EDGE]			=	9999;
	protection	[PROT_POINT]		=	9999;
	protection	[PROT_FIRE]			=	9999;
	protection	[PROT_FLY]			=	9999;
	protection	[PROT_MAGIC]		=	9999;
//----------------------------------------------------------	
	damagetype 						=	DAM_FLY;
//---------------------------------------------------------
	fight_tactic					=	FAI_HUMAN_MASTER;
//---------------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 2000;

	aivar[AIV_MM_Behaviour]		= HUNTER;
	
	aivar[AIV_MM_PercRange]		= 1500;
	aivar[AIV_MM_DrohRange]		= 1500;
	aivar[AIV_MM_AttackRange]	= 1500;
	aivar[AIV_MM_DrohTime]		= 0;
	aivar[AIV_MM_FollowTime]	= 5;
	aivar[AIV_MM_FollowInWater] = FALSE;
//-------------------------------------------------------------
	start_aistate				= ZS_Guard;
};
//-------------------------------------------------------------
func void Set_OrcStone_Visuals()
{
	Mdl_SetVisual			(self,	"OrcStone.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"OrcStone_Body",DEFAULT,	DEFAULT,	"OrcStone_Head",	DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Orc Warrior 1 - Fighter    														**
*************************************************************************/
INSTANCE OrcStone	(Mst_Default_OrcStone)
{
    Set_OrcStone_Visuals();
    Mdl_SetModelScale(self,2,2,2);
    EquipItem (self, OrcStone_Axe);
    CreateInvItem	(self, ItAt_StoneGolem_02);
    CreateInvItem	(self, ITSH_LONG_A);
};