func void MAKERUNE_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if(Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))  
	{	
        self.aivar[AIV_INVINCIBLE]=TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_MakeRune;
		Ai_ProcessInfos (her);
	};
};

INSTANCE PC_MakeRune_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_MakeRune_End_Condition;
	information		= PC_MakeRune_End_Info;
	important		= 0;
	permanent		= 1;
	description		= "DUPA"; 
};

FUNC INT PC_MakeRune_End_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	{
		return 1;
	};	
};

FUNC VOID PC_MakeRune_End_Info()
{
	
};