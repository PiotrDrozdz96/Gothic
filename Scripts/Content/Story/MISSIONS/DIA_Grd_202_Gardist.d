//------------------------------------------------------------------------
//	Attack
//------------------------------------------------------------------------
INSTANCE Info_Grd_202_Attack (C_INFO)
{
	npc			= Grd_202_Gardist;
	nr			= 1;
	condition	= Info_Grd_202_Attack_Condition;
	information	= Info_Grd_202_Attack_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Grd_202_Attack_Condition()
{
	if (Npc_GetTrueGuild(hero) != GIL_STT)
	&& (Npc_GetTrueGuild(hero) != GIL_GRD)
	&& (Npc_GetTrueGuild(hero) != GIL_KDF)
	{
		return 			TRUE;
	};
};

func int Info_Grd_202_Attack_Info()
{

	hero.aivar[AIV_LASTDISTTOWP] 		= 0;
	hero.aivar[AIV_GUARDPASSAGE_STATUS]	= AIV_GPS_PUNISH;		

	B_FullStop			(self);	
	AI_StopProcessInfos	(self);					//dem Spieler sofort wieder die Kontrolle zurückgeben
	B_IntruderAlert		(self,	other);
	B_SetAttackReason	(self,	AIV_AR_INTRUDER);
	Npc_SetTarget		(self,	hero);
	AI_StartState		(self,	ZS_Attack,	1,	"");
};
