func void SMITHWEAPON_S1()
{
    var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if(Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))  
	{	
        self.aivar[AIV_INVINCIBLE]=TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_SmithWeapon;
		Ai_ProcessInfos (her);
	};
};

//*******************************************************

INSTANCE PC_SmithWeapon_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_SmithWeapon_End_Condition;
	information		= PC_SmithWeapon_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_SmithWeapon_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
	{	
		return TRUE;
	};
};

func void PC_SmithWeapon_End_Info ()
{ 
    CreateInvItems		(hero, ItMiSwordrawhot, 1);
    
    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*****************1H SWORD******************************
//*******************************************************
INSTANCE PC_WEAPON_Common (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_Common_Condition;
    information		= PC_WEAPON_Common_Info;
    nr              = 100;
	permanent		= 1;
	description		= "Rozgrzane Ostrze"; 
};

FUNC INT PC_WEAPON_Common_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_Common_Info()
{
    CreateInvItem (self, ItMiSwordbladehot);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_1H_Sword_01 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_1H_Sword_01_Condition;
    information		= PC_WEAPON_1H_Sword_01_Info;
    nr              = 90;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_1H_Sword_01); 
};

FUNC INT PC_WEAPON_1H_Sword_01_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_1H_Sword_01] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_1H_Sword_01_Info()
{
    CreateInvItem (self, ItMw_1H_Sword_04);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_1H_Sword_02 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_1H_Sword_02_Condition;
    information		= PC_WEAPON_1H_Sword_02_Info;
    nr              = 80;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_1H_Sword_02); 
};

FUNC INT PC_WEAPON_1H_Sword_02_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_1H_Sword_02] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_1H_Sword_02_Info()
{
    CreateInvItem (self, ItMw_1H_Sword_Long_04);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_1H_Sword_03 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_1H_Sword_03_Condition;
    information		= PC_WEAPON_1H_Sword_03_Info;
    nr              = 70;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_1H_Sword_03); 
};

FUNC INT PC_WEAPON_1H_Sword_03_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_1H_Sword_03] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_1H_Sword_03_Info()
{
    CreateInvItem (self, ItMw_1H_Sword_Bastard_02);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*****************2H SWORD******************************
//*******************************************************
INSTANCE PC_WEAPON_2H_Sword_01 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Sword_01_Condition;
    information		= PC_WEAPON_2H_Sword_01_Info;
    nr              = 90;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Sword_01); 
};

FUNC INT PC_WEAPON_2H_Sword_01_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Sword_01] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Sword_01_Info()
{
    CreateInvItem (self, ItMw_2H_Sword_Light_01);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_2H_Sword_02 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Sword_02_Condition;
    information		= PC_WEAPON_2H_Sword_02_Info;
    nr              = 80;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Sword_02); 
};

FUNC INT PC_WEAPON_2H_Sword_02_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Sword_02] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Sword_02_Info()
{
    CreateInvItem (self, ItMw_2H_Sword_Light_04);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_2H_Sword_03 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Sword_03_Condition;
    information		= PC_WEAPON_2H_Sword_03_Info;
    nr              = 70;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Sword_03); 
};

FUNC INT PC_WEAPON_2H_Sword_03_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Sword_03] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Sword_03_Info()
{
    CreateInvItem (self, ItMw_2H_Sword_Heavy_01);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_2H_Sword_04 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Sword_04_Condition;
    information		= PC_WEAPON_2H_Sword_04_Info;
    nr              = 60;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Sword_04); 
};

FUNC INT PC_WEAPON_2H_Sword_04_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Sword_04] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Sword_04_Info()
{
    CreateInvItem (self, ItMw_2H_Sword_Heavy_04);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//******************1H MACE******************************
//*******************************************************
INSTANCE PC_WEAPON_1H_Mace_01 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_1H_Mace_01_Condition;
    information		= PC_WEAPON_1H_Mace_01_Info;
    nr              = 90;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_1H_Mace_01); 
};

FUNC INT PC_WEAPON_1H_Mace_01_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_1H_Mace_01] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_1H_Mace_01_Info()
{
    CreateInvItem (self, ItMw_1H_Mace_War_02);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_1H_Mace_02 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_1H_Mace_02_Condition;
    information		= PC_WEAPON_1H_Mace_02_Info;
    nr              = 80;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_1H_Mace_02); 
};

FUNC INT PC_WEAPON_1H_Mace_02_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_1H_Mace_02] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_1H_Mace_02_Info()
{
    CreateInvItem (self, ItMw_1H_Mace_War_03);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_1H_Mace_03 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_1H_Mace_03_Condition;
    information		= PC_WEAPON_1H_Mace_03_Info;
    nr              = 70;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_1H_Mace_03); 
};

FUNC INT PC_WEAPON_1H_Mace_03_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_1H_Mace_03] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_1H_Mace_03_Info()
{
    CreateInvItem (self, ItMw_1H_Mace_War_04);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************2H AXE******************************
//*******************************************************
INSTANCE PC_WEAPON_2H_Axe_01 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Axe_01_Condition;
    information		= PC_WEAPON_2H_Axe_01_Info;
    nr              = 90;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Axe_01); 
};

FUNC INT PC_WEAPON_2H_Axe_01_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Axe_01] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Axe_01_Info()
{
    CreateInvItem (self, ItMw_2H_Axe_Light_01);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_2H_Axe_02 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Axe_02_Condition;
    information		= PC_WEAPON_2H_Axe_02_Info;
    nr              = 80;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Axe_02); 
};

FUNC INT PC_WEAPON_2H_Axe_02_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Axe_02] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Axe_02_Info()
{
    CreateInvItem (self, ItMw_2H_Sword_Light_03);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_2H_Axe_03 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Axe_03_Condition;
    information		= PC_WEAPON_2H_Axe_03_Info;
    nr              = 70;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Axe_03); 
};

FUNC INT PC_WEAPON_2H_Axe_03_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Axe_03] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Axe_03_Info()
{
    CreateInvItem (self, ItMw_2H_Axe_Heavy_01);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};

//*******************************************************
INSTANCE PC_WEAPON_2H_Axe_04 (C_Info)
{
    npc				= PC_Hero;
	condition		= PC_WEAPON_2H_Axe_04_Condition;
    information		= PC_WEAPON_2H_Axe_04_Info;
    nr              = 60;
	permanent		= 1;
	description		= B_BuildSmithString(WEAPON_2H_Axe_04); 
};

FUNC INT PC_WEAPON_2H_Axe_04_Condition ()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
    && (PLAYER_TALENT_SMITH[WEAPON_2H_Axe_04] == TRUE)
    {
        return 1;
    };
};

FUNC VOID PC_WEAPON_2H_Axe_04_Info()
{
    CreateInvItem (self, ItMw_2H_Axe_Heavy_02);

    AI_StopProcessInfos (self);
	self.aivar[AIV_INVINCIBLE]=FALSE;
};