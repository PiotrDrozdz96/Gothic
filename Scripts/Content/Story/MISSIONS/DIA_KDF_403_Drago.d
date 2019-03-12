instance KDF_403_Drago_RUNE (C_INFO)
{
	npc				= KDF_403_Drago;
	condition		= KDF_403_Drago_RUNE_Condition;
	information		= KDF_403_Drago_RUNE_Info;
	important		= 1;
	permanent		= 0;
};

FUNC int  KDF_403_Drago_RUNE_Condition()
{	
	if (Npc_KnowsInfo (hero,KDF_402_Corristo_ROBE))
	{
		return TRUE;
	};
};
func void  KDF_403_Drago_RUNE_Info()
{
	AI_Output (self, other,"KDF_403_Drago_RUNE_Info_13_01"); //Przyjmij t� run� jako znak przychylno�ci Innosa. Oby ci� chroni�a podczas marszu przez tw� �cie�k� �ycia.
	CreateInvItem (self,Itmi_Runeblank);
	B_GiveInvItems (self, other, Itmi_Runeblank, 1);
	AI_StopProcessInfos	( self );
};
//------------------------------------------------------------------
//					    EXIT
//------------------------------------------------------------------
instance  KDF_403_Drago_Exit (C_INFO)
{
	npc			=  KDF_403_Drago;
	nr			=  999;
	condition	=  KDF_403_Drago_Exit_Condition;
	information	=  KDF_403_Drago_Exit_Info;
	important	=  0;	
	permanent	=  1;
	description = DIALOG_ENDE;
};                       

FUNC int  KDF_403_Drago_Exit_Condition()
{
	return TRUE;
};

FUNC VOID  KDF_403_Drago_Exit_Info()
{
	AI_StopProcessInfos	( self );
};
