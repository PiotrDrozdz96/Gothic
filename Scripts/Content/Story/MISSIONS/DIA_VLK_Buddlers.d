// **************************************************
// 				VLK_502_Marus
// **************************************************

INSTANCE DIA_Marus (C_INFO)
{
	npc				= Vlk_502_Buddler;
	nr				= 1;
	condition		= DIA_Marus_Condition;
	information		= DIA_Marus_Info;
	permanent		= 1;
	description		= "Potrzebuj¹ ciê w kopalni.";
};

FUNC INT DIA_Marus_Condition()
{	
    if (Npc_KnowsInfo (hero, GRD_200_Thorus_Buddler))
    {
        return 1;
    };	
};

FUNC VOID DIA_Marus_Info()
{
	AI_Output (other, self,"DIA_BUDDLERS_15_00"); //Potrzebuj¹ ciê w kopalni.
    AI_Output (self, other,"DIA_BUDDLERS_01_01"); //Teraz rozkruszê ten przeklêty kamieñ. Wiem jak siê do tego zabraæ.
    Player_SentBuddler = (Player_SentBuddler + 1);
    B_LogEntry			(CH2_Buddler,"Marus ponownie zajmie siê kruszeniem kamieni w kopalni.");
    Npc_ExchangeRoutine (self, "wait");
    AI_StopProcessInfos	(self);

};

// **************************************************
// 				VLK_504_Ryan
// **************************************************

INSTANCE DIA_Ryan (C_INFO)
{
	npc				= Vlk_504_Buddler;
	nr				= 1;
	condition		= DIA_Ryan_Condition;
	information		= DIA_Ryan_Info;
	permanent		= 1;
	description		= "Potrzebuj¹ ciê w kopalni.";
};

FUNC INT DIA_Ryan_Condition()
{	
    if (Npc_KnowsInfo (hero, GRD_200_Thorus_Buddler))
    {
        return 1;
    };	
};

FUNC VOID DIA_Ryan_Info()
{
	AI_Output (other, self,"DIA_BUDDLERS_15_00"); //Potrzebuj¹ ciê w kopalni.
    AI_Output (self, other,"DIA_BUDDLERS_01_02"); //W takim razie ruszam w swoj¹ drogê.
    Player_SentBuddler = (Player_SentBuddler + 1);
    B_LogEntry			(CH2_Buddler,"Ryan wyruszy³ do starej kopalni.");
    Npc_ExchangeRoutine (self, "wait");
    AI_StopProcessInfos	(self);

};

// **************************************************
// 				VLK_517_Canthar
// **************************************************

INSTANCE DIA_Canthar (C_INFO)
{
	npc				= Vlk_517_Buddler;
	nr				= 1;
	condition		= DIA_Canthar_Condition;
	information		= DIA_Canthar_Info;
	permanent		= 1;
	description		= "Potrzebuj¹ ciê w kopalni.";
};

FUNC INT DIA_Canthar_Condition()
{	
    if (Npc_KnowsInfo (hero, GRD_200_Thorus_Buddler))
    {
        return 1;
    };
};

FUNC VOID DIA_Canthar_Info()
{
	AI_Output (other, self,"DIA_BUDDLERS_15_00"); //Potrzebuj¹ ciê w kopalni.
    AI_Output (self, other,"DIA_BUDDLERS_01_03"); //Czas po³upaæ trochê g³azów.
    Player_SentBuddler = (Player_SentBuddler + 1);
    B_LogEntry			(CH2_Buddler,"Canthar znowu bêdzie ³upa³ g³azy.");
    Npc_ExchangeRoutine (self, "wait");
    AI_StopProcessInfos	(self);

};