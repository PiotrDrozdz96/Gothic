
func void zs_orc_upset()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,b_orc_assessfightsound);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_Orc_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTALK,b_orc_assesstalk);
	Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,b_orc_assessusemob);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,b_orc_assesstheft);
	B_MM_DeSynchronize(self);
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	self.aivar[AIV_PASSGATE] = 0;
};

func int zs_orc_upset_loop()
{
	if(Npc_GetTrueGuild(self) == GIL_None)
	{
		self.aivar[AIV_INVINCIBLE] = FALSE;
		Npc_SetTrueGuild(self,self.guild);
	};
	if(C_NpcIsDown(hero))
	{
		if(Npc_HasReadiedWeapon(self))
		{
			self.aivar[AIV_INVINCIBLE] = TRUE;
			Npc_SetTrueGuild(self,GIL_None);
			AI_RemoveWeapon(self);
		};
		return LOOP_END;
	};
	if(!C_OtherIsToleratedEnemy(self,hero))
	{
		if(C_NpcIsHuman(hero))
		{
			return LOOP_END;
		};
	};
	if(Npc_GetDistToNpc(self,hero) < 1500)
	{
		if(self.aivar[AIV_PASSGATE] > 1000)
		{
			b_start_orc_attack(self,hero);
		};
		if(C_NpcIsMonster(hero))
		{
			if((Wld_GetGuildAttitude(self.guild,hero.guild) == ATT_FRIENDLY) || (Wld_GetGuildAttitude(self.guild,hero.guild) == ATT_NEUTRAL))
			{
				if(Npc_HasReadiedWeapon(self))
				{
					self.aivar[AIV_INVINCIBLE] = TRUE;
					Npc_SetTrueGuild(self,GIL_None);
					AI_RemoveWeapon(self);
				};
				return LOOP_END;
			}
			else if((Npc_GetDistToNpc(self,hero) < 800) || (self.aivar[AIV_PASSGATE] > 3))
			{
				b_start_orc_attack(self,hero);
			};
		};
		if(Npc_GetDistToNpc(self,hero) < 300)
		{
			AI_TurnToNPC(self,hero);
			AI_Dodge(self);
			self.aivar[AIV_PASSGATE] += 1;
			if(self.aivar[AIV_PASSGATE] == 3)
			{
				AI_PlayAni(self,"T_WARN");
			}
			else if(self.aivar[AIV_PASSGATE] > 3)
			{
				b_start_orc_attack(self,hero);
			};
			return LOOP_CONTINUE;
		}
		else if((Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS]) && (Npc_GetDistToNpc(self,hero) < 1200))
		{
			Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,hero);
			AI_TurnToNPC(self,hero);
			if(Npc_IsInFightMode(hero,FMODE_MELEE) || Npc_IsInFightMode(hero,FMODE_FAR))
			{
				if(self.aivar[AIV_PASSGATE] < 10)
				{
					self.aivar[AIV_PASSGATE] += 10;
					AI_PlayAni(self,"T_ANGRY");
				}
				else if(self.aivar[AIV_PASSGATE] < 100)
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
				if(self.aivar[AIV_PASSGATE] < 10)
				{
					self.aivar[AIV_PASSGATE] += 10;
					AI_PlayAni(self,"T_ANGRY");
				}
				else if(self.aivar[AIV_PASSGATE] < 100)
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
			}
			else
			{
				AI_PlayAni(self,"T_ANGRY");
			};
			AI_Wait(self,0.5);
			self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 6) + 6;
			Npc_SetStateTime(self,0);
			if(C_NpcIsMonster(hero))
			{
				self.aivar[AIV_PASSGATE] += 1;
			};
		}
		else
		{
			B_Orc_SmartTurn(self,hero);
			AI_Wait(self,0.5);
		};
	}
	else
	{
		if(Npc_HasReadiedWeapon(self))
		{
			Npc_SetTrueGuild(self,GIL_None);
			AI_RemoveWeapon(self);
			self.aivar[AIV_INVINCIBLE] = TRUE;
		};
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void zs_orc_upset_end()
{
	if(Npc_GetTrueGuild(self) == GIL_None)
	{
		self.aivar[AIV_INVINCIBLE] = FALSE;
		Npc_SetTrueGuild(self,self.guild);
	};
	Npc_ClearAIQueue(self);
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	self.aivar[AIV_PASSGATE] = 0;
};

