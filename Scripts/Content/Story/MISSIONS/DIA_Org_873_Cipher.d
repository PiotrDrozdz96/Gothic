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
	description = "Co s�ycha�?";
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
	AI_Output (other, self,"DIA_Cipher_Hello_15_00"); //Co s�ycha�?
	AI_Output (self, other,"DIA_Cipher_Hello_12_01"); //Nasypali�my troch� piasku w machin� Gomeza.
	AI_Output (self, other,"DIA_Cipher_Hello_12_02"); //Trzech zabitych stra�nik�w i mn�stwo towaru na sprzeda�. Trzeba to opi�!
	AI_Output (other, self,"DIA_Cipher_Hello_15_03"); //Jeste� jednym z ludzi, kt�rzy bez przerwy napadaj� Stary Ob�z?
	AI_Output (self, other,"DIA_Cipher_Hello_12_04"); //Nie. Napadamy go tylko wtedy, kiedy si� to op�aca.
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
	description = "Fisk ze Starego Obozu szuka nowego partnera do interes�w.";
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
	AI_Output (other, self,"DIA_Cipher_Fisk_15_00"); //Fisk ze Starego Obozu szuka nowego partnera do interes�w.
	AI_Output (self, other,"DIA_Cipher_Fisk_12_01"); //Nie jestem zainteresowany.
	AI_Output (self, other,"DIA_Cipher_Fisk_12_02"); //Ale powiniene� porozmawia� z Sharkym. Mo�e on na to p�jdzie.
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
	AI_Output (self, other,"DIA_Cipher_FromBalor_12_01"); //Nie, nie! Pytanie brzmi: co TY masz do zaoferowania! Interesuj� mnie wy��cznie powa�ne dostawy.
	if (Balor_TellsNCDealer == TRUE)
	{
		AI_Output (other, self,"DIA_Cipher_FromBalor_15_02"); //Balor powiedzia� mi, �e interesuje ci� bagienne ziele.
		AI_Output (self, other,"DIA_Cipher_FromBalor_12_03"); //Mhm. Masz co� na sprzeda�?
		Cipher_Trade = TRUE;
	}
	else
	{
		AI_Output (other, self,"DIA_Cipher_FromBalor_15_04"); //Niestety nie.
		AI_Output (self, other,"DIA_Cipher_FromBalor_12_05"); //Wi�c wr�� do mnie, jak b�dziesz mia� co� co mnie zainteresuje.
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
		Info_AddChoice(Org_873_Cipher_TRADE,"Mam dla ciebie Mrok P�nocy.", Org_873_Cipher_TRADE_Joint2);
	};
	if(Npc_HasItems(hero, ItMiJoint_3))
	{
		Info_AddChoice(Org_873_Cipher_TRADE,"Mam dla ciebie Zew Mocy.", Org_873_Cipher_TRADE_Joint3);
	};
};

func void Org_873_Cipher_TRADE_BACK ()
{
	AI_Output (self, other,"DIA_Cipher_FromBalor_12_03"); //Mhm. Masz co� na sprzeda�?
	AI_Output (other, self,"DIA_Cipher_FromBalor_15_04"); //Niestety nie.
	AI_Output (self, other,"DIA_Cipher_FromBalor_12_05"); //Wi�c wr�� do mnie, jak b�dziesz mia� co� co mnie zainteresuje.
	Info_ClearChoices (Org_873_Cipher_TRADE);
};

func void Org_873_Cipher_TRADE_Joint0 ()
{
	AI_Output (other, self,"DIA_CIPHER_JOINTS_SUCCESS_15_01"); //Masz, we� to bagienne ziele.
	if(Npc_HasItems(hero, ItMi_Plants_Swampherb_01) >= 50)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! M�j cz�owiek!
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
	AI_Output (other, self,"DIA_CIPHER_JOINTS_SUCCESS_15_02"); //Dobrze, spr�buj tego zielonego nowicjusza.
	if(Npc_HasItems(hero, ItMiJoint_1) >= 10)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! M�j cz�owiek!
		CreateInvItems(self, ItMiNugget, Value_Joint1*Npc_HasItems(hero, ItMiJoint_1));
		B_GiveInvItems(self, other, ItMiNugget, Value_Joint1*Npc_HasItems(hero, ItMiJoint_1));
		Npc_RemoveInvItems(hero, ItMiJoint_1, Npc_HasItems(hero, ItMiJoint_1));
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_03"); //To wszystko? Tyle wypal� na jedno posiedzenie!
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_04"); //To musi by� przynajmniej 10 skr�t�w.
	};
};

func void Org_873_Cipher_TRADE_Joint2 ()
{
	AI_Output (other, self, "DIA_Cipher_Joints_Success_15_00"); //Mam dla ciebie kilka �odyg...
	if(Npc_HasItems(hero, ItMiJoint_2) >= 10)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! M�j cz�owiek!
		CreateInvItems(self, ItMiNugget, Value_Joint2*Npc_HasItems(hero, ItMiJoint_2));
		B_GiveInvItems(self, other, ItMiNugget, Value_Joint2*Npc_HasItems(hero, ItMiJoint_2));
		Npc_RemoveInvItems(hero, ItMiJoint_2, Npc_HasItems(hero, ItMiJoint_2));
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_03"); //To wszystko? Tyle wypal� na jedno posiedzenie!
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_04"); //To musi by� przynajmniej 10 skr�t�w.
	};
};

func void Org_873_Cipher_TRADE_Joint3 ()
{
	AI_Output (other, self, "DIA_Cipher_Joints_Success_15_00"); //Mam dla ciebie kilka �odyg...
	if(Npc_HasItems(hero, ItMiJoint_3) >= 10)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ach! M�j cz�owiek!
		CreateInvItems(self, ItMiNugget, Value_Joint3*Npc_HasItems(hero, ItMiJoint_3));
		B_GiveInvItems(self, other, ItMiNugget, Value_Joint3*Npc_HasItems(hero, ItMiJoint_3));
		Npc_RemoveInvItems(hero, ItMiJoint_3, Npc_HasItems(hero, ItMiJoint_3));
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_03"); //To wszystko? Tyle wypal� na jedno posiedzenie!
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_04"); //To musi by� przynajmniej 10 skr�t�w.
	};
};
