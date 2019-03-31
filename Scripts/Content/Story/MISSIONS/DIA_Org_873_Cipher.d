/*------------------------------------------------------------------------
//							EXIT									//
------------------------------------------------------------------------*/

instance  Org_873_Cipher_Exit (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  999;
	condition	=  Org_873_Cipher_Exit_Condition;
	information	=  Org_873_Cipher_Exit_Info;
	important	=  0;	
	permanent	=  1;
	description =  DIALOG_ENDE;
};                       

FUNC int  Org_873_Cipher_Exit_Condition()
{
	return TRUE;
};

FUNC VOID  Org_873_Cipher_Exit_Info()
{
	AI_StopProcessInfos	( self );
};

// ******************************
// 			Hallo
// ******************************

instance  Org_873_Cipher_Hello (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  1;
	condition	=  Org_873_Cipher_Hello_Condition;
	information	=  Org_873_Cipher_Hello_Info;
	permanent	=  0;
	description = "Co s³ychaæ?";
};                       

FUNC int  Org_873_Cipher_Hello_Condition()
{
	if (Balor_TellsNCDealer == TRUE)
	{
		return 1;
	};
};

FUNC VOID  Org_873_Cipher_Hello_Info()
{
	AI_Output (other, self,"DIA_Cipher_Hello_15_00"); //Co s³ychaæ?
	AI_Output (self, other,"DIA_Cipher_Hello_12_01"); //Nasypaliœmy trochê piasku w machinê Gomeza.
	AI_Output (self, other,"DIA_Cipher_Hello_12_02"); //Trzech zabitych stra¿ników i mnóstwo towaru na sprzeda¿. Trzeba to opiæ!
	AI_Output (other, self,"DIA_Cipher_Hello_15_03"); //Jesteœ jednym z ludzi, którzy bez przerwy napadaj¹ Stary Obóz?
	AI_Output (self, other,"DIA_Cipher_Hello_12_04"); //Nie. Napadamy go tylko wtedy, kiedy siê to op³aca.
};

// ******************************
// 			Fisk
// ******************************

instance  Org_873_Cipher_Fisk (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  1;
	condition	=  Org_873_Cipher_Fisk_Condition;
	information	=  Org_873_Cipher_Fisk_Info;
	permanent	=  1;
	description = "Fisk ze Starego Obozu szuka nowego partnera do interesów.";
};                       

FUNC int  Org_873_Cipher_Fisk_Condition()
{
	if (Fisk_GetNewHehler==LOG_RUNNING)
	{
		return 1;
	};
};

FUNC VOID  Org_873_Cipher_Fisk_Info()
{
	AI_Output (other, self,"DIA_Cipher_Fisk_15_00"); //Fisk ze Starego Obozu szuka nowego partnera do interesów.
	AI_Output (self, other,"DIA_Cipher_Fisk_12_01"); //Nie jestem zainteresowany.
	AI_Output (self, other,"DIA_Cipher_Fisk_12_02"); //Ale powinieneœ porozmawiaæ z Sharkym. Mo¿e on na to pójdzie.
	B_LogEntry(CH1_FiskNewDealer,"Cipher, szkodnik z Nowego Obozu poradzi³ mi bym skontaktowa³ siê z kupcem Sharky`m. Byæ mo¿e on by³by zainteresowany wspó³prac¹ z Fiskiem.");
};

// ******************************
// 			Balor sent Me
// ******************************
	var int Cipher_Trade;
// ******************************

instance  Org_873_Cipher_FromBalor (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  1;
	condition	=  Org_873_Cipher_FromBalor_Condition;
	information	=  Org_873_Cipher_FromBalor_Info;
	permanent	=  1;
	description = "Co masz do zaoferowania?";
};                       

FUNC int  Org_873_Cipher_FromBalor_Condition()
{
	if ( Npc_KnowsInfo(hero,Org_873_Cipher_Hello))
	{
		return 1;
	};
};

FUNC VOID  Org_873_Cipher_FromBalor_Info()
{
	AI_Output (other, self,"DIA_Cipher_FromBalor_15_00"); //Co masz do zaoferowania?
	AI_Output (self, other,"DIA_Cipher_FromBalor_12_01"); //Nie, nie! Pytanie brzmi: co TY masz do zaoferowania! Interesuj¹ mnie wy³¹cznie powa¿ne dostawy.
	if (Balor_TellsNCDealer == TRUE)
	{
		AI_Output (other, self,"DIA_Cipher_FromBalor_15_02"); //Balor powiedzia³ mi, ¿e interesuje ciê bagienne ziele.
		AI_Output (self, other,"DIA_Cipher_FromBalor_12_03"); //Mhm. Masz coœ na sprzeda¿?
		Cipher_Trade = TRUE;
	}
	else
	{
		AI_Output (other, self,"DIA_Cipher_FromBalor_15_04"); //Niestety nie.
		AI_Output (self, other,"DIA_Cipher_FromBalor_12_05"); //Wiêc wróæ do mnie, jak bêdziesz mia³ coœ co mnie zainteresuje.
	};
};

// ******************************
// 			TRADE
// ******************************

instance  Org_873_Cipher_TRADE (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  1;
	condition	=  Org_873_Cipher_TRADE_Condition;
	information	=  Org_873_Cipher_TRADE_Info;
	permanent	=  1;
	description = "Dobijmy targu.";
};                       

FUNC int  Org_873_Cipher_TRADE_Condition()
{
	if ( Cipher_Trade == TRUE)
	{
		return 1;
	};
};

FUNC VOID  Org_873_Cipher_TRADE_Info()
{
	AI_Output (other, self,"DIA_Cipher_TRADE_15_00"); //Dobijmy targu.
	AI_Output (self, other,"DIA_Cipher_TRADE_12_01"); //Czego chcesz?
	Info_ClearChoices(Org_873_Cipher_TRADE);
	Info_AddChoice(Org_873_Cipher_TRADE, DIALOG_BACK, Org_873_Cipher_TRADE_BACK);
	if(Npc_HasItems(hero, ItMi_Plants_Swampherb_01))
	{
		Info_AddChoice(Org_873_Cipher_TRADE,"Mam dla ciebie bagienne ziele.", Org_873_Cipher_TRADE_Joint0);
	};
	if(Npc_HasItems(hero, ItMiJoint_1))
	{
		Info_AddChoice(Org_873_Cipher_TRADE,"Mam dla ciebie Zielonego Nowicjusza.", Org_873_Cipher_TRADE_Joint1);
	};
	if(Npc_HasItems(hero, ItMiJoint_2))
	{
		Info_AddChoice(Org_873_Cipher_TRADE,"Mam dla ciebie Mrok Pó³nocy.", Org_873_Cipher_TRADE_Joint2);
	};
	if(Npc_HasItems(hero, ItMiJoint_3))
	{
		Info_AddChoice(Org_873_Cipher_TRADE,"Mam dla ciebie Zew Mocy.", Org_873_Cipher_TRADE_Joint3);
	};
};

func void Org_873_Cipher_TRADE_BACK ()
{
	AI_Output (self, other,"DIA_Cipher_FromBalor_12_03"); //Mhm. Masz coœ na sprzeda¿?
	AI_Output (other, self,"DIA_Cipher_FromBalor_15_04"); //Niestety nie.
	AI_Output (self, other,"DIA_Cipher_FromBalor_12_05"); //Wiêc wróæ do mnie, jak bêdziesz mia³ coœ co mnie zainteresuje.
	Info_ClearChoices (Org_873_Cipher_TRADE);
};

func void Org_873_Cipher_TRADE_Joint0 ()
{
	AI_Output (other, self,"DIA_CIPHER_JOINTS_SUCCESS_15_01"); //Masz, weŸ to bagienne ziele.
	if(Npc_HasItems(hero, ItMi_Plants_Swampherb_01) >= 50)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! Mój cz³owiek!
		Npc_RemoveInvItems(hero,ItMi_Plants_Swampherb_01,50);
		CreateInvItems(self, ItMiNugget, Value_Sumpfkraut*50);
		B_GiveInvItems(self, other, ItMiNugget, Value_Sumpfkraut*50);
		CipherJoints = (CipherJoints + 1);
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_02"); //To wszystko?
	};
};

func void Org_873_Cipher_TRADE_Joint1 ()
{
	AI_Output (other, self,"DIA_CIPHER_JOINTS_SUCCESS_15_02"); //Dobrze, spróbuj tego zielonego nowicjusza.
	if(Npc_HasItems(hero, ItMiJoint_1) >= 10)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! Mój cz³owiek!
		CreateInvItems(self, ItMiNugget, Value_Joint1*Npc_HasItems(hero, ItMiJoint_1));
		B_GiveInvItems(self, other, ItMiNugget, Value_Joint1*Npc_HasItems(hero, ItMiJoint_1));
		Npc_RemoveInvItems(hero, ItMiJoint_1, Npc_HasItems(hero, ItMiJoint_1));
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_03"); //To wszystko? Tyle wypalê na jedno posiedzenie!
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_04"); //To musi byæ przynajmniej 10 skrêtów.
	};
};

func void Org_873_Cipher_TRADE_Joint2 ()
{
	AI_Output (other, self, "DIA_Cipher_Joints_Success_15_00"); //Mam dla ciebie kilka ³odyg...
	if(Npc_HasItems(hero, ItMiJoint_2) >= 10)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! Mój cz³owiek!
		CreateInvItems(self, ItMiNugget, Value_Joint2*Npc_HasItems(hero, ItMiJoint_2));
		B_GiveInvItems(self, other, ItMiNugget, Value_Joint2*Npc_HasItems(hero, ItMiJoint_2));
		Npc_RemoveInvItems(hero, ItMiJoint_2, Npc_HasItems(hero, ItMiJoint_2));
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_03"); //To wszystko? Tyle wypalê na jedno posiedzenie!
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_04"); //To musi byæ przynajmniej 10 skrêtów.
	};
};

func void Org_873_Cipher_TRADE_Joint3 ()
{
	AI_Output (other, self, "DIA_Cipher_Joints_Success_15_00"); //Mam dla ciebie kilka ³odyg...
	if(Npc_HasItems(hero, ItMiJoint_3) >= 10)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! Mój cz³owiek!
		CreateInvItems(self, ItMiNugget, Value_Joint3*Npc_HasItems(hero, ItMiJoint_3));
		B_GiveInvItems(self, other, ItMiNugget, Value_Joint3*Npc_HasItems(hero, ItMiJoint_3));
		Npc_RemoveInvItems(hero, ItMiJoint_3, Npc_HasItems(hero, ItMiJoint_3));
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_03"); //To wszystko? Tyle wypalê na jedno posiedzenie!
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_04"); //To musi byæ przynajmniej 10 skrêtów.
	};
};

// ******************************
// 			BUSSINES
// ******************************

instance  Org_873_Cipher_Book (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  1;
	condition	=  Org_873_Cipher_Book_Condition;
	information	=  Org_873_Cipher_Book_Info;
	permanent	=  0;
	description = "Znalaz³em pewien tajemniczy almanach.";
};                       

FUNC int  Org_873_Cipher_Book_Condition()
{
	if ( Npc_HasItems(self, ORG_ARMOR_H) )
	&& ( Npc_HasItems(other, Joint_Book) )
	{
		return 1;
	};
};

FUNC VOID  Org_873_Cipher_Book_Info()
{
	AI_Output (other, self,"DIA_Cipher_Book_15_00"); //Znalaz³em pewien tajemniczy almanach.
	B_UseFakeScroll();
	AI_Output (self, other,"DIA_Cipher_Book_07_01"); //A niech mnie! Sk¹d to masz?
	AI_Output (other, self,"DIA_Cipher_Book_15_02"); //To d³uga historia...
	AI_Output (self, other, "DIA_Cipher_Book_07_03"); //Zreszt¹ niewa¿ne, porz¹dny z ciebie goœæ.
	AI_Output (self, other, "DIA_Cipher_Book_07_04"); //ChodŸmy wiêc!

	B_GiveInvItems(other,self,Joint_Book,1);

	Npc_SetPermAttitude(self,ATT_FRIENDLY);
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Npc_ExchangeRoutine(self,"GUIDE");

	if	(Kalom_DrugMonopol != LOG_SUCCESS)
	{
		B_KillNpc	(ORG_862_Jacko);
		B_KillNpc	(ORG_861_Killian);
		B_KillNpc	(ORG_860_Renyu);
	};

	Log_CreateTopic		(CH3_CipherBussines,	LOG_MISSION);
	Log_SetTopicStatus	(CH3_CipherBussines,	LOG_RUNNING);
	B_LogEntry			(CH3_CipherBussines,"Cipher niezwykle siê ucieszy³ gdy przynios³em mu ksi¹¿kê na temat bagiennego ziela któr¹ znalaz³em w kufrze Cor Kaloma. Tak bardzo ¿e od razu razem gdzieœ pognaliœmy.");
	
	AI_StopProcessInfos(self);
};

instance  Org_873_Cipher_Fight (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  1;
	condition	=  Org_873_Cipher_Fight_Condition;
	information	=  Org_873_Cipher_Fight_Info;
	permanent	=  0;
	important	=  1;
};                       

FUNC int  Org_873_Cipher_Fight_Condition()
{
	if(Npc_KnowsInfo(hero,Org_873_Cipher_Book) && Hlp_StrCmp(Npc_GetNearestWP(self),"LOCATION_23_CAVE_1_OUT"))
	{
		return 1;
	};
};

FUNC VOID  Org_873_Cipher_Fight_Info()
{
	AI_Output (self, other, "DIA_Cipher_Fight_07_00"); //SKASUJÊ GNOJKA!

	Log_SetTopicStatus	(CH3_CipherBussines,	LOG_RUNNING);
	B_LogEntry			(CH3_CipherBussines,"Okaza³o siê ¿e Cipher prowadzi³ mnie do wytwórni ziela. Niestety na miejscu czeka³ na nas uzbrojony stra¿nik œwi¹tynny.");
	Npc_ExchangeRoutine(self,"FIGHT");
	AI_DrawWeapon		(self);
	AI_StopProcessInfos(self);
	Wld_InsertNpc(TPL_1465_Salm, "LOCATION_23_CAVE_1_IN");

	
};

instance  Org_873_Cipher_AfterFight (C_INFO)
{
	npc			=  Org_873_Cipher;
	nr			=  1;
	condition	=  Org_873_Cipher_AfterFight_Condition;
	information	=  Org_873_Cipher_AfterFight_Info;
	permanent	=  0;
	important	=  1;
};                       

FUNC int  Org_873_Cipher_AfterFight_Condition()
{
	if(Npc_KnowsInfo(hero,Org_873_Cipher_Fight) && Hlp_StrCmp(Npc_GetNearestWP(self),"LOCATION_23_CAVE_1_IN"))
	{
		return 1;
	};
};

FUNC VOID  Org_873_Cipher_AfterFight_Info()
{
	AI_Output			(self, other, "DIA_Cipher_AfterFight_07_00"); //Cholera, nie ¿yje?
	AI_Output			(other, self, "DIA_Cipher_AfterFight_15_01"); //Uspokój siê. To ju¿ koniec!
	AI_Output			(self, other, "DIA_Cipher_AfterFight_07_02"); //O rany, ale w dechê koleœ!
	AI_Output			(other, self, "DIA_Cipher_AfterFight_15_03"); //Co teraz zrobisz?
	AI_Output			(self, other, "DIA_Cipher_AfterFight_07_04"); //Za³o¿ê siê, ¿e mo¿na na tym zarobiæ. Zastanów siê.
	AI_Output 			(self, other, "DIA_Cipher_AfterFight_07_05"); //Masz, weŸ to jako nagrodê. Dobrej zabawy!

	Log_SetTopicStatus	(CH3_CipherBussines,	LOG_SUCCESS);
	B_LogEntry			(CH3_CipherBussines,"Pokonaliœmy nieprzyjaciela, a Cipher mo¿e siê zaj¹æ produkcj¹ najlepszego bagiennego ziela.");
	
	CreateInvItems(self, ItMiNugget, 1000);
	B_GiveInvItems(self, other, ItMiNugget, 1000);
	B_GiveXP(XP_CipherBussines);
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"BUSSINES");

};
