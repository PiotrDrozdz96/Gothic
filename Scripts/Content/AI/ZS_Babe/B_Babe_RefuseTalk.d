func void B_Babe_RefuseTalk()
{
	PrintDebugNpc	( PD_ZS_FRAME, "B_Babe_RefuseTalk" );	
	if(self.aivar[AIV_DIALOGFLAGS]){
		B_AssessTalk();
	}
	else
	{
		B_Say   		( self, other, "$NOTNOW");
		AI_StopLookAt	( self);
	};
};


