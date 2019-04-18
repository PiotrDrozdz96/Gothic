func void ZS_Dead ()
{	
	PrintDebugNpc	(PD_ZS_FRAME, "ZS_Dead" );		
	PrintGlobals	(PD_ZS_CHECK);

	C_ZSInit();

	self.aivar[AIV_PLUNDERED] = FALSE;
	
	//-------- Erfahrungspunkte für den Spieler ? --------
	//SN: VORSICHT, auch in B_MagicHurtNpc() vorhanden!
	B_ClearDeadTrader();
	B_ClearRuneInv(self);
	if	Npc_IsPlayer   (other)
	||	(C_NpcIsHuman  (other) && other.aivar[AIV_PARTYMEMBER])
	||	(C_NpcIsMonster(other) && other.aivar[AIV_MM_PARTYMEMBER])
	{
		B_DeathXP();	// vergibt XP an SC
		self.aivar[ AIV_WASDEFEATEDBYSC ] = TRUE;
	};
	
	if	C_NpcIsMonster(self)
	{
		B_GiveDeathInv (); 	// für Monster
	};
	B_CheckDeadMissionNPCs ();
	B_Respawn (self); 	
};
