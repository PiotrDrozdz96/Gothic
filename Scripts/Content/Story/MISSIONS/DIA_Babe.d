instance DIA_Velaya(C_Info)
{
    npc = Ebr_108_Velaya;
    nr  = 1;
    condition = DIA_Velaya_Condition;
    information = DIA_Velaya_Info;
    permanent = 0;
    description = PODRYW;
};

func int DIA_Velaya_Condition()
{
	return 1;
};

func void DIA_Velaya_Info()
{
    B_Say   ( self, other, "$NOTNOW");
    AI_Output (other, self,"DIA_Velaya_15_00"); //Mo¿e rozbawiê ciê mieczem?
    self.aivar[AIV_DIALOGFLAGS] = FALSE;
    AI_StopProcessInfos(self);
};

instance DIA_Syra(C_Info)
{
    npc = Ebr_109_Syra;
    nr  = 1;
    condition = DIA_Syra_Condition;
    information = DIA_Syra_Info;
    permanent = 0;
    description = PODRYW;
};

func int DIA_Syra_Condition()
{
	return 1;
};

func void DIA_Syra_Info()
{
    AI_Output (other, self,"DIA_Syra_15_00"); //Witaj piêkna nieznajoma. Czy mogê tutaj dostaæ tak¿e wyj¹tkowe towary?
    B_Say   ( self, other, "$NOTNOW");
    self.aivar[AIV_DIALOGFLAGS] = FALSE;
    AI_StopProcessInfos(self);
};

instance DIA_Seraphia(C_Info)
{
    npc = Ebr_110_Seraphia;
    nr  = 1;
    condition = DIA_Seraphia_Condition;
    information = DIA_Seraphia_Info;
    permanent = 0;
    description = PODRYW;
};

func int DIA_Seraphia_Condition()
{
	return 1;
};

func void DIA_Seraphia_Info()
{
    AI_Output (other, self,"DIA_Seraphia_15_00"); //Chcê siê zabawiæ.
    B_Say   ( self, other, "$NOTNOW");
    self.aivar[AIV_DIALOGFLAGS] = FALSE;
    AI_StopProcessInfos(self);
};

instance DIA_Chani(C_Info)
{
    npc = Gur_1205_Chani;
    nr  = 1;
    condition = DIA_Chani_Condition;
    information = DIA_Chani_Info;
    permanent = 0;
    description = PODRYW;
};

func int DIA_Chani_Condition()
{
	return 1;
};

func void DIA_Chani_Info()
{
    AI_Output (other, self,"DIA_Pock_Hello_15_00"); //Czeœæ! Jestem tu nowy.
    AI_Output (other, self,"DIA_Chani_15_01"); //Wygl¹dasz jak kopacz.
    AI_Output (other, self,"DIA_Chani_15_02"); //Poka¿ mi co tam masz, na dole.
    B_Say   ( self, other, "$NOTNOW");
    AI_Output (other, self,"DIA_Chani_15_03"); //... mo¿e odezwê siê do ciebie póŸniej ...
    self.aivar[AIV_DIALOGFLAGS] = FALSE;
    AI_StopProcessInfos(self);
};

instance DIA_Natalia(C_Info)
{
    npc = Gur_1207_Natalia;
    nr  = 1;
    condition = DIA_Natalia_Condition;
    information = DIA_Natalia_Info;
    permanent = 0;
    description = PODRYW;
};

func int DIA_Natalia_Condition()
{
	return 1;
};

func void DIA_Natalia_Info()
{
    AI_Output(other,self,"Stt_311_Fisk_Trade_15_00");	//Poka¿ mi swoje towary.
    B_Say   ( self, other, "$NOTNOW");
    self.aivar[AIV_DIALOGFLAGS] = FALSE;
    AI_StopProcessInfos(self);
};