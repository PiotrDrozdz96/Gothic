func void B_CheckDeadMissionNPCs ()
//Diese Funktion checkt im ZS_Dead, ob eine Mission durch den Tot eines NSCs obsolet geworden ist.
{
	if (Hlp_GetInstanceID(Org_844_Lefty) ==  Hlp_GetInstanceID(self))
	{
		if (Lefty_Mission == LOG_RUNNING)
		{
			B_LogEntry	(CH1_CarryWater,	"Po �mierci Lewusa problem wody chyba sam si� rozwi�za�. Nigdy nie lubi�em tego cz�owieka.");
			Log_SetTopicStatus	(CH1_CarryWater,	LOG_SUCCESS);
			LeftyDead = TRUE;
		};
	}
	else if(Hlp_GetInstanceID(NOV_1358_Harlok) == Hlp_GetInstanceID(self))
	{
		if(Ghorim_KickHarlok == LOG_RUNNING)
		{
			Ghorim_KickHarlok = LOG_FAILED;
			B_LogEntry(CH1_GhorimsRelief,"Tak si� jako� z�o�y�o �e Harlock zmar�. W tym stanie raczej nie b�dzie w stanie zmieni� Ghormia przy pracy.");
			Log_SetTopicStatus(CH1_GhorimsRelief,LOG_FAILED);
		};
	}; 
};
