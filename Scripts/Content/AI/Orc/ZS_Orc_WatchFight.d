
func void ZS_Orc_WatchFight()
{
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,b_orc_assessfightsound);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_Orc_AssessWarn);
	Npc_SetPercTime(self,1);
	self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 7) + 3;
};

func int ZS_Orc_WatchFight_Loop()
{
	if(!Hlp_IsValidNpc(other) || !Hlp_IsValidNpc(victim))
	{
		return LOOP_END;
	};
	if(Npc_IsDead(other) || Npc_IsDead(victim) || Npc_IsInState(other,ZS_Unconscious) || Npc_IsInState(victim,ZS_Unconscious))
	{
		return LOOP_END;
	};
	if((Npc_GetDistToNpc(self,other) > 2000) && (Npc_GetDistToNpc(self,victim) > 2000))
	{
		return LOOP_END;
	};
	if(!other.weapon && !victim.weapon)
	{
		return LOOP_END;
	};
	if(Wld_GetPlayerPortalGuild() == GIL_ORCSHAMAN)
	{
		if(Npc_IsPlayer(victim))
		{
			b_start_orc_attack(self,victim);
		}
		else if(Npc_IsPlayer(other))
		{
			b_start_orc_attack(self,other);
		};
	};
	if(Npc_GetDistToNpc(self,other) < 500)
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_TurnToNPC(self,other);
		AI_SetWalkMode(self,NPC_WALK);
		AI_Dodge(self);
		Npc_SetStateTime(self,0);
		return LOOP_CONTINUE;
	}
	else if(Npc_GetDistToNpc(self,victim) < 500)
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_TurnToNPC(self,victim);
		AI_SetWalkMode(self,NPC_WALK);
		AI_Dodge(self);
		Npc_SetStateTime(self,0);
		return LOOP_CONTINUE;
	};
	if(self.aivar[AIV_IMPORTANT] == ID_ORCSHAMAN)
	{
		B_Orc_SmartTurn(self,victim);
	}
	else if(Npc_GetDistToNpc(self,other) < Npc_GetDistToNpc(self,victim))
	{
		B_Orc_SmartTurn(self,other);
	}
	else
	{
		B_Orc_SmartTurn(self,victim);
	};
	if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
	{
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 7) + 3;
		if(self.aivar[AIV_IMPORTANT] == ID_ORCSHAMAN)
		{
			AI_TurnToNPC(self,victim);
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 6)
		{
			AI_TurnToNPC(self,victim);
			AI_PlayAni(self,"T_WATCHFIGHT1");
			AI_PlayAni(self,"T_WATCHFIGHT2");
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 7)
		{
			AI_TurnToNPC(self,other);
			AI_PlayAni(self,"T_WATCHFIGHT2");
			AI_PlayAni(self,"T_WATCHFIGHT1");
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 8)
		{
			AI_TurnToNPC(self,victim);
			AI_PlayAni(self,"T_WATCHFIGHT2");
			AI_PlayAni(self,"T_WATCHFIGHT1");
			AI_PlayAni(self,"T_WATCHFIGHT2");
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 9)
		{
			AI_TurnToNPC(self,other);
			AI_PlayAni(self,"T_WATCHFIGHT1");
			AI_PlayAni(self,"T_WATCHFIGHT2");
			AI_PlayAni(self,"T_WATCHFIGHT1");
		};
		Npc_SetStateTime(self,0);
	};
	AI_Wait(self,0.5);
	return LOOP_CONTINUE;
};

func void ZS_Orc_WatchFight_End()
{
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	AI_Wait(self,0.5);
	AI_StopLookAt(self);
};

