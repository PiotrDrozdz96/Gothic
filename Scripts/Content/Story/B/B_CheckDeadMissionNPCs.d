func void B_CheckDeadMissionNPCs ()
//Diese Funktion checkt im ZS_Dead, ob eine Mission durch den Tot eines NSCs obsolet geworden ist.
{
	if (Hlp_GetInstanceID(Org_844_Lefty) ==  Hlp_GetInstanceID(self))
	{
		if (Lefty_Mission == LOG_RUNNING)
		{
			B_LogEntry	(CH1_CarryWater,	"Po œmierci Lewusa problem wody chyba sam siê rozwi¹za³. Nigdy nie lubi³em tego cz³owieka.");
			Log_SetTopicStatus	(CH1_CarryWater,	LOG_SUCCESS);
			LeftyDead = TRUE;
		};
	}
	else if(Hlp_GetInstanceID(NOV_1358_Harlok) == Hlp_GetInstanceID(self))
	{
		if(Ghorim_KickHarlok == LOG_RUNNING)
		{
			Ghorim_KickHarlok = LOG_FAILED;
			B_LogEntry(CH1_GhorimsRelief,"Tak siê jakoœ z³o¿y³o ¿e Harlock zmar³. W tym stanie raczej nie bêdzie w stanie zmieniæ Ghormia przy pracy.");
			Log_SetTopicStatus(CH1_GhorimsRelief,LOG_FAILED);
		};
	}; 
};
