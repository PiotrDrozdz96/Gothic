
// var C_Npc SLAVE;

func void ZS_Orc_Attack()
{
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,b_orc_reacttocombatdamage);
	Npc_PercEnable(self,PERC_ASSESSMURDER,b_orc_combatassessmurder);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,b_orc_assesssurprise);
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,other);
	AI_Standup(self);
	Npc_GetTarget(self);
	if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other))
	{
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
	};
	B_WhirlAround(self,other);
	AI_StopLookAt(self);
	B_SelectWeapon(self, other);
	AI_SetWalkMode(self,NPC_RUN);
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	// if(self.aivar[48])
	// {
	// 	SLAVE = Hlp_GetNpc(self.aivar[48]);
	// 	if(!Npc_IsDead(slave))
	// 	{
	// 		if(slave.aivar[AIV_IMPORTANT] == ID_ORCDOG)
	// 		{
	// 			Npc_PercEnable(slave,PERC_NPCCOMMAND,b_odp_npccommand);
	// 			self.aivar[49] = NPCC_STARTATTACK;
	// 			Npc_SendSinglePerc(self,slave,PERC_NPCCOMMAND);
	// 		};
	// 	};
	// };
};

func int ZS_Orc_Attack_Loop()
{
	Npc_GetTarget(self);
	if(self.aivar[AIV_PASSGATE] == 10)
	{
		b_clearperceptions(self);
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Npc_SetTrueGuild(self,GIL_None);
		AI_StopLookAt(self);
		AI_RemoveWeapon(self);
		return LOOP_END;
	};
	if((Npc_GetDistToNpc(self,other) > (self.senses_range - 200)) && self.aivar[AIV_PASSGATE])
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		self.aivar[AIV_PASSGATE] = 10;
		return LOOP_CONTINUE;
	};
	if((Npc_GetStateTime(self) > self.aivar[5]) && (self.aivar[AIV_PASSGATE] == FALSE))
	{
		if(Npc_CanSeeNpc(other,self) || (Npc_GetDistToNpc(self,other) < 200))
		{
			Npc_SetStateTime(self,0);
			self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
			return LOOP_CONTINUE;
		};
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_PlayAni(self,"T_WARN");
		self.aivar[AIV_PASSGATE] = TRUE;
		self.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToNpc(self,other);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = Npc_GetStateTime(self);
	};
	if(self.aivar[AIV_PASSGATE] == TRUE)
	{
		if(!Npc_IsPlayer(other))
		{
			if(!other.aivar[AIV_PARTYMEMBER])
			{
				self.aivar[AIV_PASSGATE] = 10;
				return LOOP_CONTINUE;
			};
		};
		if(Npc_GetDistToNpc(self,other) > (self.senses_range - 200))
		{
			self.aivar[AIV_PASSGATE] = 10;
			return LOOP_CONTINUE;
		};
		if(Npc_GetStateTime(self) > self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			if((Npc_GetDistToNpc(self,other) < self.aivar[AIV_LASTDISTTOWP]) || (!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP)))
			{
				self.aivar[AIV_PASSGATE] = FALSE;
				AI_StopLookAt(self);
				Npc_SetStateTime(self,0);
				self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
			}
			else
			{
				AI_TurnToNPC(self,other);
				self.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToNpc(self,other);
				self.aivar[AIV_GUARDPASSAGE_STATUS] = Npc_GetStateTime(self);
			};
		};
		return LOOP_CONTINUE;
	};
	if((C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE)) && !self.aivar[AIV_OBSERVEINTRUDER] && !self.aivar[AIV_PASSGATE])
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		self.aivar[AIV_PASSGATE] = BS_SWIM;
		self.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToNpc(self,other);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = Npc_GetStateTime(self);
		AI_PlayAni(self,"T_WARN");
	};
	if(self.aivar[AIV_PASSGATE] == BS_SWIM)
	{
		if((Npc_GetDistToNpc(self,other) <= self.aivar[AIV_LASTDISTTOWP]) && !C_BodyStateContains(other,BS_SWIM) && !C_BodyStateContains(other,BS_DIVE))
		{
			self.aivar[AIV_PASSGATE] = FALSE;
			AI_StopLookAt(self);
			Npc_SetStateTime(self,0);
			self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
		}
		else
		{
			B_Orc_SmartTurn(self,other);
			if((Hlp_Random(100) % 3) == 1)
			{
				AI_TurnToNPC(self,other);
				AI_PlayAni(self,"T_ANGRY");
			};
			AI_Wait(self,1);
		};
		if(Npc_GetStateTime(self) > (self.aivar[AIV_GUARDPASSAGE_STATUS] + self.aivar[5]))
		{
			AI_PlayAni(self,"T_WARN");
			AI_Wait(self,0.5);
			self.aivar[AIV_PASSGATE] = 10;
			return LOOP_CONTINUE;
		};
		return LOOP_CONTINUE;
	};
	if(!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP) && (Npc_GetStateTime(self) > 0))
	{
		Npc_SetStateTime(self,0);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	};
	if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other))
	{
		if(other.aivar[AIV_INVINCIBLE] == FALSE)
		{
			AI_Attack(self);
		}
		else
		{
			Npc_ClearAIQueue(self);
		};
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		return LOOP_CONTINUE;
	}
	else
	{
		Npc_PerceiveAll(self);
		Npc_GetNextTarget(self);
		if(Hlp_IsValidNpc(other))
		{
			if((Npc_GetDistToNpc(self,other) > (self.senses_range - 200)) || C_NpcIsDown(other) || other.aivar[AIV_INVINCIBLE] || (C_OtherIsToleratedEnemy(self,other) && Npc_IsInFightMode(other,FMODE_NONE)))
			{
				Npc_ClearAIQueue(self);
				AI_Standup(self);
				self.aivar[AIV_PASSGATE] = 10;
				return LOOP_CONTINUE;
			};
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
			return LOOP_CONTINUE;
		}
		else
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			self.aivar[AIV_PASSGATE] = 10;
			return LOOP_CONTINUE;
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_Orc_Attack_End()
{
	Npc_SetTrueGuild(self,self.guild);
	Npc_ClearAIQueue(self);
	b_clearperceptions(self);
	AI_Standup(self);
	AI_Wait(self,0.5);
	self.aivar[AIV_ATTACKREASON] = AIV_AR_NONE;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_LASTDISTTOWP] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	self.aivar[AIV_INVINCIBLE] = 0;
	// if(self.aivar[48])
	// {
	// 	SLAVE = Hlp_GetNpc(self.aivar[48]);
	// 	if(!Npc_IsDead(slave))
	// 	{
	// 		if(slave.aivar[AIV_IMPORTANT] == ID_ORCDOG)
	// 		{
	// 			Npc_PercEnable(slave,PERC_NPCCOMMAND,b_odp_npccommand);
	// 			self.aivar[49] = NPCC_STOPATTACK;
	// 			Npc_SendSinglePerc(self,slave,PERC_NPCCOMMAND);
	// 		};
	// 	};
	// };
};

func void b_orc_reacttocombatdamage()
{
	if(!Hlp_IsValidNpc(other))
	{
		return;
	};
	self.aivar[43] = -1;
	if(Hlp_GetInstanceID(other) != self.aivar[AIV_LASTTARGET])
	{
		if(C_NpcIsOrc(other) || (other.guild == GIL_ORCDOG))
		{
			return;
		};
		if(self.aivar[38] == Hlp_GetInstanceID(other))
		{
			Npc_SetTarget(self,other);
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		}
		else
		{
			self.aivar[38] = Hlp_GetInstanceID(other);
		};
	};
};

func void b_orc_combatassessmurder()
{
	if(!Npc_CanSeeNpcFreeLOS(self,other) && !Npc_CanSeeNpcFreeLOS(self,victim))
	{
		if((Npc_GetDistToNpc(self,other) > 1500) && (Npc_GetDistToNpc(self,victim) > 1000))
		{
			return;
		};
	};
	if((victim.guild > GIL_SEPERATOR_ORC) && Npc_IsPlayer(other))
	{
		b_orc_assessandmemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,other,self);
	};
	if(self.guild == GIL_ORCSHAMAN)
	{
		return;
	};
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(other)) && (Npc_GetDistToNpc(self,other) < 300))
	{
		AI_LookAtNpc(self,victim);
		AI_StopLookAt(self);
		AI_Wait(self,0.5);
		AI_PlayAni(self,"T_WARN");
	};
};

