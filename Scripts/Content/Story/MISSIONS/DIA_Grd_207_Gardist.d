
CONST STRING	Grd_207_CHECKPOINT		= "WP_INTRO_WI10";

INSTANCE Info_Grd_207_FirstWarn (C_INFO)
{
	npc			= Grd_207_Gardist;
	nr			= 1;
	condition	= Info_Grd_207_FirstWarn_Condition;
	information	= Info_Grd_207_FirstWarn_Info;
	permanent	= 1;
	important	= 1;
};                       

//------------------------------------------------------------------------
//	1. Warnung
//------------------------------------------------------------------------
FUNC INT Info_Grd_207_FirstWarn_Condition()
{
	if ((hero.aivar[AIV_GUARDPASSAGE_STATUS]== AIV_GPS_BEGIN)
	&&  (self.aivar[AIV_PASSGATE]			== FALSE		) 
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)		))
	{
		return TRUE;
	};
};

FUNC VOID Info_Grd_207_FirstWarn_Info()
{
	PrintGlobals	(PD_MISSION);

	AI_Output (self, hero,"Info_Grd_207_FirstWarn_Info_13_01"); //STA�!
	AI_Output (hero, self,"Info_Grd_212_FirstWarn_Info_15_02"); //Co si� dzieje?
	AI_Output (self, hero,"Info_Grd_207_FirstWarn_Info_13_03"); //TY tu nie wejdziesz, ch�opcze!

	if(Npc_GetTrueGuild(hero) == GIL_STT || Npc_GetTrueGuild(hero) == GIL_GRD)
	{
		if(Npc_GetTrueGuild(hero) == GIL_STT)
		{
			AI_Output (hero, self,"Info_Grd_212_Diego_Info_15_00"); //Przysy�a mnie Diego.
		}
		else if(Npc_GetTrueGuild(hero) == GIL_GRD)
		{
			AI_Output (other, self,"Info_Grd_212_FirstIn_15_01"); //Spokojnie, rozmawia�em z Thorusem. Powiedzia�, �e mog� wej��.
		};
		AI_Output (self, hero,"Info_Grd_207_Pass_Info_13_02"); //Brzmi rozs�dnie, w porz�dku - wchod�.
		self.aivar[AIV_PASSGATE] = TRUE;
	}
	else
	{
		hero.aivar[AIV_LASTDISTTOWP] 		= Npc_GetDistToWP(hero,Grd_207_CHECKPOINT);
		hero.aivar[AIV_GUARDPASSAGE_STATUS]	= AIV_GPS_FIRSTWARN;
		AI_StopProcessInfos	(self);
	};
};

//------------------------------------------------------------------------
//	2. Warnung
//------------------------------------------------------------------------
INSTANCE Info_Grd_207_LastWarn (C_INFO)
{
	npc			= Grd_207_Gardist;
	nr			= 1;
	condition	= Info_Grd_207_LastWarn_Condition;
	information	= Info_Grd_207_LastWarn_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Grd_207_LastWarn_Condition()
{
	if ((hero.aivar[AIV_GUARDPASSAGE_STATUS]		== AIV_GPS_FIRSTWARN				)
	&&  (self.aivar[AIV_PASSGATE]					== FALSE		) 
	&&  (Npc_GetDistToWP(hero,Grd_207_CHECKPOINT)	< (hero.aivar[AIV_LASTDISTTOWP]-50))
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)										)) 
	{
		return TRUE;
	};
};

func int Info_Grd_207_LastWarn_Info()
{
	AI_Output (self, hero,"Info_Grd_207_LastWarn_13_01"); //Nie masz tu czego szuka�. Jeden krok dalej, a posiekam ci� na kawa�ki.

	hero.aivar[AIV_LASTDISTTOWP] 		= Npc_GetDistToWP (hero,Grd_207_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS]	= AIV_GPS_LASTWARN;	
	
	AI_StopProcessInfos	(self);
};

//------------------------------------------------------------------------
//	Before Attack
//------------------------------------------------------------------------
INSTANCE Info_Grd_207_BeforeAttack (C_INFO)
{
	npc			= Grd_207_Gardist;
	nr			= 1;
	condition	= Info_Grd_207_BeforeAttack_Condition;
	information	= Info_Grd_207_BeforeAttack_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Grd_207_BeforeAttack_Condition()
{
	if ((hero.aivar[AIV_GUARDPASSAGE_STATUS]		== AIV_GPS_LASTWARN					)
	&&  (self.aivar[AIV_PASSGATE]					== FALSE		) 
	&&  (Npc_GetDistToWP(hero,Grd_207_CHECKPOINT)	< (hero.aivar[AIV_LASTDISTTOWP]-50))
	&&	(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)										)) 
	{
		return 			TRUE;
	};
};

func int Info_Grd_207_BeforeAttack_Info()
{
	AI_Output (self, other,"Info_Grd_207_Attack_07_00"); //Sam si� o to prosi�e�..

};

//------------------------------------------------------------------------
//	Attack
//------------------------------------------------------------------------
INSTANCE Info_Grd_207_Attack (C_INFO)
{
	npc			= Grd_207_Gardist;
	nr			= 1;
	condition	= Info_Grd_207_Attack_Condition;
	information	= Info_Grd_207_Attack_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Grd_207_Attack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Grd_207_BeforeAttack)) 
	|| (Npc_GetDistToWP(hero,Grd_207_CHECKPOINT) < 550)
	&& (Npc_GetAttitude(self,hero)	!= ATT_FRIENDLY	) 
	{
		return 			TRUE;
	};
};

func int Info_Grd_207_Attack_Info()
{

	hero.aivar[AIV_LASTDISTTOWP] 		= 0;
	hero.aivar[AIV_GUARDPASSAGE_STATUS]	= AIV_GPS_PUNISH;		

	B_FullStop			(self);	
	AI_StopProcessInfos	(self);					//dem Spieler sofort wieder die Kontrolle zur�ckgeben
	B_IntruderAlert		(self,	other);
	B_SetAttackReason	(self,	AIV_AR_INTRUDER);
	Npc_SetTarget		(self,	hero);
	AI_StartState		(self,	ZS_Attack,	1,	"");
};

// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE Info_Grd_207_EXIT (C_INFO)
{
	npc			= Grd_207_Gardist;
	nr			= 999;
	condition	= Info_Grd_207_EXIT_Condition;
	information	= Info_Grd_207_EXIT_Info;
	permanent	= 1;
	description	= DIALOG_ENDE;
};                       

FUNC INT Info_Grd_207_EXIT_Condition()
{	
	return 1;
};

FUNC VOID Info_Grd_207_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// *************************************************************
// 							 BRIEF 
// *************************************************************

INSTANCE Info_Grd_207_Brief (C_INFO)
{
	npc			= Grd_207_Gardist;
	nr			= 10;
	condition	= Info_Grd_207_Brief_Condition;
	information	= Info_Grd_207_Brief_Info;
	permanent	= 0;
	description = "Mam list do Arcymistrza Mag�w Ognia.";
};                       

FUNC INT Info_Grd_207_Brief_Condition()
{	
	if (Npc_HasItems(hero, ItWr_Fire_Letter_01) 
	|| Npc_HasItems(hero, ItWr_Fire_Letter_02))
	{
			return 1;
	};
};

FUNC VOID Info_Grd_207_Brief_Info()
{
	AI_Output (hero,self,"Info_Diego_Brief_15_00"); //Mam list do Arcymistrza Mag�w Ognia.
	AI_Output (self, other,"Info_Grd_207_Brief_07_00"); //Nie wygl�dasz mi na powa�nego pos�a�ca.
};

// *************************************************************
// 						WORK FOR GOMEZ
// *************************************************************

INSTANCE Info_Grd_207_WorkForGomez (C_INFO)
{
	npc			= Grd_207_Gardist;
	nr			= 3;
	condition	= Info_Grd_207_WorkForGomez_Condition;
	information	= Info_Grd_207_WorkForGomez_Info;
	permanent	= 0;
	description = "Chc� pracowa� dla Gomeza.";
};                       

FUNC INT Info_Grd_207_WorkForGomez_Condition()
{	
	if (Npc_GetTrueGuild (hero) == GIL_NONE)
	{
			return 1;
	};
};

FUNC VOID Info_Grd_207_WorkForGomez_Info()
{
	AI_Output (other, self,"Info_WorkForGomez_15_00"); //Chc� pracowa� dla Gomeza.
	AI_Output (self, other,"Info_Grd_207_WorkForGomez_07_00"); //A to dobre!
};
