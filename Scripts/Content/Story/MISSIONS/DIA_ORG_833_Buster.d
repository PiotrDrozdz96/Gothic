
instance DIA_ORG_833_Buster(C_Info)
{
	npc = ORG_833_Buster;
	condition = DIA_ORG_833_Buster_Condition;
	information = DIA_ORG_833_Buster_Info;
	important = 1;
	permanent = 0;
};


func int DIA_ORG_833_Buster_Condition()
{
	if(Npc_GetTalentSkill(hero,NPC_TALENT_ACROBAT) == 0)
	{
		return TRUE;
	};
};

func void DIA_ORG_833_Buster_Info()
{
	AI_Output(self,other,"DIA_ORG_833_Buster_02_01");	//Wiesz co, poruszasz siê tak jakoœ sztywno. Móg³bym ci pomóc.
};


instance DIA_ORG_833_Buster_Exit(C_Info)
{
	npc = ORG_833_Buster;
	nr = 999;
	condition = DIA_ORG_833_Buster_Exit_Condition;
	information = DIA_ORG_833_Buster_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_ORG_833_Buster_Exit_Condition()
{
	return 1;
};

func void DIA_ORG_833_Buster_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_ORG_833_Buster3(C_Info)
{
	npc = ORG_833_Buster;
	condition = DIA_ORG_833_Buster3_Condition;
	information = DIA_ORG_833_Buster3_Info;
	important = 0;
	permanent = 0;
	description = "Jak mo¿esz mi pomóc?";
};


func int DIA_ORG_833_Buster3_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_ORG_833_Buster) && (Npc_GetTalentSkill(hero,NPC_TALENT_ACROBAT) == 0))
	{
		return 1;
	};
};

func void DIA_ORG_833_Buster3_Info()
{
	AI_Output(other,self, "DIA_ORG_833_Buster3_15_01"); //Jak mo¿esz mi pomóc?
	AI_Output(self,other,"DIA_ORG_833_Buster3_02_01");	//Mogê ci pokazaæ, jak nale¿y balansowaæ cia³em. Nauczê ciê AKROBATYKI.
	Log_CreateTopic(GE_TeacherNC,LOG_NOTE);
	B_LogEntry(GE_TeacherNC,"Szkodnik imieniem Buster mo¿e mnie nauczyæ akrobatyki.");

};

instance DIA_ORG_833_Buster_Run(C_Info)
{
	npc = ORG_833_Buster;
	condition = DIA_ORG_833_Buster_Run_Condition;
	information = DIA_ORG_833_Buster_Run_Info;
	important = 0;
	permanent = 1;
	description = "Bieg (10 pkt. umiejêtnoœci)";
};

func int DIA_ORG_833_Buster_Run_Condition()
{
	if Npc_KnowsInfo(hero,DIA_ORG_833_Buster3)
	&& Npc_GetTalentSkill(hero,NPC_TALENT_RUN) == 0
	{
		return 1;
	};
};

func int DIA_ORG_833_Buster_Run_Info()
{
	B_GiveSkill(other,NPC_TALENT_RUN,1,LPCOST_TALENT_RUN);
};

instance DIA_ORG_833_Buster_Acrobat(C_Info)
{
	npc = ORG_833_Buster;
	condition = DIA_ORG_833_Buster_Acrobat_Condition;
	information = DIA_ORG_833_Buster_Acrobat_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnAcrobat,LPCOST_TALENT_ACROBAT,0);
};

func int DIA_ORG_833_Buster_Acrobat_Condition()
{
	if Npc_KnowsInfo(hero,DIA_ORG_833_Buster3)
	&& Npc_GetTalentSkill(hero,NPC_TALENT_RUN) == 1
	&& Npc_GetTalentSkill(hero,NPC_TALENT_ACROBAT) == 0
	{
		return 1;
	};
};

func int DIA_ORG_833_Buster_Acrobat_Info()
{
	if(B_GiveSkill(other,NPC_TALENT_ACROBAT,1,LPCOST_TALENT_ACROBAT))
	{
		AI_Output(self,other,"DIA_ORG_833_Buster3_02_02");	//Po kilku lekcjach nauczysz siê skakaæ na wiêksze odleg³oœci.
		AI_Output(self,other,"DIA_ORG_833_Buster3_02_03");	//Poka¿ê ci w jaki sposób mo¿na z³agodziæ efekt upadku z du¿ej wysokoœci. Tylko nie myœl sobie, ¿e bêdziesz móg³ skakaæ bóg wie sk¹d!
		AI_Output(self,other,"DIA_ORG_833_Buster3_02_04");	//Akrobatyka przyda ci siê równie¿ w trakcie walki. Poka¿ê ci jak bardzo szybko zmniejszyæ lub zwiêkszyæ odleg³oœæ dziel¹c¹ ciê od przeciwnika. Powodzenia!
	};
};

