instance ORC_2941_WARRIOR3_WHYCOME(C_Info)
{
	npc = orc_2941_warrior3;
	nr = 1;
	condition = orc_2941_warrior3_whycome_condition;
	information = orc_2941_warrior3_whycome_info;
	important = 1;
	permanent = 0;
};


func int orc_2941_warrior3_whycome_condition()
{
	return 1;
};

func void orc_2941_warrior3_whycome_info()
{
	// AI_RemoveWeapon(other);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"DIA_ORC1_WHYCOME_17_00");	//NUR ASH VARRAG DA URTASH
	AI_Output (other, self,"DIA_Wedge_Psst_15_01"); //Co? Ja?
	AI_Output(self,other,"DIA_ORC1_WHYCOME_17_02");	//KRAK TAHH ASH VARRAG MOR
	AI_Output(other,self,"DIA_Mud_FirstEXIT_Verpiss_15_00");	//Spadaj!
	AI_StopProcessInfos(self);
	// AI_StartState(self,zs_orc_followpc,1,"");
	// Npc_SetRefuseTalk(self,20);
};


instance ORC_2941_WARRIOR3_GOHOME(C_Info)
{
	npc = orc_2941_warrior3;
	nr = 1;
	condition = orc_2941_warrior3_gohome_condition;
	information = orc_2941_warrior3_gohome_info;
	important = 1;
	permanent = 0;
};


func int orc_2941_warrior3_gohome_condition()
{
	if(Npc_GetDistToWP(hero,"OW_ORC_PATH_06") < 500)
	{
		if(!Npc_KnowsInfo(hero,orc_2943_warrior3_gohome))
		{
			return 1;
		};
	};
};

func void orc_2941_warrior3_gohome_info()
{
	// AI_RemoveWeapon(other);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"DIA_ORC1_GOHOME_17_00");	//DAKHNAK MORRA DAH UN KRASH
	AI_Output(other,self,"DIA_Mud_GetLost_15_00");	//Spadaj!
	AI_StopProcessInfos(self);
	// AI_StartState(self,zs_orc_followpc,1,"");
	// Npc_SetRefuseTalk(self,20);
};


instance ORC_2941_WARRIOR3_DONTSTEAL(C_Info)
{
	npc = orc_2941_warrior3;
	nr = 1;
	condition = orc_2941_warrior3_dontsteal_condition;
	information = orc_2941_warrior3_dontsteal_info;
	important = 1;
	permanent = 0;
};


func int orc_2941_warrior3_dontsteal_condition()
{
	if(Npc_GetDistToWP(hero,"OW_ORC_SHAMAN_PATH5") < 400)
	{
		if(!Npc_KnowsInfo(hero,orc_2943_warrior3_dontsteal))
		{
			return 1;
		};
	};
};

func void orc_2941_warrior3_dontsteal_info()
{
	// AI_RemoveWeapon(other);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"DIA_ORC1_DONTSTEAL_17_00");	//KRAK TAHH
	AI_Output (other, self,"DIA_Wedge_Psst_15_01"); //Co? Ja?
	AI_Output(self,other,"DIA_ORC1_DONTSTEAL_17_02");	//NEMROK GAH TAR TOC CARRAS KA MOR
	AI_Output (other, self,"DIA_Harlok_FetchHarlok_BACK_15_00"); //Dobra, dobra.
	AI_PlayAni(other,"T_SEARCH");
	AI_StopProcessInfos(self);
	// AI_StartState(self,zs_orc_followpc,1,"");
	// Npc_SetRefuseTalk(self,20);
};


instance ORC_2942_WARRIOR3_WHYCOME(C_Info)
{
	npc = orc_2942_warrior3;
	nr = 1;
	condition = orc_2942_warrior3_whycome_condition;
	information = orc_2942_warrior3_whycome_info;
	important = 1;
	permanent = 0;
};


func int orc_2942_warrior3_whycome_condition()
{
	if(Npc_GetDistToNpc(self,hero) < 500)
	{
		if(!Npc_KnowsInfo(hero,orc_2943_warrior3_gohome) && !Npc_KnowsInfo(hero,orc_2943_warrior3_dontsteal))
		{
			return 1;
		};
	};
};

func void orc_2942_warrior3_whycome_info()
{
	// AI_RemoveWeapon(other);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"DIA_ORC2_WHYCOME_19_00");	//Zachem prikhodit'... ASH VARRAG...
	AI_Output (other, self,"DIA_Wedge_Psst_15_01"); //Co? Ja?
	AI_Output(self,other,"DIA_ORC2_WHYCOME_19_02");	//KRAK TAHH... ukhodit' domoy ...
	AI_Output(self,other,"DIA_ORC2_WHYCOME_19_03");	//DAKHNAK... ukhodit'... UN-KRASH...
	AI_Output (other, self,"Tpl_1437_Templer_LEAVENOW_Info_15_01"); //Nie rozumiem!
	AI_Output(self,other,"DIA_ORC2_WHYCOME_19_05");	//Net krast'... TOC KARRAS KA MOR...
	AI_Output(other,self,"DIA_Harlok_FetchHarlok_BACK_15_00");	//Dobra, dobra.
	AI_StopProcessInfos(self);
	// AI_StartState(self,zs_orc_followpc,1,"");
	// Npc_SetRefuseTalk(self,20);
};


instance ORC_2943_WARRIOR3_WHYCOME(C_Info)
{
	npc = orc_2943_warrior3;
	nr = 1;
	condition = orc_2943_warrior3_whycome_condition;
	information = orc_2943_warrior3_whycome_info;
	important = 1;
	permanent = 0;
};


func int orc_2943_warrior3_whycome_condition()
{
	return 1;
};

func void orc_2943_warrior3_whycome_info()
{
	// AI_RemoveWeapon(other);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"DIA_ORC3_WHYCOME_20_00");	//Zachem prikhodit' dom orkov, morra?
	AI_Output (other, self,"DIA_SLD_751_Soeldner_UMSEHEN_INFO_15_01"); //Chcê siê tylko trochê rozejrzeæ.
	AI_Output(self,other,"DIA_ORC3_WHYCOME_20_02");	//Ty zdes' net drug. Ukhodit' domoy!
	AI_StopProcessInfos(self);
	// AI_StartState(self,zs_orc_followpc,1,"");
	// Npc_SetRefuseTalk(self,20);
};


instance ORC_2943_WARRIOR3_GOHOME(C_Info)
{
	npc = orc_2943_warrior3;
	nr = 1;
	condition = orc_2943_warrior3_gohome_condition;
	information = orc_2943_warrior3_gohome_info;
	important = 1;
	permanent = 0;
};


func int orc_2943_warrior3_gohome_condition()
{
	if(Npc_GetDistToWP(hero,"OW_ORC_BOSS") < 500)
	{
		return 1;
	};
};

func void orc_2943_warrior3_gohome_info()
{
	// AI_RemoveWeapon(other);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"DIA_ORC3_GOHOME_20_00");	//Ukhodit' proch', morra, poka zhivoy!
	AI_Output(other,self,"Info_Grd_6_DasLager_WasIstAerger_15_04"); //Dobrze, dobrze. Zrozumia³em aluzjê.
	AI_StopProcessInfos(self);
	// AI_StartState(self,zs_orc_followpc,1,"");
	// Npc_SetRefuseTalk(self,20);
};


instance ORC_2943_WARRIOR3_DONTSTEAL(C_Info)
{
	npc = orc_2943_warrior3;
	nr = 1;
	condition = orc_2943_warrior3_dontsteal_condition;
	information = orc_2943_warrior3_dontsteal_info;
	important = 1;
	permanent = 0;
};


func int orc_2943_warrior3_dontsteal_condition()
{
	if(Npc_GetDistToWP(hero,"OW_ORC_SHAMAN_PATH1") < 500)
	{
		return 1;
	};
};

func void orc_2943_warrior3_dontsteal_info()
{
	// AI_RemoveWeapon(other);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"DIA_ORC3_DONTSTEAL_20_00");	//Ne brat' chto-to. My sledit'.
	AI_Output(other, self,"STT_301_IAN_Exit_Info_15_01"); //Rozejrzê siê trochê po okolicy.
	AI_StopProcessInfos(self);
	// AI_StartState(self,zs_orc_followpc,1,"");
	// Npc_SetRefuseTalk(self,20);
};