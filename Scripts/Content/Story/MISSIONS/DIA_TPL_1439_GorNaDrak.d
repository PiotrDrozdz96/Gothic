// **************************************************
//						 EXIT 
// **************************************************

instance  DIA_GorNaDrak_EXIT (C_INFO)
{
	npc			= Tpl_1439_GorNaDrak;
	nr			= 999;
	condition	= DIA_GorNaDrak_EXIT_Condition;
	information	= DIA_GorNaDrak_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC int  DIA_GorNaDrak_EXIT_Condition()
{
	return 1;
};

FUNC VOID  DIA_GorNaDrak_EXIT_Info()
{
	AI_StopProcessInfos	( self );
};

// **************************************************
//					Erste Begrüssung
// **************************************************

instance  DIA_GorNaDrak_Greet (C_INFO)
{
	npc			= Tpl_1439_GorNaDrak;
	nr			= 1;
	condition	= DIA_GorNaDrak_Greet_Condition;
	information	= DIA_GorNaDrak_Greet_Info;
	permanent	= 0;
	description  = "Czeœæ! Dok¹d siê wybieracie?";
};                       

FUNC int  DIA_GorNaDrak_Greet_Condition()
{
	return 1;
};

FUNC VOID  DIA_GorNaDrak_Greet_Info()
{
	AI_Output (other, self,"DIA_GorNaDrak_Greet_15_00"); //Czeœæ! Dok¹d siê wybieracie?
	AI_Output (self, other,"DIA_GorNaDrak_Greet_09_01"); //Zabieramy wydzielinê pe³zaczy zdobyt¹ przez naszych braci w Starej Kopalni do Cor Kaloma.
	AI_Output (self, other,"DIA_GorNaDrak_Greet_09_02"); //Codziennie udajemy siê do kopalni po now¹ porcjê wydzieliny.
};

// **************************************************
//					Was ist Sekret
// **************************************************

instance  DIA_GorNaDrak_WasSekret (C_INFO)
{
	npc			= Tpl_1439_GorNaDrak;
	nr			= 1;
	condition	= DIA_GorNaDrak_WasSekret_Condition;
	information	= DIA_GorNaDrak_WasSekret_Info;
	permanent	= 0;
	description  = "Co to za wydzielina?";
};                       

FUNC int  DIA_GorNaDrak_WasSekret_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_GorNaDrak_Greet))
	{
		return 1;
	};
};

FUNC VOID  DIA_GorNaDrak_WasSekret_Info()
{
	AI_Output (other, self,"DIA_GorNaDrak_WasSekret_15_00"); //Co to za wydzielina?
	AI_Output (self, other,"DIA_GorNaDrak_WasSekret_09_01"); //Pozyskujemy j¹ z wnêtrznoœci pe³zaczy. Przy odrobinie ostro¿noœci mo¿na wyci¹æ ich gruczo³y jadowe.
};

// **************************************************
//			 	LERNE: Zangen Nehmen
// **************************************************

instance  DIA_GorNaDrak_TeachMandibles (C_INFO)
{
	npc			= Tpl_1439_GorNaDrak;
	nr			= 1;
	condition	= DIA_GorNaDrak_TeachMandibles_Condition;
	information	= DIA_GorNaDrak_TeachMandibles_Info;
	permanent	= 0;
	description  = "Mo¿esz mnie nauczyæ pozyskiwaæ wydzielinê pe³zaczy?";
};                       

FUNC int  DIA_GorNaDrak_TeachMandibles_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_GorNaDrak_WasSekret) && (Knows_GetMCMandibles == FALSE) )
	{
		return 1;
	};
};

FUNC VOID  DIA_GorNaDrak_TeachMandibles_Info()
{
	AI_Output (other, self,"DIA_GorNaDrak_TeachMandibles_15_00"); //Mo¿esz mnie nauczyæ pozyskiwaæ wydzielinê pe³zaczy?
	AI_Output (self, other,"DIA_GorNaDrak_TeachMandibles_09_01"); //Oczywiœcie! Natychmiast po zabiciu potwora wytnij jego gruczo³y jadowe. Tylko pod ¿adnym pozorem nie wolno ci ich uszkodziæ!
	
	PrintScreen	("Nowa umiejêtnoœæ: Wycinanie wnêtrznoœci pe³zaczy", -1,-1,"FONT_OLD_20_WHITE.TGA",3);
	Knows_GetMCMandibles = TRUE;
	Log_CreateTopic (GE_AnimalTrophies,LOG_NOTE);
	B_LogEntry (GE_AnimalTrophies,"Jak usuwaæ wnêtrznoœci pe³zaczy.");
};

// **************************************************
//			 	Wofür ist Sekret da?
// **************************************************

instance  DIA_GorNaDrak_WhatFor (C_INFO)
{
	npc			= Tpl_1439_GorNaDrak;
	nr			= 1;
	condition	= DIA_GorNaDrak_WhatFor_Condition;
	information	= DIA_GorNaDrak_WhatFor_Info;
	permanent	= 0;
	description  = "Po co Cor Kalomowi ta wydzielina?";
};                       

FUNC int  DIA_GorNaDrak_WhatFor_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_GorNaDrak_WasSekret))
	{
		return 1;
	};
};

FUNC VOID  DIA_GorNaDrak_WhatFor_Info()
{
	AI_Output (other, self,"DIA_GorNaDrak_WhatFor_15_00"); //Po co Cor Kalomowi ta wydzielina?
	AI_Output (self, other,"DIA_GorNaDrak_WhatFor_09_01"); //Z tego co wiem, przyrz¹dza z nich napój, który zwiêksza magiczne zdolnoœci Nowicjuszy.
	AI_Output (self, other,"DIA_GorNaDrak_WhatFor_09_02"); //Przygotowujemy siê teraz do wielkiego przyzwania, wiêc potrzebujemy jak najwiêcej tej wydzieliny.
	AI_Output (self, other,"DIA_GorNaDrak_WhatFor_09_03"); //Przy pomocy tego napoju Nowicjusze przywo³aj¹ Œni¹cego.
};

// **************************************************
//			 	Kap 1 Permanent
// **************************************************

instance  DIA_GorNaDrak_Permanent (C_INFO)
{
	npc			= Tpl_1439_GorNaDrak;
	nr			= 1;
	condition	= DIA_GorNaDrak_Permanent_Condition;
	information	= DIA_GorNaDrak_Permanent_Info;
	permanent	= 1;
	description  = "Czy macie ju¿ wystarczaj¹co du¿o napoju, by przywo³aæ Œni¹cego?";
};                       

FUNC int  DIA_GorNaDrak_Permanent_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_GorNaDrak_WhatFor) && (Kapitel < 3) )
	{
		return 1;
	};
};

FUNC VOID  DIA_GorNaDrak_Permanent_Info()
{
	AI_Output (other, self,"DIA_GorNaDrak_Permanent_15_00"); //Czy macie ju¿ wystarczaj¹co du¿o napoju, by przywo³aæ Œni¹cego?
	AI_Output (self, other,"DIA_GorNaDrak_Permanent_09_01"); //Niestety! Nasi myœliwi poluj¹ na pe³zacze dniem i noc¹, ale wci¹¿ nie mamy doœæ wydzieliny.
};

// **************************************
//				IN SLEEPER TEMPLE
// **************************************
instance  DIA_GorNaDrakOT_START (C_INFO)
{
	npc			= TPL_1449_Templer;
	condition	= DIA_GorNaDrakOT_START_Condition;
	information	= DIA_GorNaDrakOT_START_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC int  DIA_GorNaDrakOT_START_Condition()
{
	return 1;
};

FUNC VOID  DIA_GorNaDrakOT_START_Info()
{	
};

instance  DIA_GorNaDrakOT_Hallo (C_INFO)
{
	npc			= TPL_1449_Templer;
	nr			= 1;
	condition	= DIA_GorNaDrakOT_Hallo_Condition;
	information	= DIA_GorNaDrakOT_Hallo_Info;
	permanent	= 1;
	description = "Muszê siê dostaæ do tej podziemnej œwi¹tyni.";
};                       

FUNC int  DIA_GorNaDrakOT_Hallo_Condition()
{
	return 1;
};

FUNC VOID  DIA_GorNaDrakOT_Hallo_Info()
{
	AI_Output (other, self,"DIA_GorNaDrakOT_Hallo_15_01"); //Muszê siê dostaæ do tej podziemnej œwi¹tyni.
	AI_Output (self, other,"DIA_GorNaDrakOT_Hallo_09_01"); //I myœlisz, ¿e wpuszczê ciê tak po prostu do œrodka.
	AI_Output (other, self,"Info_Thorus_LetterForMages_15_02"); //Tak.
	AI_Output (self, other,"DIA_GorNaDrakOT_Hallo_09_02"); //W porz¹dku.
	AI_StopProcessInfos	( self );
};
