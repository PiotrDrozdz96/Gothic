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
	description		= DIALOG_ENDE; 
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
	CreateInvItems(self, Itmi_RuneBlank, 1);
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
//*****************CIRCLE 1******************************
INSTANCE PC_SPL_LIGHT (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_LIGHT_Condition;
	information		= PC_SPL_LIGHT_Info;
	important		= 0;
	permanent		= 1;
	description		= "Œwiat³o - Kr¹g 1"; 
};

FUNC INT PC_SPL_LIGHT_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_LIGHT] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_LIGHT_Info()
{
	if (Npc_HasItems (hero, ItMi_Stuff_OldCoin_01))
	{
		Npc_RemoveInvItems  (hero,ItMi_Stuff_OldCoin_01, 1);
		CreateInvItems 	    (hero,ItArRuneLight,1);
		Print(PRINT_RuneSuccess);
	}
	else if (Npc_HasItems (hero, ItMi_Stuff_OldCoin_02))
	{
		Npc_RemoveInvItems  (hero,ItMi_Stuff_OldCoin_02, 1);
		CreateInvItems 	    (hero,ItArRuneLight,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_FIREBOLT (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_FIREBOLT_Condition;
	information		= PC_SPL_FIREBOLT_Info;
	important		= 0;
	permanent		= 1;
	description		= "Ognista Strza³a - Kr¹g 1"; 
};

FUNC INT PC_SPL_FIREBOLT_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_FIREBOLT] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_FIREBOLT_Info()
{
	if (Npc_HasItems (hero, ItMi_Alchemy_Sulphur_01))
	{
		Npc_RemoveInvItems  (hero,ItMi_Alchemy_Sulphur_01, 1);
		CreateInvItems 	    (hero,ItArRuneFirebolt,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_THUNDERBOLT (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_THUNDERBOLT_Condition;
	information		= PC_SPL_THUNDERBOLT_Info;
	important		= 0;
	permanent		= 1;
	description		= "Sopel Lodu - Kr¹g 1"; 
};

FUNC INT PC_SPL_THUNDERBOLT_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_THUNDERBOLT] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_THUNDERBOLT_Info()
{
	if (Npc_HasItems (hero, ItMi_Quartz))
	{
		Npc_RemoveInvItems  (hero,ItMi_Quartz, 1);
		CreateInvItems 	    (hero,ItArRuneThunderbolt,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_SUMMONGOBBO (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_SUMMONGOBBO_Condition;
	information		= PC_SPL_SUMMONGOBBO_Info;
	important		= 0;
	permanent		= 1;
	description		= "Przyzwanie szkieletu-goblina - Kr¹g 1"; 
};

FUNC INT PC_SPL_SUMMONGOBBO_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_SUMMONGOBBO] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_SUMMONGOBBO_Info()
{
	if (Npc_HasItems (hero, ItAt_GoblinBone))
	{
		Npc_RemoveInvItems  (hero,ItAt_GoblinBone, 1);
		CreateInvItems 	    (hero,ItArRuneSummonGobbo,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_SPL_SLEEP (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_SLEEP_Condition;
	information		= PC_SPL_SLEEP_Info;
	important		= 0;
	permanent		= 1;
	description		= "Sen - Kr¹g 1"; 
};

FUNC INT PC_SPL_SLEEP_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_SLEEP] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_SLEEP_Info()
{
	if (Npc_HasItems (hero, ItMi_Plants_Swampherb_01))
	{
		Npc_RemoveInvItems  (hero,ItMi_Plants_Swampherb_01, 1);
		CreateInvItems 	    (hero,ItArRuneSleep,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
//*****************CIRCLE 2******************************
INSTANCE PC_SPL_HEAL (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_HEAL_Condition;
	information		= PC_SPL_HEAL_Info;
	important		= 0;
	permanent		= 1;
	description		= "Uzdrowienie - Kr¹g 2"; 
};

FUNC INT PC_SPL_HEAL_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_HEAL] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_HEAL_Info()
{
	if (Npc_HasItems (hero, ItFo_Plants_Herb_01))
	{
		Npc_RemoveInvItems  (hero,ItFo_Plants_Herb_01, 1);
		CreateInvItems 	    (hero,ItArRuneHeal,1);
		Print(PRINT_RuneSuccess);
	}
	else if (Npc_HasItems (hero, ItFo_Plants_Herb_02))
	{
		Npc_RemoveInvItems  (hero,ItFo_Plants_Herb_02, 1);
		CreateInvItems 	    (hero,ItArRuneHeal,1);
		Print(PRINT_RuneSuccess);
	}
	else if (Npc_HasItems (hero, ItFo_Plants_Herb_03))
	{
		Npc_RemoveInvItems  (hero,ItFo_Plants_Herb_03, 1);
		CreateInvItems 	    (hero,ItArRuneHeal,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_FIREBALL (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_FIREBALL_Condition;
	information		= PC_SPL_FIREBALL_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kula Ognia - Kr¹g 2"; 
};

FUNC INT PC_SPL_FIREBALL_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_FIREBALL] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_FIREBALL_Info()
{
	if (Npc_HasItems (hero, ItMi_Pitch))
	{
		Npc_RemoveInvItems  (hero,ItMi_Pitch, 1);
		CreateInvItems 	    (hero,ItArRuneFireball,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_ICECUBE (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_ICECUBE_Condition;
	information		= PC_SPL_ICECUBE_Info;
	important		= 0;
	permanent		= 1;
	description		= "Bry³a Lodu - Kr¹g 2"; 
};

FUNC INT PC_SPL_ICECUBE_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_ICECUBE] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_ICECUBE_Info()
{
	if (Npc_HasItems (hero, ItMi_Quartz))
	&& (Npc_HasItems (hero, ItMi_Aquamarine))
	{
		Npc_RemoveInvItems  (hero,ItMi_Quartz, 1);
		Npc_RemoveInvItems  (hero,ItMi_Aquamarine, 1);
		CreateInvItems 	    (hero,ItArRuneIceCube,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_SUMMONWOLF (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_SUMMONWOLF_Condition;
	information		= PC_SPL_SUMMONWOLF_Info;
	important		= 0;
	permanent		= 1;
	description		= "Przyzwanie Wilka - Kr¹g 2"; 
};

FUNC INT PC_SPL_SUMMONWOLF_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_SUMMONWOLF] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_SUMMONWOLF_Info()
{
	if (Npc_HasItems (hero, ItAt_Wolf_01))
	{
		Npc_RemoveInvItems  (hero,ItAt_Wolf_01, 1);
		CreateInvItems 	    (hero,ItArRuneSummonWolf,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_WINDFIST (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_WINDFIST_Condition;
	information		= PC_SPL_WINDFIST_Info;
	important		= 0;
	permanent		= 1;
	description		= "Uderzenie Wiatru - Kr¹g 2"; 
};

FUNC INT PC_SPL_WINDFIST_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_WINDFIST] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_WINDFIST_Info()
{
	if (Npc_HasItems (hero, ItMi_Coal))
	&& (Npc_HasItems (hero, ItMiJoint_1))
	{
		Npc_RemoveInvItems  (hero,ItMi_Coal, 1);
		Npc_RemoveInvItems  (hero,ItMiJoint_1, 1);
		CreateInvItems 	    (hero,ItArRuneWindfist,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_TELEKINESIS (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_TELEKINESIS_Condition;
	information		= PC_SPL_TELEKINESIS_Info;
	important		= 0;
	permanent		= 1;
	description		= "Telekineza - Kr¹g 2"; 
};

FUNC INT PC_SPL_TELEKINESIS_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_TELEKINESIS] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_TELEKINESIS_Info()
{
	if (Npc_HasItems (hero, ItMiJoint_1))
	{
		Npc_RemoveInvItems  (hero,ItMiJoint_1, 1);
		CreateInvItems 	    (hero,ItArRuneTelekinesis,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
//*****************CIRCLE 3******************************
INSTANCE PC_SPL_FIRESTORM (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_FIRESTORM_Condition;
	information		= PC_SPL_FIRESTORM_Info;
	important		= 0;
	permanent		= 1;
	description		= "Ognista Burza - Kr¹g 3"; 
};

FUNC INT PC_SPL_FIRESTORM_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_FIRESTORM] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_FIRESTORM_Info()
{
	if (Npc_HasItems (hero, ItMi_Alchemy_Sulphur_01))
	&& (Npc_HasItems (hero, ItMi_Pitch))
	{
		Npc_RemoveInvItems  (hero,ItMi_Alchemy_Sulphur_01, 1);
		Npc_RemoveInvItems  (hero,ItMi_Pitch, 1);
		CreateInvItems 	    (hero,ItArRuneFirestorm,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_THUNDERBALL (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_THUNDERBALL_Condition;
	information		= PC_SPL_THUNDERBALL_Info;
	important		= 0;
	permanent		= 1;
	description		= "Piorun Kulisty - Kr¹g 3"; 
};

FUNC INT PC_SPL_THUNDERBALL_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_THUNDERBALL] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_THUNDERBALL_Info()
{
	if (Npc_HasItems (hero, ItMi_Alchemy_Sulphur_01))
	&& (Npc_HasItems (hero, ItMi_Rockcrystal))
	{
		Npc_RemoveInvItems  (hero,ItMi_Alchemy_Sulphur_01, 1);
		Npc_RemoveInvItems  (hero,ItMi_Rockcrystal, 1);
		CreateInvItems 	    (hero,ItArRuneThunderball,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_SUMMONSKELETON (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_SUMMONSKELETON_Condition;
	information		= PC_SPL_SUMMONSKELETON_Info;
	important		= 0;
	permanent		= 1;
	description		= "Przyzwanie szkieleta - Kr¹g 3"; 
};

FUNC INT PC_SPL_SUMMONSKELETON_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_SUMMONSKELETON] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_SUMMONSKELETON_Info()
{
	if (Npc_HasItems (hero, ItAt_SkeletonBone))
	{
		Npc_RemoveInvItems  (hero,ItAt_SkeletonBone, 1);
		CreateInvItems 	    (hero,ItArRuneSummonSkeletons,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_STORMFIST (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_STORMFIST_Condition;
	information		= PC_SPL_STORMFIST_Info;
	important		= 0;
	permanent		= 1;
	description		= "Uderzenie Burzy - Kr¹g 3"; 
};

FUNC INT PC_SPL_STORMFIST_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_STORMFIST] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_STORMFIST_Info()
{
	if (Npc_HasItems (hero, ItMi_Coal))
	&& (Npc_HasItems (hero, ItMiJoint_2))
	{
		Npc_RemoveInvItems  (hero,ItMi_Coal, 1);
		Npc_RemoveInvItems  (hero,ItMiJoint_2, 1);
		CreateInvItems 	    (hero,ItArRuneStormfist,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_FEAR (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_FEAR_Condition;
	information		= PC_SPL_FEAR_Info;
	important		= 0;
	permanent		= 1;
	description		= "Strach - Kr¹g 3"; 
};

FUNC INT PC_SPL_FEAR_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_FEAR] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_FEAR_Info()
{
	if (Npc_HasItems (hero, ItMi_DarkPearl))
	{
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl, 1);
		CreateInvItems 	    (hero,ItArRuneFear,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
//*****************CIRCLE 4******************************
INSTANCE PC_SPL_DESTROYUNDEAD (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_DESTROYUNDEAD_Condition;
	information		= PC_SPL_DESTROYUNDEAD_Info;
	important		= 0;
	permanent		= 1;
	description		= "Œmieræ o¿ywieñcom - Kr¹g 4"; 
};

FUNC INT PC_SPL_DESTROYUNDEAD_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_DESTROYUNDEAD] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_DESTROYUNDEAD_Info()
{
	if (Npc_HasItems (hero, ItMi_Alchemy_Quicksilver_01))
	{
		Npc_RemoveInvItems  (hero,ItMi_Alchemy_Quicksilver_01, 1);
		CreateInvItems 	    (hero,ItArRuneDestroyUndead,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_CHAINLIGHTNING (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_CHAINLIGHTNING_Condition;
	information		= PC_SPL_CHAINLIGHTNING_Info;
	important		= 0;
	permanent		= 1;
	description		= "Grom - Kr¹g 4"; 
};

FUNC INT PC_SPL_CHAINLIGHTNING_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_CHAINLIGHTNING] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_CHAINLIGHTNING_Info()
{
	if (Npc_HasItems (hero, ItMi_Rockcrystal))
	&& (Npc_HasItems (hero, ItMi_Quartz))
	{
		Npc_RemoveInvItems  (hero,ItMi_Rockcrystal, 1);
		Npc_RemoveInvItems  (hero,ItMi_Quartz, 1);
		CreateInvItems 	    (hero,ItArRuneChainLightning,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_SUMMONGOLEM (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_SUMMONGOLEM_Condition;
	information		= PC_SPL_SUMMONGOLEM_Info;
	important		= 0;
	permanent		= 1;
	description		= "Przyzwanie Golema - Kr¹g 4"; 
};

FUNC INT PC_SPL_SUMMONGOLEM_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_SUMMONGOLEM] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_SUMMONGOLEM_Info()
{
	if (Npc_HasItems (hero, ItAt_StoneGolem_02))
	{
		Npc_RemoveInvItems  (hero,ItAt_StoneGolem_02, 1);
		CreateInvItems 	    (hero,ItArRuneSummonGolem,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_PYROKINESIS (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_PYROKINESIS_Condition;
	information		= PC_SPL_PYROKINESIS_Info;
	important		= 0;
	permanent		= 1;
	description		= "Pirokineza - Kr¹g 4"; 
};

FUNC INT PC_SPL_PYROKINESIS_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_PYROKINESIS] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_PYROKINESIS_Info()
{
	if (Npc_HasItems (hero, ItMi_Pitch))
	&& (Npc_HasItems (hero, ItMi_Alchemy_Sulphur_01))
	&& (Npc_HasItems (hero, ItMi_DarkPearl))
	&& (Npc_HasItems (hero, ItMiJoint_3))
	{
		Npc_RemoveInvItems  (hero,ItMi_Pitch, 1);
		Npc_RemoveInvItems  (hero,ItMi_Alchemy_Sulphur_01, 1);
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl, 1);
		Npc_RemoveInvItems  (hero,ItMiJoint_3, 1);
		CreateInvItems 	    (hero,ItArRunePyrokinesis,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_CHARM (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_CHARM_Condition;
	information		= PC_SPL_CHARM_Info;
	important		= 0;
	permanent		= 1;
	description		= "Urok - Kr¹g 4"; 
};

FUNC INT PC_SPL_CHARM_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_CHARM] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_CHARM_Info()
{
	if (Npc_HasItems (hero, ItMiJoint_2))
	{
		Npc_RemoveInvItems  (hero,ItMiJoint_2, 1);
		CreateInvItems 	    (hero,ItArRuneCharm,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
//*****************CIRCLE 5******************************
INSTANCE PC_SPL_ICEWAVE (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_ICEWAVE_Condition;
	information		= PC_SPL_ICEWAVE_Info;
	important		= 0;
	permanent		= 1;
	description		= "Lodowa Fala - Kr¹g 5"; 
};

FUNC INT PC_SPL_ICEWAVE_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_ICEWAVE] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_ICEWAVE_Info()
{
	if (Npc_HasItems (hero, ItMi_Quartz))
	&& (Npc_HasItems (hero, ItMi_Aquamarine))
	{
		Npc_RemoveInvItems  (hero,ItMi_Quartz, 1);
		Npc_RemoveInvItems  (hero,ItMi_Aquamarine, 1);
		CreateInvItems 	    (hero,ItArRuneIceWave,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_SUMMONDEMON (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_SUMMONDEMON_Condition;
	information		= PC_SPL_SUMMONDEMON_Info;
	important		= 0;
	permanent		= 1;
	description		= "Przyzwanie Demona - Kr¹g 5"; 
};

FUNC INT PC_SPL_SUMMONDEMON_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_SUMMONDEMON] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_SUMMONDEMON_Info()
{
	if (Npc_HasItems (hero, ItAt_DemonHeart))
	{
		Npc_RemoveInvItems  (hero,ItAt_DemonHeart, 1);
		CreateInvItems 	    (hero,ItArRuneSummonDemon,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_CONTROL (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_CONTROL_Condition;
	information		= PC_SPL_CONTROL_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kontrola - Kr¹g 5"; 
};

FUNC INT PC_SPL_CONTROL_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_CONTROL] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_CONTROL_Info()
{
	if (Npc_HasItems (hero, ItMiJoint_3))
	{
		Npc_RemoveInvItems  (hero,ItMiJoint_3, 1);
		CreateInvItems 	    (hero,ItArRuneControl,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
//*****************CIRCLE 6******************************
INSTANCE PC_SPL_FIRERAIN (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_FIRERAIN_Condition;
	information		= PC_SPL_FIRERAIN_Info;
	important		= 0;
	permanent		= 1;
	description		= "Deszcz Ognia - Kr¹g 6"; 
};

FUNC INT PC_SPL_FIRERAIN_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_FIRERAIN] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_FIRERAIN_Info()
{
	if (Npc_HasItems (hero, ItMi_Alchemy_Sulphur_01))
	&& (Npc_HasItems (hero, ItAt_Waran_01))
	{
		Npc_RemoveInvItems  (hero,ItMi_Alchemy_Sulphur_01, 1);
		Npc_RemoveInvItems  (hero,ItAt_Waran_01, 1);
		CreateInvItems 	    (hero,ItArRuneFireRain,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_ARMYOFDARKNESS (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_ARMYOFDARKNESS_Condition;
	information		= PC_SPL_ARMYOFDARKNESS_Info;
	important		= 0;
	permanent		= 1;
	description		= "Armia Ciemnoœci - Kr¹g 6"; 
};

FUNC INT PC_SPL_ARMYOFDARKNESS_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_ARMYOFDARKNESS] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_ARMYOFDARKNESS_Info()
{
	if (Npc_HasItems (hero, ItAt_SkeletonBone))
	&& (Npc_HasItems (hero, ItMi_DarkPearl))
	&& (Npc_HasItems (hero, ItAt_StoneGolem_02))
	&& (Npc_HasItems (hero, ItAt_DemonHeart))
	{
		Npc_RemoveInvItems  (hero,ItAt_SkeletonBone, 1);
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl, 1);
		Npc_RemoveInvItems  (hero,ItAt_StoneGolem_02, 1);
		Npc_RemoveInvItems  (hero,ItAt_DemonHeart, 1);
		CreateInvItems 	    (hero,ItArRuneArmyOfDarkness,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};
//*******************************************************
INSTANCE PC_SPL_BREATHOFDEATH (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_SPL_BREATHOFDEATH_Condition;
	information		= PC_SPL_BREATHOFDEATH_Info;
	important		= 0;
	permanent		= 1;
	description		= "Tchnienie Œmierci - Kr¹g 6"; 
};

FUNC INT PC_SPL_BREATHOFDEATH_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeRune)
	&& (PLAYER_TALENT_RUNES[SPL_BREATHOFDEATH] == TRUE)
	{
		return 1;
	};	
};

FUNC VOID PC_SPL_BREATHOFDEATH_Info()
{
	if (Npc_HasItems (hero, ItMi_Coal))
	&& (Npc_HasItems (hero, ItMi_DarkPearl))
	{
		Npc_RemoveInvItems  (hero,ItMi_Coal, 1);
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl, 1);
		CreateInvItems 	    (hero,ItArRuneBreathOfDeath,1);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_RuneBlank,1);
	};
	
	AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};