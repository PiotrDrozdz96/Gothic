// **************************************
//					EXIT 
// **************************************

instance DIA_DHT_Exit (C_INFO)
{
	npc			= EBR_103_Drak;
	nr			= 999;
	condition	= DIA_DHT_Exit_Condition;
	information	= DIA_DHT_Exit_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC int DIA_DHT_Exit_Condition()
{
	return 1;
};

FUNC VOID DIA_DHT_Exit_Info()
{
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 					HAllo
// ************************************************************

instance DIA_DHT_Hallo (C_INFO)
{
	npc			= EBR_103_Drak;
	nr			= 4;
	condition	= DIA_DHT_Hallo_Condition;
	information	= DIA_DHT_Hallo_Info;
	permanent	= 0;
	description = "Czym siê tutaj zajmujesz?";
};                       

FUNC int DIA_DHT_Hallo_Condition()
{
    if(Kapitel < 4)
    {
        return 1;
    };
};

FUNC VOID DIA_DHT_Hallo_Info()
{
    AI_Output (other, self,"DIA_ARTO_What_15_00"); //Czym siê tutaj zajmujesz?
    AI_Output (self, other,"SVM_12_WhatAreYouDoing"); //Hej, œlepy jesteœ, czy co?
};

// ************************************************************
// 					Talk1
// ************************************************************

instance DIA_DHT_Talk1 (C_INFO)
{
	npc			= EBR_103_Drak;
	nr			= 1;
	condition	= DIA_DHT_Talk1_Condition;
	information	= DIA_DHT_Talk1_Info;
	permanent	= 0;
	description = "Dra¿nij.";
};                       

FUNC int DIA_DHT_Talk1_Condition()
{
    if(Npc_KnowsInfo(self, DIA_DHT_Hallo))
    &&(Kapitel < 4)
    {
        return 1;
    };
};

FUNC VOID DIA_DHT_Talk1_Info()
{
    AI_Output (other, self,"DIA_DHT_Talk1_15_00"); //Czy mo¿emy w jakiœ sposób ciê zdemaskowaæ?
    AI_Output (self, other,"Info_Bartholo_Krautbote_12_02"); //Hmmmmmmm ...
    AI_Output (other, self,"DIA_DHT_Talk1_15_03"); //Niech zgadnê, pewnie masz paskudn¹ mordê.
    AI_Output (self, other,"SVM_12_NowWait"); //Prosisz siê o porz¹dne lanie!
    GomezGuardTalk = 1;
};

// ************************************************************
// 					Talk-Loop
// ************************************************************

instance DIA_DHT_TalkLoop (C_INFO)
{
	npc			= EBR_103_Drak;
	nr			= 1;
	condition	= DIA_DHT_TalkLoop_Condition;
	information	= DIA_DHT_TalkLoop_Info;
	permanent	= 1;
	description = "Dra¿nij dalej.";
};                       

FUNC int DIA_DHT_TalkLoop_Condition()
{
    if(Npc_KnowsInfo(self, DIA_DHT_Talk1))
    &&(Kapitel < 4)
    {
        return 1;
    };
};

FUNC VOID DIA_DHT_TalkLoop_Info()
{
    if(GomezGuardTalk == 0)
    {
        AI_Output (other, self,"DIA_DHT_Talk1_15_03"); //Niech zgadnê, pewnie masz paskudn¹ mordê.
        GomezGuardTalk = 1;
    }
    else if(GomezGuardTalk == 1) {
        AI_Output (other, self,"Info_Kharim_Charge_Insult_Goats_15_00"); //To mo¿e tak: twój ojciec zabawia³ siê z owcami...
        GomezGuardTalk = 2;
    }
    else if (GomezGuardTalk == 2) {
        AI_Output (other, self,"Info_Kharim_Charge_Insult_GomezAss_15_00"); //Powiedzmy sobie szczerze: przyszed³eœ tutaj tylko dlatego, ¿eby móc poca³owaæ Gomeza w dupê!
        GomezGuardTalk = 0;
    };
    AI_Output (self, other,"SVM_12_YouStillNotHaveEnough"); //Dalej nie masz doœæ?
};

// **************************************************************************
// 				Wartet auf den SC
// **************************************************************************

instance  DIA_DHT_Wait4SC (C_INFO)
{
	npc				= EBR_103_Drak;
	condition		= DIA_DHT_Wait4SC_Condition;
	information		= DIA_DHT_Wait4SC_Info;
	important		= 1;
	permanent		= 0;
};

FUNC int  DIA_DHT_Wait4SC_Condition()
{	
	if	ExploreSunkenTower
	{
		return TRUE;
	};
};
FUNC void  DIA_DHT_Wait4SC_Info()
{
	AI_SetWalkmode		(self, NPC_WALK);
	AI_GotoNpc			(self, other);
	AI_Output			(self, other,"Info_Bartholo_12_01");	//Podejrzewa³em, ¿e prêdzej czy póŸniej ktoœ spróbuje u¿yæ pentagramu.
	AI_Output			(self, other,"Info_Bartholo_12_02");	//Ale w odró¿nieniu od tego zdradzieckiego kowala, Stone'a, CIEBIE ju¿ nie potrzebujemy!
	AI_Output			(other, self,"Info_Bartholo_15_03");	//Gdzie jest Stone?
	AI_Output			(self, other,"Info_Bartholo_12_04");	//Za kratkami! Ale ciebie czeka mi³y, przytulny GRÓB!
	AI_Output			(self, other,"Info_Bartholo_12_06");	//Powinienem by³ ciê zabiæ wczeœniej. Teraz jednak moi przyjaciele naprawi¹ ten b³¹d.
	AI_Output			(self, other,"Info_Bartholo_12_05");	//Braæ go, ch³opcy! Posiekaæ go!

	AI_StopProcessInfos	(self);
	
	self.guild 	= GIL_EBR;
	Npc_SetTrueGuild	(self, GIL_EBR);	
};