
instance DIA_Ricelord_EXIT(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 999;
	condition = DIA_Ricelord_EXIT_Condition;
	information = DIA_Ricelord_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Ricelord_EXIT_Condition()
{
	return 1;
};

func void DIA_Ricelord_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Ricelord_Hello(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_Hello_Condition;
	information = DIA_Ricelord_Hello_Info;
	permanent = 0;
	description = "Troszczysz siê o pola ry¿owe, czy¿ nie?";
};


func int DIA_Ricelord_Hello_Condition()
{
	return 1;
};

func void DIA_Ricelord_Hello_Info()
{
	AI_Output(other,self,"DIA_Ricelord_Hello_15_00");	//Troszczysz siê o pola ry¿owe, czy¿ nie?
	AI_Output(self,other,"DIA_Ricelord_Hello_12_01");	//Czemu pytasz? Szukasz pracy?
};


instance DIA_Ricelord_Arbeit(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_Arbeit_Condition;
	information = DIA_Ricelord_Arbeit_Info;
	permanent = 0;
	description = "Znajdzie siê dla mnie jakieœ zajêcie?";
};


func int DIA_Ricelord_Arbeit_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Ricelord_Hello) && !Npc_KnowsInfo(hero,DIA_Lefty_First) && (LeftyDead == FALSE))
	{
		return 1;
	};
};

func void DIA_Ricelord_Arbeit_Info()
{
	AI_Output(other,self,"DIA_Ricelord_Arbeit_15_00");	//A masz dla mnie jakieœ zajêcie?
	AI_Output(self,other,"DIA_Ricelord_Arbeit_12_01");	//Porozmawiaj z Lewusem. Krêci siê zwykle na prawo od szopy.
};


instance DIA_Ricelord_TRADE(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 800;
	condition = DIA_Ricelord_TRADE_Condition;
	information = DIA_Ricelord_TRADE_Info;
	permanent = 1;
	description = "Mo¿e siê dogadamy...";
	trade = 1;
};


func int DIA_Ricelord_TRADE_Condition()
{
	return 0;
};

func void DIA_Ricelord_TRADE_Info()
{
	AI_Output(other,self,"DIA_Ricelord_TRADE_15_00");	//Mo¿e siê dogadamy...
	AI_Output(self,other,"DIA_Ricelord_TRADE_12_01");	//A co mo¿esz mi zaoferowaæ?
};


instance DIA_Ricelord_LeftySentMe(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_LeftySentMe_Condition;
	information = DIA_Ricelord_LeftySentMe_Info;
	permanent = 1;
	description = "Przysy³a mnie Lewus.";
};

var int Ricelord_WaterTaken;

func int DIA_Ricelord_LeftySentMe_Condition()
{
	if (LeftyWasBeaten == TRUE)
	{
		return 0;
	};
	
	if(Npc_KnowsInfo(hero,DIA_Ricelord_Hello) && (Lefty_Mission == LOG_RUNNING) && (Ricelord_AskedForWater == FALSE) && (LeftyDead == FALSE) && (Ricelord_WaterTaken == FALSE))
	{
		return 1;
	};
};

func void DIA_Ricelord_LeftySentMe_Info()
{
	AI_Output(other,self,"DIA_Ricelord_LeftySentMe_15_00");	//Przysy³a mnie Lewus.
	AI_Output(self,other,"DIA_Ricelord_LeftySentMe_12_01");	//Tak? I co powiedzia³?
	Ricelord_AskedForWater = TRUE;
};


instance DIA_Ricelord_GetWater(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_GetWater_Condition;
	information = DIA_Ricelord_GetWater_Info;
	permanent = 1;
	description = "Mam zanieœæ wodê zbieraczom ry¿u!";
};


func int DIA_Ricelord_GetWater_Condition()
{
	if((Ricelord_AskedForWater == TRUE) && (Lefty_Mission == LOG_RUNNING))
	{
		return 1;
	};
};

func void DIA_Ricelord_GetWater_Info()
{
	AI_Output(other,self,"DIA_Ricelord_GetWater_15_00");	//Mam zanieœæ wodê zbieraczom ry¿u!
	if(Lefty_WorkDay == Wld_GetDay())
	{
		AI_Output(self,other,"DIA_Ricelord_GetWater_12_01");	//Dobra. Masz tu tuzin butelek.
		AI_Output(self,other,"DIA_Ricelord_GetWater_12_02");	//To jakieœ dwa razy wiêcej ni¿ liczba zbieraczy, wiêc postaraj siê rozdzieliæ je sprawiedliwie.
		CreateInvItems(self,ItFo_Potion_Water_01,12);
		B_GiveInvItems(self,other,ItFo_Potion_Water_01,12);
		Ricelord_AskedForWater = FALSE;
		Ricelord_WaterTaken = TRUE;
		B_LogEntry(CH1_CarryWater,"Ry¿owy Ksi¹¿e da³ mi tuzin butelek z wod¹.");
		AI_StopProcessInfos(self);
	}
	else if(Lefty_WorkDay == (Wld_GetDay() - 1))
	{
		AI_Output(self,other,"DIA_Ricelord_GetWater_TooLate_12_00");	//To by³o wczoraj, ch³opcze. Lepiej zajrzyj znowu do Lewusa. Chyba ma ci coœ do powiedzenia.
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"DIA_Ricelord_GetWater_TooLate_12_01");	//To by³o parê dni temu, ch³opcze. Lepiej zajrzyj znowu do Lewusa. Chyba ma ci coœ do powiedzenia.
		AI_StopProcessInfos(self);
	};
};

