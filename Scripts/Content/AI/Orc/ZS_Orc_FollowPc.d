
func void zs_orc_followpc()
{
	Npc_SetPercTime(self,0.5);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,b_orc_followpc_assesssc);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,b_orc_assessfightsound);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
	Npc_PercEnable(self,PERC_ASSESSTALK,b_orc_assesstalk);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,b_orc_assessusemob);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,b_orc_assesstheft);
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	self.aivar[AIV_PASSGATE] = 0;
	self.senses_range = 3000;
};

func int zs_orc_followpc_loop()
{
	if(self.aivar[AIV_PASSGATE] == 10000)
	{
		b_clearperceptions(self);
		if(Npc_HasReadiedWeapon(self))
		{
			self.aivar[AIV_INVINCIBLE] = TRUE;
			Npc_SetTrueGuild(self,GIL_None);
			AI_StopLookAt(self);
			AI_RemoveWeapon(self);
		};
		return LOOP_END;
	};
	if(Npc_GetTrueGuild(self) == GIL_None)
	{
		self.aivar[AIV_INVINCIBLE] = FALSE;
		Npc_SetTrueGuild(self,self.guild);
	};
	if(C_NpcIsDown(hero))
	{
		self.aivar[AIV_PASSGATE] = 10000;
		return LOOP_CONTINUE;
	};
	if(!C_OtherIsToleratedEnemy(self,hero))
	{
		if((Wld_GetGuildAttitude(self.guild,hero.guild) == ATT_HOSTILE) || (Wld_GetGuildAttitude(self.guild,hero.guild) == ATT_ANGRY))
		{
			self.senses_range = 2000;
			b_start_orc_attack(self,hero);
		}
		else
		{
			AI_PlayAni(self,"T_PERCEPTION");
			self.aivar[AIV_PASSGATE] = 10000;
			return LOOP_CONTINUE;
		};
	};
	if(Npc_GetDistToNpc(self,hero) > 400)
	{
		if(C_BodyStateContains(hero,BS_CLIMB))
		{
			if(Npc_GetDistToNpc(self,hero) < 600)
			{
				AI_Wait(self,0.5);
				return LOOP_CONTINUE;
			}
			else
			{
				b_clearperceptions(self);
				Npc_ClearAIQueue(self);
				AI_StartState(self,zs_orc_observepc,1,"");
			};
		}
		else
		{
			AI_StopLookAt(self);
			AI_GotoNpc(self,hero);
		};
	}
	else
	{
		if(self.aivar[AIV_PASSGATE] > 1000)
		{
			self.senses_range = 2000;
			b_start_orc_attack(self,hero);
		};
		if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			AI_TurnToNPC(self,hero);
			if(Npc_IsInFightMode(hero,FMODE_MELEE) || Npc_IsInFightMode(hero,FMODE_FAR))
			{
				if(self.aivar[AIV_PASSGATE] < 100)
				{
					self.aivar[AIV_PASSGATE] += 100;
					AI_DrawWeapon(self);
					B_Say(self,hero,"$ISAIDWEAPONDOWN");
				}
				else
				{
					self.aivar[AIV_PASSGATE] += 1000;
					return LOOP_CONTINUE;
				};
			}
			else if(Npc_IsInFightMode(hero,FMODE_MAGIC))
			{
				if(self.aivar[AIV_PASSGATE] < 100)
				{
					self.aivar[AIV_PASSGATE] += 100;
					AI_DrawWeapon(self);
					B_Say(self,hero,"$ISAIDSTOPMAGIC");
				}
				else
				{
					self.aivar[AIV_PASSGATE] += 1000;
					return LOOP_CONTINUE;
				};
			}
			else if(Npc_HasReadiedWeapon(self))
			{
				Npc_SetTrueGuild(self,GIL_None);
				AI_RemoveWeapon(self);
				self.aivar[AIV_INVINCIBLE] = TRUE;
				self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 3) + 3;
				Npc_SetStateTime(self,0);
				return LOOP_CONTINUE;
			};
			self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 5) + 5;
			Npc_SetStateTime(self,0);
			return LOOP_CONTINUE;
		};
		B_Orc_SmartTurn(self,hero);
	};
	AI_Wait(self,0.5);
	return LOOP_CONTINUE;
};

func void zs_orc_followpc_end()
{
	if(Npc_GetTrueGuild(self) == GIL_None)
	{
		self.aivar[AIV_INVINCIBLE] = FALSE;
		Npc_SetTrueGuild(self,self.guild);
	};
	Npc_ClearAIQueue(self);
	AI_StopLookAt(self);
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	self.aivar[AIV_PASSGATE] = 0;
	self.senses_range = 2000;
};

func void b_orc_followpc_assesssc()
{
	if(Npc_GetDistToNpc(self,hero) > 2000)
	{
		self.aivar[AIV_PASSGATE] = 10000;
		B_FullStop(self);
	};
	if(Npc_GetDistToWP(hero,"OW_ORCBRIDGE") < 2000)
	{
		self.aivar[AIV_PASSGATE] = 10000;
		B_FullStop(self);
	};
	if(C_BodyStateContains(self,BS_RUN))
	{
		if(Npc_GetDistToNpc(self,hero) < 400)
		{
			B_FullStop(self);
			AI_SetWalkMode(self,NPC_WALK);
		};
	}
	else if(C_BodyStateContains(self,BS_STAND))
	{
		AI_SetWalkMode(self,NPC_WALK);
	}
	else if(C_BodyStateContains(self,BS_WALK))
	{
		if(Npc_GetDistToNpc(self,hero) > 600)
		{
			B_FullStop(self);
			AI_SetWalkMode(self,NPC_RUN);
		};
	};
	if(Npc_GetDistToNpc(self,hero) < 1000)
	{
		B_CheckForImportantInfo(self,hero);
	};
};

