func void PANFRY_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if(Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))  
	{	
        self.aivar[AIV_INVINCIBLE]=TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_PanFry;
		Ai_ProcessInfos (her);
	};
};

//*******************************************************

INSTANCE PC_PanFryEnd (C_INFO)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PanFryEnd_Condition;
	information		= PC_PanFryEnd_Info;
	important		= 0;
	permanent		= 1;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_PanFryEnd_Condition()
{		
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PanFry)
	{
		return 1;
	};	
};

func void PC_PanFryEnd_Info ()
{
	CreateInvItems		(hero, ItfoMuttonRaw, 1);

	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************

INSTANCE PC_PanFry1 (C_INFO)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_PanFry1_Condition;
	information		= PC_PanFry1_Info;
	important		= 0;
	permanent		= 1;
	description		= "Usma¿ 1 miêso."; 
};

FUNC INT PC_PanFry1_Condition()
{		
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PanFry)
	{
		return 1;
	};	
};

func void PC_PanFry1_Info ()
{
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
	CreateInvItems		(hero, ItfoMutton, 1);
};

*******************************************************

INSTANCE PC_PanFry5 (C_INFO)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PanFry5_Condition;
	information		= PC_PanFry5_Info;
	important		= 0;
	permanent		= 1;
	description		= "Usma¿ 5 miês."; 
};

FUNC INT PC_PanFry5_Condition()
{		
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PanFry)
	&&(Npc_HasItems(hero, ItfoMuttonRaw) >= 4)
	{
		return 1;
	};	
};

func void PC_PanFry5_Info ()
{
	Npc_RemoveInvItems	(hero, ItfoMuttonRaw, 4);
	CreateInvItems		(hero, ItfoMutton, 5);
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************

INSTANCE PC_PanFryAll (C_INFO)
{
	npc				= PC_Hero;
	nr				= 3;
	condition		= PC_PanFryAll_Condition;
	information		= PC_PanFryAll_Info;
	important		= 0;
	permanent		= 1;
	description		= "Usma¿ wszystkie miêsa."; 
};

FUNC INT PC_PanFryAll_Condition()
{		
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PanFry)
	&&(Npc_HasItems(hero, ItfoMuttonRaw) > 1)
	{
		return 1;
	};	
};

func void PC_PanFryAll_Info ()
{
	var int meat; meat = Npc_HasItems(hero, ItfoMuttonRaw);
	Npc_RemoveInvItems	(hero, ItfoMuttonRaw, meat);
	CreateInvItems		(hero, ItfoMutton, meat+1);

	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};














