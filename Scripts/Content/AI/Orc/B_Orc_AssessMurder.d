func void B_Orc_AssessMurder()
{
	if(!Npc_CanSeeNpcFreeLOS(self,other) && !Npc_CanSeeNpcFreeLOS(self,victim))
	{
		if((Npc_GetDistToNpc(self,other) > 800) && (Npc_GetDistToNpc(self,victim) > 800))
		{
			return;
		};
	};
	if((victim.guild > GIL_SEPERATOR_ORC) && Npc_IsPlayer(other))
	{
		b_orc_assessandmemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,other,self);
		B_MM_DeSynchronize(self);
		if(C_BodyStateContains(self,BS_STAND))
		{
			AI_TurnToNPC(self,other);
			if(Hlp_Random(100) % 2)
			{
				AI_PlayAni(self,"T_ANGRY");
			};
		};
		Npc_SetAttitude(self,ATT_HOSTILE);
		Npc_SetTempAttitude(self,ATT_HOSTILE);
		if(other.guild < GIL_SEPERATOR_ORC)
		{
			self.aivar[AIV_ATTACKREASON] = AIV_AR_MURDER;
			b_start_orc_attack(self,other);
		};
	}
	else if((victim.guild > GIL_SEPERATOR_ORC) || (victim.guild == GIL_ORCDOG))
	{
		B_MM_DeSynchronize(self);
		if(C_BodyStateContains(self,BS_STAND))
		{
			AI_TurnToNPC(self,other);
			if(Hlp_Random(100) % 2)
			{
				AI_PlayAni(self,"T_ANGRY");
			};
		};
		if(other.guild < GIL_SEPERATOR_ORC)
		{
			b_start_orc_attack(self,other);
		};
	}
	else if(Npc_CanSeeNpc(self,other))
	{
		if(C_BodyStateContains(self,BS_STAND) && (self.aivar[AIV_IMPORTANT] != ID_ORCSHAMAN))
		{
			if(Hlp_Random(100) % 2)
			{
				B_MM_DeSynchronize(self);
				AI_TurnToNPC(self,other);
				AI_PlayAni(self,"T_HAPPY");
				AI_Wait(self,1);
			};
		};
	};
};
