// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_Bukano_EXIT(C_INFO)
{
	npc			= NOV_1372_Bukano;
	nr			= 999;
	condition	= DIA_Bukano_EXIT_Condition;
	information	= DIA_Bukano_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Bukano_EXIT_Condition()
{
	return 1;
};

FUNC VOID DIA_Bukano_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 							Hallo
// ************************************************************

INSTANCE DIA_Bukano_Hello(C_INFO)
{
	npc			= NOV_1372_Bukano;
	nr			= 1;
	condition	= DIA_Bukano_Hello_Condition;
	information	= DIA_Bukano_Hello_Info;
	permanent	= 0;
	description = "Czym siê tutaj zajmujesz?";
};                       

FUNC INT DIA_Bukano_Hello_Condition()
{
	return 1;
};

FUNC VOID DIA_Bukano_Hello_Info()
{	
	AI_Output (other,self,"DIA_Scatty_WhatDoYouDo_15_00"); //Czym siê tutaj zajmujesz?
	AI_Output (self, other,"DIA_Bukano_Hello_01_01"); //Tutej?  Bagno. Myyye tego ... mia³ kurde. co?
	AI_Output (other, self,"DIA_Balor_Perm_15_00"); //Nie przeszkadzaj sobie w pracy!
	AI_Output (self, other,"DIA_Bukano_Hello_01_02"); //Tak jest, tak jest Oo tak jest yye
	AI_TurnAway (hero,self);
	AI_Output (other, self,"Nov_1371_BaalNetbek_CRAZY_Info_15_08"); //Ten cz³owiek raczej mi nie pomo¿e...
	AI_StopProcessInfos	(self);
};
